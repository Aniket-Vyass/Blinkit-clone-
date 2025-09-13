import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
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
            SizedBox(height: 20),
            Image.asset("assets/images/shoppingcart.png"),
            SizedBox(height: 20),
            Uihelper.CustomText(
              text: "Reordering will be easy\n Made by ANIKET VYAS",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
              fontfamily: 'bold',
            ),
            Uihelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),
            Uihelper.CustomText(
              text: "them again easily",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                  text: "BestSellers",
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 16,
                  fontfamily: 'bold',
                ),
              ],
            ),
            SizedBox(height: 20),
            // 👇 REPLACE YOUR OLD PRODUCT SECTION WITH THIS
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Uihelper.CustomProductItem(
                    imagePath: 'glass.png',
                    productName: "Amul Taaza Toned\n Fresh Milk",
                    deliveryTime: "16 mins",
                    price: "27",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'tomatoes.png', // Change this to your second product image
                    productName: "Tomatoes 1kg",
                    deliveryTime: "18 mins",
                    price: "35",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'potato.png', // Change this to your third product image
                    productName: "potatoes 1kg",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'potato.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "10 mins",
                    price: "15",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'glass.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'tomatoes.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'potato.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            //YOU CAN REMOVE THIS SECTION👇 SINCE IT WAS ONLY MADE TO TEST THE SINGLE-SCROOL-VIEW
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                  text: "Browse other Categories",
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 16,
                  fontfamily: 'bold',
                ),
              ],
            ),
            SizedBox(height: 20),
            // 👇 REPLACE YOUR OLD PRODUCT SECTION WITH THIS
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Uihelper.CustomProductItem(
                    imagePath: 'glass.png',
                    productName: "Amul Taaza Toned\n Fresh Milk",
                    deliveryTime: "16 mins",
                    price: "27",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'tomatoes.png', // Change this to your second product image
                    productName: "Tomatoes 1kg",
                    deliveryTime: "18 mins",
                    price: "35",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'potato.png', // Change this to your third product image
                    productName: "potatoes 1kg",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'potato.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "10 mins",
                    price: "15",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'glass.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'tomatoes.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  Uihelper.CustomProductItem(
                    imagePath:
                        'potato.png', // Change this to your third product image
                    productName: "Mother Dairy",
                    deliveryTime: "20 mins",
                    price: "30",
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
