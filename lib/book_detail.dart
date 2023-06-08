import 'package:bookstore/constants.dart';
import 'package:bookstore/payment.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/data.dart';

class BookDetail extends StatelessWidget {
  final Book book;

  BookDetail({required this.book});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Hero(
              tag: book.title,
              child: Image.asset(book.image, fit: BoxFit.fitWidth),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 48,
              left: 32,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.5,
              padding: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        right: 32,
                        left: 32,
                        bottom: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            book.title,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                          Text(
                            book.author.fullname,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: kStarsColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: kStarsColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: kStarsColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: kStarsColor,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      size: 20,
                                      color: kStarsColor,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  book.score,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Text(
                                book.description,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: size.width,
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 32,
                      right: 32,
                      bottom: 32,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => payment(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(size.width / 2 - 44, 55.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            backgroundColor: kPrimaryColor,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Купить",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   width: size.width / 2 - 44,
                        //   decoration: BoxDecoration(
                        //     color: kPrimaryColor,
                        //     borderRadius: const BorderRadius.all(
                        //       Radius.circular(15),
                        //     ),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: kPrimaryColor.withOpacity(0.4),
                        //         spreadRadius: 2,
                        //         blurRadius: 2,
                        //         offset: const Offset(0, 0),
                        //       ),
                        //     ],
                        //   ),
                        //   child: const Center(
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Text(
                        //           "Купить",
                        //           style: TextStyle(
                        //             fontSize: 18,
                        //             color: Colors.white,
                        //             fontWeight: FontWeight.bold,
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           width: 8,
                        //         ),
                        //         Icon(
                        //           Icons.keyboard_arrow_down,
                        //           color: Colors.white,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Container(
                          width: size.width / 2 - 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Позже",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.content_copy,
                                  color: kPrimaryColor,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 32, bottom: (size.height * 0.5) - (75 / 2)),
              child: Card(
                elevation: 4,
                margin: const EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(book.author.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
