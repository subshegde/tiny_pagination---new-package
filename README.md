# Tiny Pagination
A lightweight, customizable, and responsive pagination widget for Flutter, designed to be highly flexible and easy to integrate into any list or data-driven UI.

**Overview**: 

`TinyPagination` is a beautiful and compact pagination widget built using Flutter. It allows users to navigate between pages of content in a clean, intuitive way with customizable styling, icon support, and flexible page visibility.

Whether you're paginating a list of items fetched from an API or simply breaking large data into manageable chunks, `TinyPagination` provides a consistent and reusable solution.


**Key Features :**

✅ Minimal & Responsive Design

🔢 Supports dynamic total pages and visible buttons

🎯 Jump to first/last/next/previous page easily

🎨 Easily customizable UI (colors, icons, sizes)

🖼️ Icon support for navigation (uses assets or can be adapted)

🔄 Smooth integration with your pagination logic (e.g., API calls)

🧩 Stateless and reusable


## About The Package

This widget is ideal for Flutter developers who want to implement manual pagination for list views, grid views, or any kind of paginated data. It is fully decoupled from data sources — you simply pass the current page, total pages, and a callback function.

- Built entirely with `StatelessWidget`
- Customizable via constructor parameters
- Optimized for performance in large lists

## Use Cases

- Pagination for APIs returning paginated data (e.g., REST APIs)
- Paginating a local list in memory
- Flutter web or desktop apps that need clean page controls
- Admin panels or dashboards
- Product or document listings
- Pagination in custom list/grid UIs

## Getting Started

To use the `tiny_pagination` package in your Flutter project, follow these steps:

### Prerequisites
Ensure you have the following installed on your system:
* [Flutter](https://flutter.dev/docs/get-started/install)
* [Dart](https://dart.dev/get-dart)

### Installation
1. Add the package dependency in your `pubspec.yaml` file:
    ```yaml
    dependencies:
      tiny_pagination:
    ```

2. Install the dependencies by running the following command:
    ```bash
    flutter pub get
    ```

3. Import the package into your Dart file:
    ```dart
    import 'package:tiny_pagination/tiny_pagination.dart';
    ```

## Usage

Here’s how to integrate the `TinyPagination` widget into your Flutter app:

```dart
TinyPagination(
                  currentPage: selectedPage,
                  totalPages: totalPages,
                  onPageChange: (page) async{
                  },
                ),,
```
## 🚀 About Me
I'm Subrahmanya S. Hegde, a mobile app developer with expertise in Flutter and Kotlin, passionate about building high-performance, cross-platform applications. With skills in Kotlin, Node.js, Firebase, and Supabase, I create end-to-end solutions that deliver seamless user experiences.

I hold an MCA degree from MIT Manipal and have a strong passion for exploring new technologies.

Let’s build something great together! 
#### Happy Coding!


## Authors

- [@subshegde](https://www.github.com/subshegde)


## Feedback

If you have any feedback, please reach out to us at subrahmanya460@gmail.com

#### My Github
[![GitHub](https://img.shields.io/badge/-GitHub-black.svg?style=for-the-badge&logo=github&colorB=000000&colorA=333333)](https://github.com/subshegde)
