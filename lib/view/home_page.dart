import 'package:book_ui/dummy/dummy_data.dart';
import 'package:book_ui/dummy/related_books.dart';
import 'package:book_ui/view/details_page.dart';
import 'package:book_ui/view/shimmer_effect.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isDataFetch = false;

  @override
  void initState() {
    super.initState();
    fetchingData();
  }

  void fetchingData() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isDataFetch = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> tabList = [
      'All',
      'Recommended',
      'Popular Books',
      'My Books',
      'Favourite',
    ];
    return Scaffold(
      body: isDataFetch == false
          ? ShimmerEffectPage()
          : Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              color: const Color(0xffF2F5F9),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),

                  //! custom appBar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hi John',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 24.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notification_add,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //! appbar is complete
                  const SizedBox(height: 15.0),
                  //! creating image banner
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bookBanner.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  // !crating scrollable custom tab_bar
                  Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabList.length,
                      itemBuilder: (context, index) {
                        final tabItem = tabList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tabItem,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  //! creating body parts of ui
                  BooksListView(context),

                  const SizedBox(height: 15.0),
                  const Text(
                    'You may also like',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  //! creating related books sections
                  RelatedListView(context),

                  const SizedBox(height: 55.0),
                ],
              ),
            ),
    );
  }

  Widget BooksListView(BuildContext context) {
    return Container(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: booksList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    bookDetailsData: booksList[index],
                  ),
                ),
              );
            },
            child: Container(
              height: 225,
              // color: Color.fromRGBO(33, 150, 243, 1),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                      height: 200,
                      width: 300,
                      padding: const EdgeInsets.all(10.0),
                      // color: Colors.green,
                      child: Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: Colors.black,
                                  height: 180,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        booksList[index].title,
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        booksList[index].discription,
                                        maxLines: 4,
                                        // textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            booksList[index].rating,
                                            maxLines: 4,
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.yellow,
                                            ),
                                          ),
                                          Container(
                                            width: 60,
                                            height: 20,
                                            child: Text(
                                              booksList[index].gernal,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            booksList[index].imgUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget RelatedListView(BuildContext context) {
    return Container(
      height: 300,
      width: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: relatedBookList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: InkWell(
                  onTap: () {
                    /*  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          bookDetailsData: relatedBookList[index],
                        ),
                      ),
                    ); */
                  },
                  child: Container(
                    width: 200,
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          relatedBookList[index].rImgUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8.0),
                    Text(
                      relatedBookList[index].rTitle,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      relatedBookList[index].rSubtitle,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
          /*  Container(
            margin: const EdgeInsets.only(
              right: 10.0,
            ),
            height: 300,
            width: 200,
            color: index % 2 == 0 ? Colors.red : Colors.green,
          ); */
        },
      ),
    );
  }
}
