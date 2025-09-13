import 'package:blinkit_clone_app/headerwidget.dart';
import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class Mycategory extends StatelessWidget {
  const Mycategory({super.key});

  @override
  Widget build(BuildContext context) {
    var grocerykitchen = [
      {"img": "image 41 copy.png", "text": "Vegetables &\nFruits"},
      {"img": "image 42.png", "text": "Atta, Dal &\nRice"},
      {"img": "image 43.png", "text": "Oil, Ghee &\nMasala"},
      {"img": "image 44.png", "text": "Dairy, Bread &\nMilk"},
      {"img": "image 45 (2).png", "text": "Biscuits &\nBakery"},
    ];
    var secondgrocery = [
      {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
      {"img": "image 21.png", "text": "Kitchen &\nAppliances"},
      {"img": "image 23.png", "text": "Tea &\n Coffees"},
      {"img": "image 23.png", "text": "Ice Creams &\n much more"},
      {"img": "maggie.png", "text": "Noodles &\nPacket Food"},
    ];
    var snacksanddrinks = [
      {"img": "image 31.png", "text": "Tea &\n Coffees"},
      {"img": "image 32.png", "text": "Tea &\n Coffees"},
      {"img": "image 35.png", "text": "Tea &\n Coffees"},
      {"img": "image 34.png", "text": "Tea &\n Coffees"},
      {"img": "image 35.png", "text": "Tea &\n Coffees"},
    ];
    var household = [
      {"img": "image 36.png", "text": "Tea &\n Coffees"},
      {"img": "image 36.png", "text": "Tea &\n Coffees"},
      {"img": "image 40.png", "text": "Tea &\n Coffees"},
      {"img": "image 39.png", "text": "Tea &\n Coffees"},
      {"img": "image 40.png", "text": "Tea &\n Coffees"},
    ];
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(searchController: TextEditingController()),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Uihelper.CustomText(
                      text: "Grocery & Kitchen",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: 'bold',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: grocerykitchen.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            height: 78,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Color(0xffd9ebeb),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Uihelper.CustomImage(
                              img: grocerykitchen[index]["img"].toString(),
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
                Uihelper.horizontalCategoryList(items: secondgrocery),
                SizedBox(height: 10),
                Uihelper.horizontalCategoryList(items: snacksanddrinks),
                SizedBox(height: 20),
                Uihelper.horizontalCategoryList(items: household),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
