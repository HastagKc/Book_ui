import 'package:book_ui/dummy/related_books.dart';
import 'package:flutter/material.dart';

class RelatedBookPage extends StatelessWidget {
  RelatedBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(relatedBookList[0].rImgUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  size: 35.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}
