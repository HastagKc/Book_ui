import 'package:book_ui/dummy/dummy_data.dart';
import 'package:book_ui/dummy/related_books.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book bookDetailsData;
  // final RelatedBook rbookDetailData;
  DetailPage({
    super.key,
    required this.bookDetailsData,
    // required this.rbookDetailData,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.32,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(
                        // booksList[0].imgUrl,
                        bookDetailsData.imgUrl,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              // color: Colors.blue,
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              bookDetailsData.title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bookDetailsData.rating,
                                style: const TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                bookDetailsData.gernal,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
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
                        bookDetailsData.discription,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttonFun(
                        context,
                        label: 'Read Book',
                        labelcolor: Colors.white,
                        backcolor: Colors.blue,
                      ),
                      buttonFun(
                        context,
                        label: 'More Info',
                        labelcolor: Colors.black,
                        backcolor: Colors.white,
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

  Widget buttonFun(
    BuildContext buildContext, {
    required String label,
    required Color backcolor,
    required Color labelcolor,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 160,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.grey,
              width: 1.2,
              style: BorderStyle.solid,
            ),
            color: backcolor,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 22.0,
                color: labelcolor,
              ),
            ),
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
