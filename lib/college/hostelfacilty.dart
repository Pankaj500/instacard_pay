import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instacard_pay/college/carouselslider.dart';

final indexprovider = StateProvider((ref) => 0);

class HostelFacility extends ConsumerWidget {
  const HostelFacility({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    int length = 4;
    var list = [
      '  4',
      '  3',
      '  2',
      '  1',
    ];
    final currentindex = ref.watch(indexprovider);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * 0.04,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        ref.read(indexprovider.notifier).state = index;
                      },
                      child: Container(
                          height: size.height * 0.03,
                          width: size.width * 0.17,
                          decoration: BoxDecoration(
                              color: currentindex == index
                                  ? Color.fromRGBO(14, 60, 110, 1)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: currentindex == index
                                      ? Color.fromRGBO(14, 60, 110, 1)
                                      : Colors.black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/bed.png',
                                  color: currentindex == index
                                      ? Colors.white
                                      : Colors.black),
                              Text(
                                list[index],
                                style: TextStyle(
                                    color: currentindex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ],
                          )),
                    ),
                  );
                })),
          ),
          Carouselbed(),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GHJK Engineering College',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: size.height * 0.03,
                      width: size.width * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '4.3',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('assets/loc.png'),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.\nLorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Facilities',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('assets/home.png'),
                    Text(
                      '  College in 400mtr',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('assets/bath.png'),
                    Text(
                      '  Bathrooms : 2',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
