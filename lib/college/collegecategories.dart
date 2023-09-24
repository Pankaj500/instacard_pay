import 'package:flutter/material.dart';
import 'package:instacard_pay/college/aboutcollege.dart';
import 'package:instacard_pay/college/hostelfacilty.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(14, 60, 110, 1),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.68,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CircleAvatar(
                  child: Image.asset(
                'assets/saved.png',
                height: 20,
              )),
            ),
            SizedBox(
              width: size.width * 0.05,
            )
          ],
        ),
        body: NestedScrollView(
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, isScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: size.height * 0.33,
                floating: false,
                pinned: false,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.red,
                        height: size.height * 0.2,
                        width: size.width,
                        child: Image.asset(
                          'assets/ghjk.png', // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'GHJK Engineering College',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.\nLorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: size.height * 0.08,
                              width: size.width * 0.12,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
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
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _TabBarDelegate(
                  TabBar(
                    labelPadding: EdgeInsets.zero,
                    labelStyle: TextStyle(fontSize: 12),
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: '  About College',
                      ),
                      Tab(
                        text: '   Hostel Facility',
                      ),
                      Tab(
                        text: 'Q & A',
                      ),
                      Tab(
                        text: 'Events',
                      )
                    ],
                  ),
                ),
                floating: false,
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              // Replace with your tab content widgets
              AboutCollege(),
              HostelFacility(),
              Center(child: Text('Tab 3 Content')),
              Center(child: Text('Tab 4 Content')),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          child: Container(
            height: size.height * 0.065,
            width: size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(14, 60, 110, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
                child: Text(
              'Apply Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _TabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.grey.withOpacity(0.1), // Background color for the tab bar
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
