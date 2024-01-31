import 'package:flutter/material.dart';

import '../string.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(fontFamily: semibold, color: Colors.white,),
        ),
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: golden,
        leading: Container(),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenHeight*0.015, left: screenWidth*0.02),
            alignment : Alignment.centerLeft,
            child: Text(
              "BED",
              style: TextStyle(
                fontFamily: bold,
                fontSize: screenWidth*0.06,
              ),
            ),
          ),
          Container(
            width: screenWidth,
            margin: const EdgeInsets.only(top: 2),
            padding: EdgeInsets.only(left: screenWidth*0.02, bottom: screenHeight*0.01, top: screenHeight*0.01),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: goldenLight,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
              color: Colors.white70,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            bunkbed,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Bunk Beds",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            daybed,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Day Beds",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            guestbed,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Guest Beds",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            storagebed,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Storage Beds",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
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

          Container(
            margin: EdgeInsets.only(top: screenHeight*0.03, left: screenWidth*0.02),
            alignment : Alignment.centerLeft,
            child: Text(
              "SOFA",
              style: TextStyle(
                fontFamily: bold,
                fontSize: screenWidth*0.06,
              ),
            ),
          ),
          Container(
            width: screenWidth,
            margin: const EdgeInsets.only(top: 2),
            padding: EdgeInsets.only(left: screenWidth*0.02, bottom: screenHeight*0.01, top: screenHeight*0.01),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: goldenLight,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
              color: Colors.white70,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            clicclacsofa,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Clic Clac",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            cornersofa,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Corner Sofa",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            fabricsofa,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Fabric Sofa",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            sofabed,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Sofa Bed",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
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

          Container(
            margin: EdgeInsets.only(top: screenHeight*0.03, left: screenWidth*0.02),
            alignment : Alignment.centerLeft,
            child: Text(
              "MATTRESS",
              style: TextStyle(
                fontFamily: bold,
                fontSize: screenWidth*0.06,
              ),
            ),
          ),
          Container(
            width: screenWidth,
            margin: const EdgeInsets.only(top: 2),
            padding: EdgeInsets.only(left: screenWidth*0.02, bottom: screenHeight*0.01, top: screenHeight*0.01),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: goldenLight,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
              color: Colors.white70,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            airbed,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Air Bed",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            hybridmattress,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Hybrid Mattress",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 16,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            pocketspring,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Pocket Spring",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
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

          Container(
            margin: EdgeInsets.only(top: screenHeight*0.03, left: screenWidth*0.02),
            alignment : Alignment.centerLeft,
            child: Text(
              "TABLE",
              style: TextStyle(
                fontFamily: bold,
                fontSize: screenWidth*0.06,
              ),
            ),
          ),
          Container(
            width: screenWidth,
            margin: const EdgeInsets.only(top: 2),
            padding: EdgeInsets.only(left: screenWidth*0.02, bottom: screenHeight*0.01, top: screenHeight*0.01),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: goldenLight,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
              color: Colors.white70,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            diningtable,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Dining Table",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.45),
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            tabletop,
                            width: 150,
                            height: 100,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Positioned(
                          bottom: screenHeight*0.04,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.transparent,
                              child: const Text(
                                "Table Top",
                                style: TextStyle(
                                  fontFamily: bold,
                                  fontSize: 18,
                                  color: Colors.white, // Text color
                                ),
                              ),
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
        ],
      ),
    );
  }
}