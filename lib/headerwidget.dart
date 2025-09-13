// Method 2: Extract as a separate StatelessWidget (Recommended for reusability)
import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  final TextEditingController searchController;
  final String deliveryTime;
  final String locationLabel;
  final String locationAddress;
  final Color backgroundColor;
  final Color textColor;

  const HeaderWidget({
    super.key,
    required this.searchController,
    this.deliveryTime = "16 minutes",
    this.locationLabel = "HOME - ",
    this.locationAddress = "Aniket Vyas, Indira Colony, Jaisalmer (Raj)",
    this.backgroundColor = const Color(0XFFF7CB45),
    this.textColor = const Color(0xff000000),
  });

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              color: widget.backgroundColor,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Uihelper.CustomText(
                        text: "Blinkit in",
                        color: widget.textColor,
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
                        text: widget.deliveryTime,
                        color: widget.textColor,
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
                        text: widget.locationLabel,
                        color: widget.textColor,
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                      ),
                      Uihelper.CustomText(
                        text: widget.locationAddress,
                        color: widget.textColor,
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
              child: Uihelper.CustomTextField(
                controller: widget.searchController,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
