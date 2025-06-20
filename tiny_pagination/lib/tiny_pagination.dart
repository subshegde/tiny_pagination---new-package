library tiny_pagination;

import 'package:flutter/material.dart';

class TinyPagination extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChange;
  final int visiblePages;

  const TinyPagination({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChange,
    this.visiblePages = 3,
  });

  List<Widget> _buildPageButtons() {
    List<Widget> buttons = [];

    void addPage(int page) {
      if (page < 1 || page > totalPages) return;
      buttons.add(
        GestureDetector(
          onTap: () => onPageChange(page),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: page == currentPage ? Colors.black : Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              '$page',
              style: TextStyle(
                color: page == currentPage ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 10,
              ),
            ),
          ),
        ),
      );
    }

    addPage(1);

    if (totalPages <= visiblePages + 2) {
      for (int i = 2; i <= totalPages; i++) {
        addPage(i);
      }
      return buttons;
    }

    if (currentPage > visiblePages) {
      buttons.add(const Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Text('...', style: TextStyle(color: Colors.black)),
      ));
    }

    int start =
        (currentPage - (visiblePages ~/ 2)).clamp(2, totalPages - visiblePages);
    int end = (start + visiblePages - 1).clamp(start, totalPages - 1);

    for (int i = start; i <= end; i++) {
      addPage(i);
    }

    if (end < totalPages - 1) {
      buttons.add(const Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Text('...', style: TextStyle(color: Colors.black)),
      ));
    }

    addPage(totalPages);

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    const Color enabledColor = Colors.blue;
    const Color disabledColor = Colors.grey;

    final bool isFirst = currentPage == 1;
    final bool isLast = currentPage == totalPages;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.first_page),
          color: isFirst ? disabledColor : enabledColor,
          onPressed: isFirst ? null : () => onPageChange(1),
        ),
        IconButton(
          icon: const Icon(Icons.chevron_left),
          color: isFirst ? disabledColor : enabledColor,
          onPressed: isFirst ? null : () => onPageChange(currentPage - 1),
        ),
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: _buildPageButtons(),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          color: isLast ? disabledColor : enabledColor,
          onPressed: isLast ? null : () => onPageChange(currentPage + 1),
        ),
        IconButton(
          icon: const Icon(Icons.last_page),
          color: isLast ? disabledColor : enabledColor,
          onPressed: isLast ? null : () => onPageChange(totalPages),
        ),
      ],
    );
  }
}