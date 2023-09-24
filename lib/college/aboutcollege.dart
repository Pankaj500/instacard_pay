import 'package:flutter/material.dart';

class AboutCollege extends StatelessWidget {
  const AboutCollege({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> list = [
      'assets/man.png',
      'assets/image1.png',
      'assets/image2.png',
      'assets/image3.png'
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit.Neque accuman ,scelerique eget lectus ullamcorper a placerat.Porta cras at pretium varius cursus.Morbi quis pharetra posuere mauris.Morbi sit risus,diam amet volutpat quis.Nisl pellentesque nec facilisis ultrices'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Location',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/map.png',
                  // height: 120,
                  // width: MediaQuery.of(context).size.width,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Student Review',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: list.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(e)),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.16,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft, child: Text('+12')),
                  )
                ],
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arun',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur adipiscing elit.Neque accuman ,scelerique eget lectus ullamcorper a placerat.Porta cras\nat pretium varius cursus.Morbi quis pharetra posuere mauris.Morbi sit risus,diam amet volutpat quis.Nisl pellentesque nec facilisis ultrices',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      StarRating(
                        rating: 4,
                        size: 20,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;

  StarRating(
      {required this.rating, this.size = 24, this.color = Colors.yellow});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating) {
          return Icon(
            Icons.star,
            size: size,
            color: color,
          );
        } else {
          return Icon(
            Icons.star_border,
            size: size,
            color: color,
          );
        }
      }),
    );
  }
}
