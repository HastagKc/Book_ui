import 'package:book_ui/dummy/dummy_data.dart';
import 'package:book_ui/view/details_page.dart';
import 'package:book_ui/view/home_page.dart';
import 'package:book_ui/view/related_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: RelatedBookPage(),
      /*   home: DetailPage(
        bookDetailsData: booksList[0],
      ), */
    );
  }
}
