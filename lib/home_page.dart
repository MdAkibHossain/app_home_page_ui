import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png",
  ];
  List<String> titleList = [
    "Beauty Parlour & Spa",
    "IDEA TECH Services",
    "Doctor & Medical Service",
  ];
  List<String> subtitleList = [
    "Lorem ipsum dolor sit amet, consectetur",
    "Lorem ipsum dolor sit amet, consectetur ",
    "Lorem ipsum dolor sit amet, consectetur ",
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;
    final double screenWidht = MediaQuery.of(context).size.width;
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/person.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(360),
            ),
            height: screenHight * 0.12,
            width: screenWidht * 0.12,
          ),
          title: const Text(
            "Insta Daleel",
            style: TextStyle(color: Color.fromARGB(255, 21, 151, 230)),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(234, 234, 234, 1),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10, top: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 151, 230),
                  borderRadius: BorderRadius.all(Radius.circular(360))
                  //BorderRadius.circular(360),
                  ),
              child: Icon(Icons.add),
              height: screenWidht * 0.12,
              width: screenWidht * 0.12,
            )
          ],
          elevation: 0,
          bottom: const TabBar(
              indicatorColor: Color.fromRGBO(158, 225, 236, 1),
              indicatorWeight: 6,
              padding: EdgeInsets.only(left: 8, right: 8),
              tabs: [
                Tab(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Community",
                      style: TextStyle(color: Color.fromRGBO(21, 151, 230, 1)),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Offers",
                    style: TextStyle(color: Color.fromRGBO(21, 151, 230, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    "Events",
                    style: TextStyle(color: Color.fromRGBO(21, 151, 230, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    "Guide",
                    style: TextStyle(color: Color.fromRGBO(21, 151, 230, 1)),
                  ),
                )
              ]),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: screenHight,
            width: screenWidht,
            color: Color.fromRGBO(234, 234, 234, 1),
            child: Container(
              margin: EdgeInsets.all(10),
              height: screenHight,
              width: screenWidht,
              color: Color.fromRGBO(234, 234, 234, 1),
              child: Column(
                children: [
                  ///// Slider /////
                  SizedBox(
                    height: screenWidht * 0.13,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search Here.....",
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        fillColor: Color.fromRGBO(34, 168, 243, 1),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenWidht * 0.033,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Browse The Guide’s Section",
                        style:
                            TextStyle(color: Color.fromRGBO(32, 168, 243, 1)),
                      ),
                      Text("View All"),
                    ],
                  ),
                  SizedBox(
                    height: screenWidht * 0.033,
                  ),
                  Row(
                    children: [
                      NewWidget(
                        screenWidht: screenWidht,
                        image: "assets/shopping.png",
                        text: "Shopping And \nCommercial \nFacilities",
                      ),
                      NewWidget(
                        screenWidht: screenWidht,
                        image: "assets/hospital.png",
                        text: "Hospitals \nAnd \nHealth Center",
                      ),
                      NewWidget(
                        screenWidht: screenWidht,
                        image: "assets/restaurant.png",
                        text: "Restaurants \nAnd \nCafeterias",
                      ),
                      NewWidget(
                        screenWidht: screenWidht,
                        image: "assets/information.png",
                        text: "Information \nSystem \nSoftware",
                      ),
                    ],
                  ),
                  ///// slider ////
                  SizedBox(
                    height: screenHight * 0.038,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                        screenWidht: screenWidht,
                        image: 'assets/gold.png',
                        text: 'Gold Buying \n& Selling \nPrice',
                      ),
                      CustomContainer(
                        screenWidht: screenWidht,
                        image: 'assets/dollar.png',
                        text: 'Foreign \nCurrency \nExchange',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHight * 0.035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Latest Addition",
                        style:
                            TextStyle(color: Color.fromRGBO(32, 168, 243, 1)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenWidht * 0.033,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: imageList.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            height: screenHight * 0.14,
                            width: screenWidht,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(32, 168, 243, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(27)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      titleList[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      subtitleList[index],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(Icons.star_border,
                                            color: Color.fromRGBO(
                                                255, 206, 49, 1)),
                                        Icon(Icons.star,
                                            color: Color.fromRGBO(
                                                255, 206, 49, 1)),
                                        Icon(Icons.star,
                                            color: Color.fromRGBO(
                                                255, 206, 49, 1)),
                                        Icon(Icons.star,
                                            color: Color.fromRGBO(
                                                255, 206, 49, 1)),
                                        Icon(Icons.star,
                                            color: Color.fromRGBO(
                                                255, 206, 49, 1)),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, right: 3),
                                  child: Image.asset(imageList[index]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenWidht * 0.033,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // SizedBox(
                  //   height: screenWidht * 0.033,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       "Latest Review",
                  //       style:
                  //           TextStyle(color: Color.fromRGBO(32, 168, 243, 1)),
                  //     ),
                  //   ],
                  // ),

                  /// Slider ///
                  // SizedBox(
                  //   height: screenWidht * 0.033,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       "Latest Community",
                  //       style:
                  //           TextStyle(color: Color.fromRGBO(32, 168, 243, 1)),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Color.fromRGBO(32, 168, 243, 1),
          unselectedItemColor: Colors.grey,
          iconSize: 25,

          // selectedLabelStyle:
          //     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.screenWidht,
    required this.image,
    required this.text,
  }) : super(key: key);

  final double screenWidht;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidht * 0.18,
      width: screenWidht * 0.45,
      decoration: BoxDecoration(
        color: Color.fromRGBO(32, 168, 243, 1),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.screenWidht,
    required this.image,
    required this.text,
  }) : super(key: key);

  final double screenWidht;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: screenWidht * 0.19,
          width: screenWidht * 0.19,
          decoration: BoxDecoration(
            color: Color.fromRGBO(32, 168, 243, 1),
            borderRadius: BorderRadius.all(Radius.circular(50)),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        SizedBox(
          height: screenWidht * 0.025,
        ),
        FittedBox(
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
