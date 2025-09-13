import 'package:blinkit_clone_app/headerwidget.dart';
import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf0ce),
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(searchController: TextEditingController()),
            SizedBox(height: 30),
            Uihelper.CustomText(
              text: "Print Store",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 32,
            ),
            Uihelper.CustomText(
              text: "Blinkit ensures secure prints at every stage",
              color: Color(0xff9C9C9C),
              fontweight: FontWeight.bold,
              fontsize: 14,
            ),
            SizedBox(height: 40),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 361,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomText(
                            text: "Documents",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 15,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomImage(img: "star.png"),
                          SizedBox(width: 5),
                          Uihelper.CustomText(
                            text: "Price starting at rs 3/page",
                            color: Color(0xff9C9C9C),
                            fontweight: FontWeight.normal,
                            fontsize: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomImage(img: "star.png"),
                          SizedBox(width: 5),
                          Uihelper.CustomText(
                            text: "Paper quality: 70 GSM",
                            color: Color(0xff9C9C9C),
                            fontweight: FontWeight.normal,
                            fontsize: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.CustomImage(img: "star.png"),
                          SizedBox(width: 5),
                          Uihelper.CustomText(
                            text: "Single side prints",
                            color: Color(0xff9C9C9C),
                            fontweight: FontWeight.normal,
                            fontsize: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          SizedBox(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    5,
                                  ),
                                ),
                                backgroundColor: Color(0xff27af34),
                              ),
                              child: Uihelper.CustomText(
                                text: "Upload Files",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 12,
                                fontfamily: "bold",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Uihelper.CustomImage(img: "docs.png"),
                  top: 45,
                  right: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class Printscreen extends StatefulWidget {
//   const Printscreen({super.key});

//   @override
//   State<Printscreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<Printscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: Container(
//           padding: const EdgeInsets.all(12.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     "Blinkit in",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "22 minutes",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Icon(Icons.cloud, color: Colors.blue, size: 20),
//                       Text(
//                         "Rain",
//                         style: TextStyle(fontSize: 14, color: Colors.blue),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   const Icon(Icons.currency_rupee, size: 24),
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey,
//                     ),
//                     child: const Icon(
//                       Icons.person,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 color: Colors.grey[200],
//               ),
//               child: const TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.search, color: Colors.grey),
//                   hintText: 'Search "sugar"',
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: const [
//                 Text(
//                   'HOME - Aniket Vyas, b 60',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 Icon(Icons.arrow_drop_down),
//               ],
//             ),
//             const SizedBox(height: 20),
//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Grocery & Kitchen',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 12),
//             SizedBox(
//               height: 250,
//               child: GridView.count(
//                 crossAxisCount: 4,
//                 childAspectRatio: 1.2,
//                 children: [
//                   _buildCategoryItem(
//                     category: 'Vegetables & Fruits',
//                     imageUrl: 'assets/vegetables.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Atta, Rice & Dal',
//                     imageUrl: 'assets/rice.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Oil, Ghee & Masala',
//                     imageUrl: 'assets/oil.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Dairy, Bread & Eggs',
//                     imageUrl: 'assets/dairy.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Bakery & Biscuits',
//                     imageUrl: 'assets/bakery.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Dry Fruits & Cereals',
//                     imageUrl: 'assets/dry_fruits.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Chicken, Meat & Fish',
//                     imageUrl: 'assets/meat.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Kitchenware & Appliances',
//                     imageUrl: 'assets/kitchenware.png',
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Snacks & Drinks',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 12),
//             SizedBox(
//               height: 250,
//               child: GridView.count(
//                 crossAxisCount: 4,
//                 childAspectRatio: 1.2,
//                 children: [
//                   _buildCategoryItem(
//                     category: 'Chips & Namkeen',
//                     imageUrl: 'assets/chips.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Sweets & Chocolates',
//                     imageUrl: 'assets/sweets.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Drinks & Juices',
//                     imageUrl: 'assets/drinks.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Tea, Coffee & Milk Drinks',
//                     imageUrl: 'assets/tea_coffee.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Ready to Eat',
//                     imageUrl: 'assets/ready_to_eat.png',
//                   ),
//                   _buildCategoryItem(
//                     category: 'Others',
//                     imageUrl: 'assets/others.png',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Order Again',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category_rounded),
//             label: 'Categories',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.print), label: 'Print'),
//         ],
//       ),
//     );
//   }

//   Widget _buildCategoryItem({
//     required String category,
//     required String imageUrl,
//   }) {
//     return Column(
//       children: [
//         Container(
//           height: 80,
//           width: 80,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 3,
//                 blurRadius: 10,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Center(child: Image.asset(imageUrl)),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           category,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
