import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final listimages = [
    'assets/images/era.png',
  ];
  int cartitem = 0;
  int count1 = 0,
      count2 = 0,
      count3 = 0,
      count4 = 0,
      count5 = 0,
      count6 = 0,
      count7 = 0,
      count8 = 0,
      count9 = 0,
      count10 = 0,
      count16 = 0,
      count12 = 0,
      count13 = 0,
      count14 = 0,
      count15 = 0;
  final itemColors = [
    const Color.fromRGBO(255, 73, 18, 1),
    const Color.fromRGBO(110, 110, 110, 1)
  ];
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected5 = false;
  bool selected6 = false;
  bool selected7 = false;
  bool selected8 = false;
  bool selected9 = false;

  int firstindex = 0;

  int currentindex = 0;
  int latestindex = 0;
  bool currentstate = false;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/MicrosoftTeams-image (31).png'))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          CupertinoIcons.text_alignleft,
                          color: Colors.white,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 275,
                        ),
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Badge(
                            position: BadgePosition.topEnd(top: -12, end: -3),
                            badgeStyle:
                                const BadgeStyle(badgeColor: Colors.yellow),
                            badgeContent: const Text(
                              '2',
                              style: TextStyle(color: Colors.black),
                            ),
                            child: const Icon(
                              CupertinoIcons.bell,
                              color: Colors.white,
                              size: 26,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'Hello,',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'John Doe',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Make your own food',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Switch(
                            value: false,
                            onChanged: (value) {
                              setState(() {
                                currentstate = value;
                              });
                            }),
                        const Text(
                          'veg',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 140,
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: 4,
                        itemBuilder: (context, index, realIndex) {
                          final listimages = [index];
                          return buildimage(toString(), index);
                        },
                        options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                print(reason.toString());
                                currentindex = index;
                              });
                            },
                            autoPlay: false),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Container(
                            height: 10,
                            width: 10,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: currentindex == i
                                  ? const Color.fromRGBO(255, 73, 18, 1)
                                  : const Color.fromRGBO(110, 110, 110, 1),
                              shape: BoxShape.circle,
                            ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                selected1 = true;
                                selected2 = false;
                                selected3 = false;
                                selected4 = false;
                                selected5 = false;
                                selected6 = false;
                                selected7 = false;
                                selected8 = false;
                                selected9 = false;
                              });
                            }),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected1
                                            ? const Color.fromRGBO(
                                                255, 73, 18, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/fire.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Popular',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected1
                                        ? const Color.fromRGBO(255, 73, 18, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                setState(() {
                                  selected2 = true;
                                  selected1 = false;
                                  selected3 = false;
                                  selected4 = false;
                                  selected5 = false;
                                  selected6 = false;
                                  selected7 = false;
                                  selected8 = false;
                                  selected9 = false;
                                });
                              });
                            }),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected2
                                            ? const Color.fromRGBO(
                                                255, 73, 18, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/MicrosoftTeams-image (20).png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Western',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected2
                                        ? Color.fromRGBO(255, 73, 18, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                setState(() {
                                  selected3 = true;
                                  selected1 = false;
                                  selected2 = false;
                                  selected4 = false;
                                  selected5 = false;
                                  selected6 = false;
                                  selected7 = false;
                                  selected8 = false;
                                  selected9 = false;
                                });
                              });
                            }),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected3
                                            ? const Color.fromRGBO(
                                                255, 73, 18, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/drinks.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Drinks',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected3
                                        ? Color.fromRGBO(255, 73, 18, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected4 = true;
                                selected1 = false;
                                selected3 = false;
                                selected2 = false;
                                selected5 = false;
                                selected6 = false;
                                selected7 = false;
                                selected8 = false;
                                selected9 = false;
                              });
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected4
                                            ? Color.fromRGBO(255, 92, 51, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/chilli.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Local',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: selected4
                                          ? Color.fromRGBO(255, 92, 51, 1)
                                          : Colors.grey),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected5 = true;
                                selected1 = false;
                                selected3 = false;
                                selected2 = false;
                                selected4 = false;
                                selected6 = false;
                                selected7 = false;
                                selected8 = false;
                                selected9 = false;
                              });
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected5
                                            ? Color.fromRGBO(255, 92, 51, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/donut.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Dessert',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: selected5
                                          ? Color.fromRGBO(255, 92, 51, 1)
                                          : Colors.grey),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected6 = true;
                                selected1 = false;
                                selected3 = false;
                                selected2 = false;
                                selected4 = false;
                                selected5 = false;
                                selected7 = false;
                                selected8 = false;
                                selected9 = false;
                              });
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected6
                                            ? Color.fromRGBO(255, 92, 51, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/fire.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Popular',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected6
                                        ? Color.fromRGBO(255, 92, 51, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected7 = true;
                                selected1 = false;
                                selected3 = false;
                                selected2 = false;
                                selected4 = false;
                                selected6 = false;
                                selected5 = false;
                                selected8 = false;
                                selected9 = false;
                              });
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected7
                                            ? Color.fromRGBO(255, 92, 51, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/MicrosoftTeams-image (20).png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Western',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected7
                                        ? Color.fromRGBO(255, 92, 51, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected8 = true;
                                selected1 = false;
                                selected3 = false;
                                selected2 = false;
                                selected4 = false;
                                selected6 = false;
                                selected7 = false;
                                selected5 = false;
                                selected9 = false;
                              });
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected8
                                            ? Color.fromRGBO(255, 92, 51, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/drinks.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Drinks',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected8
                                        ? Color.fromRGBO(255, 92, 51, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected9 = true;
                                selected1 = false;
                                selected3 = false;
                                selected2 = false;
                                selected4 = false;
                                selected6 = false;
                                selected7 = false;
                                selected8 = false;
                                selected5 = false;
                              });
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4,
                                              spreadRadius: 2)
                                        ],
                                        color: selected9
                                            ? Color.fromRGBO(255, 92, 51, 1)
                                            : const Color.fromRGBO(
                                                255, 255, 255, 1),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Image.asset(
                                      'assets/images/chilli.png',
                                      scale: 3,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Local',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: selected9
                                        ? Color.fromRGBO(255, 92, 51, 1)
                                        : Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Container(
                      decoration: DottedDecoration(
                          strokeWidth: 1.5,
                          shape: Shape.line,
                          linePosition: LinePosition.bottom,
                          color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Top Recipes',
                              style: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(239, 78, 39, 1)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 18,
                        ),
                        child: Text(
                          'Popular',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(children: [
                        Container(
                          child: Column(children: [
                            SizedBox(
                              height: 250,
                              child: Stack(children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 220,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 4)
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                              ),
                                              child: Image.asset(
                                                'assets/images/bts.png',
                                                scale: 3.3,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 17,
                                            ),
                                            const Text(
                                              'Smash  Burger',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                Text(
                                                  ' 5.0',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.money_dollar,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    '10.00',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count1 > 0) {
                                                          count1 = count1 - 1;
                                                          cartitem =
                                                              cartitem - 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .minus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count1 >= 0) {
                                                          count1 = count1 + 1;
                                                          cartitem =
                                                              cartitem + 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .plus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                              ],
                                            )
                                          ])),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 50,
                                  child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color.fromRGBO(255, 0, 51, 1),
                                              Color.fromRGBO(255, 102, 51, 1)
                                            ]),
                                      ),
                                      child: const Icon(
                                        CupertinoIcons.shopping_cart,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 45,
                                  left: 80,
                                  child: SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                spreadRadius: 2)
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          count1.toString(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            SizedBox(
                              height: 250,
                              child: Stack(children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 220,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 4)
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                              ),
                                              child: Image.asset(
                                                'assets/images/bts.png',
                                                scale: 3.3,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 17,
                                            ),
                                            const Text(
                                              'Smash  Burger',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                Text(
                                                  ' 5.0',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.money_dollar,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    '10.00',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count2 > 0) {
                                                          count2 = count2 - 1;
                                                          cartitem =
                                                              cartitem - 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .minus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count2 >= 0) {
                                                          count2 = count2 + 1;
                                                          cartitem =
                                                              cartitem + 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .plus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                              ],
                                            )
                                          ])),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 50,
                                  child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color.fromRGBO(255, 0, 51, 1),
                                              Color.fromRGBO(255, 102, 51, 1)
                                            ]),
                                      ),
                                      child: const Icon(
                                        CupertinoIcons.shopping_cart,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 45,
                                  left: 80,
                                  child: SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                spreadRadius: 2)
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          count2.toString(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            SizedBox(
                              height: 250,
                              child: Stack(children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 220,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 4)
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                              ),
                                              child: Image.asset(
                                                'assets/images/bts.png',
                                                scale: 3.3,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 17,
                                            ),
                                            const Text(
                                              'Smash  Burger',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                Text(
                                                  ' 5.0',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.money_dollar,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    '10.00',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count3 > 0) {
                                                          count3 = count3 - 1;
                                                          cartitem =
                                                              cartitem - 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .minus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count3 >= 0) {
                                                          count3 = count3 + 1;
                                                          cartitem =
                                                              cartitem + 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .plus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                              ],
                                            )
                                          ])),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 50,
                                  child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color.fromRGBO(255, 0, 51, 1),
                                              Color.fromRGBO(255, 102, 51, 1)
                                            ]),
                                      ),
                                      child: const Icon(
                                        CupertinoIcons.shopping_cart,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 45,
                                  left: 80,
                                  child: SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                spreadRadius: 2)
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          count3.toString(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            SizedBox(
                              height: 250,
                              child: Stack(children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 220,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 4)
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                              ),
                                              child: Image.asset(
                                                'assets/images/bts.png',
                                                scale: 3.3,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 17,
                                            ),
                                            const Text(
                                              'Smash  Burger',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                Text(
                                                  ' 5.0',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.money_dollar,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    '10.00',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count4 > 0) {
                                                          count4 = count4 - 1;
                                                          cartitem =
                                                              cartitem - 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .minus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count4 >= 0) {
                                                          count4 = count4 + 1;
                                                          cartitem =
                                                              cartitem + 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .plus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                              ],
                                            )
                                          ])),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 50,
                                  child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color.fromRGBO(255, 0, 51, 1),
                                              Color.fromRGBO(255, 102, 51, 1)
                                            ]),
                                      ),
                                      child: const Icon(
                                        CupertinoIcons.shopping_cart,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 45,
                                  left: 80,
                                  child: SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                spreadRadius: 2)
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          count4.toString(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            SizedBox(
                              height: 250,
                              child: Stack(children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  height: 220,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 4)
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 55,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    248, 248, 248, 1),
                                              ),
                                              child: Image.asset(
                                                'assets/images/bts.png',
                                                scale: 3.3,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 17,
                                            ),
                                            const Text(
                                              'Smash  Burger',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                                Text(
                                                  ' 5.0',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    CupertinoIcons.money_dollar,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    '10.00',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count5 > 0) {
                                                          count5 = count5 - 1;
                                                          cartitem =
                                                              cartitem - 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .minus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (count5 >= 0) {
                                                          count5 = count5 + 1;
                                                          cartitem =
                                                              cartitem + 1;
                                                        }
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      CupertinoIcons
                                                          .plus_circle_fill,
                                                      color: Colors.black,
                                                      size: 18,
                                                    )),
                                              ],
                                            )
                                          ])),
                                ),
                                Positioned(
                                  bottom: 8,
                                  left: 50,
                                  child: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color.fromRGBO(255, 0, 51, 1),
                                              Color.fromRGBO(255, 102, 51, 1)
                                            ]),
                                      ),
                                      child: const Icon(
                                        CupertinoIcons.shopping_cart,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 45,
                                  left: 80,
                                  child: SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                blurRadius: 4,
                                                spreadRadius: 2)
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          count5.toString(),
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ]),
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Near By Super Market',
                              style: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(239, 78, 39, 1)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 18,
                        ),
                        child: Text(
                          'Popular',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Row(children: [
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count6 > 0) {
                                                            count6 = count6 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count6 >= 0) {
                                                            count6 = count6 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count6.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count7 > 0) {
                                                            count7 = count7 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count7 >= 0) {
                                                            count7 = count7 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count7.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count8 > 0) {
                                                            count8 = count8 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count8 >= 0) {
                                                            count8 = count8 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count8.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count9 > 0) {
                                                            count9 = count9 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count9 >= 0) {
                                                            count9 = count9 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count9.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count10 > 0) {
                                                            count10 =
                                                                count10 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count10 >= 0) {
                                                            count10 =
                                                                count10 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count10.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          )
                        ])),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Offers',
                          style: TextStyle(
                              letterSpacing: .5,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(239, 78, 39, 1)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/pnb.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '50% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/kkr.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '35% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/pasta.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '15% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/lolo.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '50% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/pnb.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '50% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/kkr.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '50% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Stack(children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    padding: const EdgeInsets.all(0.5),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/lolo.png')),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                  ),
                                  Positioned(
                                    top: 70,
                                    child: Container(
                                        height: 16,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomLeft,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '50% OFF',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              const Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Most Ordered Ingredients',
                              style: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(239, 78, 39, 1)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 18,
                        ),
                        child: Text(
                          'Popular',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Row(children: [
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count16 > 0) {
                                                            count16 =
                                                                count16 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count16 >= 0) {
                                                            count16 =
                                                                count16 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count16.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count12 > 0) {
                                                            count12 =
                                                                count12 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count12 >= 0) {
                                                            count12 =
                                                                count12 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count12.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count13 > 0) {
                                                            count13 =
                                                                count13 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count13 >= 0) {
                                                            count13 =
                                                                count13 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count13.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count14 > 0) {
                                                            count14 =
                                                                count14 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count14 >= 0) {
                                                            count14 =
                                                                count14 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count14.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 250,
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    height: 220,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 4)
                                        ],
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 55,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromRGBO(
                                                      248, 248, 248, 1),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/bts.png',
                                                  scale: 3.3,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 17,
                                              ),
                                              const Text(
                                                'Smash  Burger',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    ' 5.0',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .money_dollar,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      '10.00',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count15 > 0) {
                                                            count15 =
                                                                count15 - 1;
                                                            cartitem =
                                                                cartitem - 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .minus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (count15 >= 0) {
                                                            count15 =
                                                                count15 + 1;
                                                            cartitem =
                                                                cartitem + 1;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        CupertinoIcons
                                                            .plus_circle_fill,
                                                        color: Colors.black,
                                                        size: 18,
                                                      )),
                                                ],
                                              )
                                            ])),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 50,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: <Color>[
                                                Color.fromRGBO(255, 0, 51, 1),
                                                Color.fromRGBO(255, 102, 51, 1)
                                              ]),
                                        ),
                                        child: const Icon(
                                          CupertinoIcons.shopping_cart,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 45,
                                    left: 80,
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  blurRadius: 4,
                                                  spreadRadius: 2)
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            count15.toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ]),
                          )
                        ])),
                  )
                ])),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 4)
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: latestindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromRGBO(239, 78, 39, 1),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.calendar), label: 'calendra'),
            BottomNavigationBarItem(
                icon: Badge(
                  badgeStyle: BadgeStyle(badgeColor: Colors.black38),
                  position: BadgePosition.topEnd(top: -9, end: -8),
                  badgeContent: Text(
                    cartitem.toString(),
                    style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  child: Icon(
                    CupertinoIcons.cart_fill,
                  ),
                ),
                label: 'cart'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill), label: 'home')
          ],
          onTap: (index) {
            setState(() {
              latestindex = index;
            });
          },
        ),
      ),
    );
  }
}

Widget buildimage(String listimages, int index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: const Image(image: AssetImage('assets/images/era.png')));
