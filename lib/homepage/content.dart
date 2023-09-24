import 'package:flutter/material.dart';
import 'package:instacard_pay/homepage/bottomsheet.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var collegeimage = [
      'assets/college1.png',
      'assets/college2.png',
      'assets/college3.png',
    ];
    var tex1 = [
      '+196',
      '+106',
      '+16',
    ];
    var study = [
      'Colleges',
      'Schools',
      'Exams',
    ];
    var top = [
      'Top Colleges',
      'Top Schools',
      'Exam',
    ];
    var text2 = [
      'Search through thousands of\naccredited college and universities\nonline to find the right one for you\nApply in 3 min and connect with your\nfuture.',
      'Search through thousands of\naccredited college and universities\nonline to find the right one for you\nApply in 3 min and connect with your\nfuture.',
      'Find an end to end information about\nthe exams that are happening in India',
    ];

    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: ((context) => const menubotoom()));
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.02),
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.18,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(collegeimage[index]),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.05, top: size.width * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          top[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          text2[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.72, top: size.height * 0.15),
                    child: Row(
                      children: [
                        Text(
                          tex1[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          study[index],
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
