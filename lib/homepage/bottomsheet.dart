import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instacard_pay/college/college.dart';

final radiobuttonprovider = StateProvider((ref) => 0);

class menubotoom extends ConsumerWidget {
  const menubotoom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    var eimage = [
      'assets/e1.png',
      'assets/e2.png',
      'assets/e3.png',
      'assets/e4.png',
      'assets/e5.png',
    ];
    var text = [
      'Bachelor of Technology',
      'Bachelor of Architecture',
      'Pharmacy',
      'Law',
      'Manangement',
    ];
    final selectedvalue = ref.watch(radiobuttonprovider);
    return Container(
      height: size.height * 0.45,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.1,
                right: size.width * 0.1,
                top: size.width * 0.1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sort By',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/cross1.png',
                        height: 16,
                      ),
                    )
                  ],
                ),
                Divider()
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.1,
              right: size.width * 0.07,
            ),
            child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CollegePage()));
                      ref.read(radiobuttonprovider.notifier).state = index;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(eimage[index]),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: index,
                            groupValue: selectedvalue,
                            onChanged: (value) {
                              ref.read(radiobuttonprovider.notifier).state =
                                  value!;
                            })
                      ],
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
