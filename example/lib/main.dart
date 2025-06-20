import 'package:flutter/material.dart';
import 'package:tiny_pagination/tiny_pagination.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiny Pagination',
      home: TinyPaginationDemo(),
    );
  }
}

class TinyPaginationDemo extends StatefulWidget {
  const TinyPaginationDemo({super.key});
  @override
  State<TinyPaginationDemo> createState() => _TinyPaginationDemoState();
}

class _TinyPaginationDemoState extends State<TinyPaginationDemo> {
  int selectedPage = 1;
  int totalPages = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Tiny Pagination'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TinyPagination(
                  currentPage: selectedPage,
                  totalPages: totalPages,
                  onPageChange: (page) {
                    selectedPage = page;
                    setState(() {});
                  },
                ),
          ],
        ),
      ),
    );
  }
}