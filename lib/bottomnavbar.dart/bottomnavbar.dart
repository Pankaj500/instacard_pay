import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexprovider = StateProvider((ref) => 0);

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    var iconname = [
      'Search',
      'saved',
      'saved',
      'account',
    ];
    var iconimages = [
      'assets/homeicon.png',
      'assets/bookmarkicon.png',
      'assets/Discovery.png',
      'assets/usericon.png',
    ];

    var num = ref.watch(indexprovider);
    return Container(
      height: size.height * 0.09,
      color: Color.fromRGBO(14, 60, 110, 1),
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                ref.read(indexprovider.notifier).state = index;
              },
              child: Padding(
                padding: EdgeInsets.only(left: size.width * 0.038),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      iconimages[index],
                      color: num == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      iconname[index],
                      style: TextStyle(
                          color: num == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    num == index
                        ? Container(
                            height: 2,
                            width: size.width * 0.20,
                            color: Colors.white,
                          )
                        : SizedBox(
                            height: 2,
                            width: size.width * 0.20,
                          ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
