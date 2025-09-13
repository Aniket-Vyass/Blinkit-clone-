import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {"img": "image 41 copy.png", "text": "Vegetables &\nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal &\nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee &\nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread &\nMilk"},
    {"img": "image 45 (2).png", "text": "Biscuits &\nBakery"},
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\nAppliances"},
    {"img": "image 23.png", "text": "Tea &\n Coffees"},
    {"img": "image 24.png", "text": "Ice Creams &\n much more"},
    {"img": "maggie.png", "text": "Noodles &\nPacket Food"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Tea &\n Coffees"},
    {"img": "image 32.png", "text": "Tea &\n Coffees"},
    {"img": "image 33.png", "text": "Tea &\n Coffees"},
    {"img": "image 34.png", "text": "Tea &\n Coffees"},
    {"img": "image 35.png", "text": "Tea &\n Coffees"},
  ];
  var household = [
    {"img": "image 36.png", "text": "Tea &\n Coffees"},
    {"img": "image 37.png", "text": "Tea &\n Coffees"},
    {"img": "image 38.png", "text": "Tea &\n Coffees"},
    {"img": "image 39.png", "text": "Tea &\n Coffees"},
    {"img": "image 40.png", "text": "Tea &\n Coffees"},
  ];
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomText(
                            text: "16 minutes",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomText(
                            text: "HOME - ",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                          ),
                          Uihelper.CustomText(
                            text: "Aniket Vyas, Indira Colony, Jaisalmer (Raj)",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 110,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 20),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 19,
                  child: Uihelper.CustomTextField(controller: searchController),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Color(0Xff000000),
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold",
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: grocerykitchen.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffd9ebeb),
                            ),
                            child: Uihelper.CustomImage(
                              img: grocerykitchen[index]["img"].toString(),
                            ),
                          ),
                        ),
                        Uihelper.CustomText(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: secondgrocery.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffd9ebeb),
                            ),
                            child: Uihelper.CustomImage(
                              img: secondgrocery[index]["img"].toString(),
                            ),
                          ),
                        ),
                        Uihelper.CustomText(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold",
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snacksanddrinks.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffd9ebeb),
                            ),
                            child: Uihelper.CustomImage(
                              img: snacksanddrinks[index]["img"].toString(),
                            ),
                          ),
                        ),
                        Uihelper.CustomText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Uihelper.CustomText(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 12,
                  fontfamily: "bold",
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snacksanddrinks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffd9ebeb),
                        ),
                        child: Uihelper.CustomImage(
                          img: snacksanddrinks[index]["img"].toString(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
