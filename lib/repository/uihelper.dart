// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Uihelper {
  static CustomImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static CustomTextField({
    required TextEditingController
    controller, //controller function is used to take userinput to reach the back-end
  }) {
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0XFFC5C5C5)),
      ),
      child: TextField(
        maxLines: 1,
        controller: controller, //used to take userinput to reach the back- end
        decoration: InputDecoration(
          hintText: 'Search "ice-cream"',
          alignLabelWithHint: true,
          prefixIcon: Icon(
            Icons.search,
          ), //Image.asset("assets/images/search.png"),
          suffixIcon: Icon(Icons.mic), //Image.asset("assets/images/mic 1.png"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static CustomButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.green),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 10, color: Color(0XFF27AF34)),
        ),
      ),
    );
  }

  static Widget CustomProductItem({
    required String imagePath,
    required String productName,
    required String deliveryTime,
    required String price,
    VoidCallback? onImageTap,
    VoidCallback? onButtonTap,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: onImageTap,
                  child: Uihelper.CustomImage(img: imagePath),
                ),
                Positioned(
                  right: 1,
                  bottom: -4,
                  child: Uihelper.CustomButton(onButtonTap ?? () {}),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Uihelper.CustomText(
              text: productName,
              color: const Color(0xff000000),
              fontweight: FontWeight.normal,
              fontsize: 9,
            ),
            Row(
              children: [
                Image.asset("assets/images/clock.png", height: 10, width: 10),
                Uihelper.CustomText(
                  text: "$deliveryTime mins",
                  color: const Color(0xff000000),
                  fontweight: FontWeight.normal,
                  fontsize: 12,
                ),
              ],
            ),
            Uihelper.CustomText(
              text: "₹$price",
              color: const Color(0xff000000),
              fontweight: FontWeight.bold,
              fontsize: 15,
              fontfamily: "bold",
            ),
          ],
        ),
      ],
    );
  }

  static Widget horizontalCategoryList({
    required List<Map<String, String>> items,
    double height = 120,
    double itemWidth = 71,
    double itemHeight = 78,
    double spacing = 10,
    double horizontalPadding = 20,
  }) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        separatorBuilder: (_, __) => SizedBox(width: spacing),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: itemHeight,
                width: itemWidth,
                decoration: BoxDecoration(
                  color: Color(0xffd9ebeb),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Uihelper.CustomImage(
                  img: items[index]["img"].toString(),
                ),
              ),
              Uihelper.CustomText(
                text: items[index]["text"].toString(),
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
