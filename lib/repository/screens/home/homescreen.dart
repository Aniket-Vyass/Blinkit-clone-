import 'package:blinkit_clone_app/headerwidget.dart';
import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas\n & Candles"},
    {"img": "image 51.png", "text": "Diwali\nGifts"},
    {"img": "image 52.png", "text": "Appliances\nGadgets"},
    {"img": "image 53.png", "text": "Home\nLiving"},
  ];
  var category = [
    {"img": "image 54.png", "text": "Golden Glass\nWooden Lid\nCandle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\nBy Bikano"},
    {"img": "image 63.png", "text": "Bikaji Bhujia"},
  ];
  var grocerykitchen = [
    {"img": "image 41 copy.png", "text": "Vegetables &\nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal &\nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee &\nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread &\nMilk"},
    {"img": "image 45 (2).png", "text": "Biscuits &\nBakery"},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(
            searchController: TextEditingController(),
            backgroundColor: Colors.red,
            textColor: Colors.white,
          ),
          Divider(height: 1),
          Container(
            //mega diwali sale section
            height: 196,
            width: double.infinity,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Uihelper.CustomImage(img: "image 60.png"),
                    Uihelper.CustomImage(img: "image 56.png"),
                    Uihelper.CustomText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 12,
                    ),
                    Uihelper.CustomImage(img: "image 56.png"),
                    Uihelper.CustomImage(img: "image 60.png"),
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(width: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Align(
                        child: Container(
                          width: 86,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffEAD3D3),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Uihelper.CustomText(
                                text: data[index]["text"].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 10,
                              ),
                              SizedBox(height: 1),
                              Uihelper.CustomImage(
                                img: data[index]["img"].toString(),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            height: 200, // set height according to your item
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: category.length,
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemBuilder: (context, index) {
                var item = category[index];
                return Uihelper.CustomProductItem(
                  imagePath: item["img"].toString(),
                  productName: item["text"].toString(),
                  deliveryTime: "16",
                  price: "27",
                  onImageTap: () {
                    print("Image clicked!");
                  },
                  onButtonTap: () {
                    print("Button clicked!");
                  },
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.CustomText(
                text: "Grocery & kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 2,
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
        ],
      ),
    );
  }
}
