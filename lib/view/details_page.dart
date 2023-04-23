import 'package:book_ui/dummy/dummy_data.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  // final Book bookDetailsData;
  // DetailPage({super.key, required this.bookDetailsData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                    booksList[0].imgUrl,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              color: Colors.blue,
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            booksList[0].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                booksList[0].rating,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                booksList[0].gernal,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    child: Container(
                      child: Text(
                        booksList[0].discription,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      ButtonWidget(
                        label: 'Read',
                        backcolor: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget button(
    BuildContext buildContext,
    String label,
    Color backcolor,
  ) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            color: backcolor,
          ),
        ),
      ),
    );
  }
}

// class ButtonWidget extends StatelessWidget {
//   final String label;
//   final Color backcolor;
//   ButtonWidget({
//     super.key,
//     required this.label,
//     required this.backcolor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.white,
//         ),
//         onPressed: () {},
//         child: const Text(
//           'Read',
//           style: TextStyle(
//             // color: Colors.red,
//             color: backcolor,
//           ),
//         ),
//       ),
//     );
//   }
// }
