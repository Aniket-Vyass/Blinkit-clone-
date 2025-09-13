import 'package:blinkit_clone_app/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Uihelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
              SizedBox(height: 10),
              Uihelper.CustomImage(img: "image 10.png"),
              SizedBox(height: 10),
              Uihelper.CustomText(
                text: "India’s last minute app",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold",
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Uihelper.CustomText(
                        text: "Aniket",
                        color: Color(0XFF000000),
                        fontweight: FontWeight.w500,
                        fontsize: 14,
                      ),
                      SizedBox(height: 5),
                      Uihelper.CustomText(
                        text: "78277xxxx",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Uihelper.CustomText(
                                text: "Login with",
                                color: Color(0XFFFFFFFF),
                                fontweight: FontWeight.bold,
                                fontsize: 14,
                                fontfamily: "bold",
                              ),
                              SizedBox(width: 5),
                              Uihelper.CustomImage(img: "image 9.png"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Uihelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                      SizedBox(height: 15),
                      Uihelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
