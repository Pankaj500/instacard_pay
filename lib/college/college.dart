import 'package:flutter/material.dart';
import 'package:instacard_pay/bottomnavbar.dart/bottomnavbar.dart';
import 'package:instacard_pay/college/collegemenu.dart';

class CollegePage extends StatelessWidget {
  const CollegePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.17,
              width: size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(14, 60, 110, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: size.height * 0.06,
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for colleges, schools....',
                                hintStyle:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                            )),
                        Container(
                          height: size.height * 0.06,
                          width: size.width * 0.14,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.keyboard_voice,
                            color: Color.fromRGBO(14, 60, 110, 1),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            CollegeMenu(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
