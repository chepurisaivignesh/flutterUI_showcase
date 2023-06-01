import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weframetech_project/constants.dart';
import 'package:weframetech_project/providers/tab_bar_provider.dart';
import 'package:weframetech_project/screens/page1.dart';
import 'package:weframetech_project/screens/page2.dart';
import 'package:weframetech_project/screens/page3.dart';
import 'package:weframetech_project/screens/page4.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _indexprovider = Provider.of<TabBarProvider>(context);
    int currentIndex = _indexprovider.fetchCurrentIndex;
    var Screens = [Page1Screen(), Page2Screen(), Page3Screen(), Page4Screen()];
    return ChangeNotifierProvider<TabBarProvider>(
      create: (BuildContext context) => TabBarProvider(),
      child: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          backgroundColor: MyColorPalatte.aquaGreen,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: MyColorPalatte.orange,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: MyColorPalatte.black, width: 2),
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: MyColorPalatte.white,
                                size: 18,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: MyColorPalatte.orange,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: MyColorPalatte.black, width: 2),
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: MyColorPalatte.white,
                                size: 18,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Stack(
                      children: [
                        ListTile(
                          tileColor: MyColorPalatte.orange,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(16)),
                          subtitle: const SizedBox(height: 16),
                        ),
                        ListTile(
                          tileColor: MyColorPalatte.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(16)),
                          leading: Icon(
                            Icons.search,
                            color: MyColorPalatte.black,
                            size: 18,
                          ),
                          title: TextField(
                            cursorWidth: 4,
                            cursorColor: MyColorPalatte.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search News...",
                                hintStyle: TextStyle(
                                    fontSize: 16, color: MyColorPalatte.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: ListTile(
                      tileColor: MyColorPalatte.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: MyColorPalatte.black),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recent Searches",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                            child: Text(
                              "See All",
                              style: TextStyle(
                                  fontSize: 16, color: MyColorPalatte.orange),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: MyColorPalatte.orange,
                              child: Icon(
                                Icons.location_on_rounded,
                                color: MyColorPalatte.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Washington Ave. Manchester",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: MyColorPalatte.black),
                                ),
                                Text(
                                  "Royal Ln. Mesa",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: MyColorPalatte.black
                                          .withOpacity(0.5)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: MyColorPalatte.black,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Consumer<TabBarProvider>(
                          builder: (context, value, child) => TabBar(
                            isScrollable: true,
                            dividerColor: Colors.transparent,
                            indicatorColor: Colors.transparent,
                            onTap: (value) =>
                                _indexprovider.updateCurrentIndex(value),
                            tabs: [
                              currentIndex == 0
                                  ? Tab(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          color: MyColorPalatte.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  MyColorPalatte.white,
                                              child: Icon(
                                                Icons.real_estate_agent,
                                                color: MyColorPalatte.orange,
                                                size: 18,
                                              ),
                                            ),
                                            Text(
                                              "Rent",
                                              style: TextStyle(
                                                  color: MyColorPalatte.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Tab(
                                      child: CircleAvatar(
                                        backgroundColor: MyColorPalatte.white,
                                        foregroundColor: MyColorPalatte.orange,
                                        child: Icon(Icons.real_estate_agent),
                                      ),
                                    ),
                              currentIndex == 1
                                  ? Tab(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          color: MyColorPalatte.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  MyColorPalatte.white,
                                              child: Icon(
                                                Icons.apartment,
                                                color: MyColorPalatte.orange,
                                                size: 18,
                                              ),
                                            ),
                                            Text(
                                              "Property",
                                              style: TextStyle(
                                                  color: MyColorPalatte.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Tab(
                                      child: CircleAvatar(
                                        backgroundColor: MyColorPalatte.white,
                                        foregroundColor: MyColorPalatte.orange,
                                        child: Icon(Icons.apartment),
                                      ),
                                    ),
                              currentIndex == 2
                                  ? Tab(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          color: MyColorPalatte.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  MyColorPalatte.white,
                                              child: Icon(
                                                Icons.shopping_bag,
                                                color: MyColorPalatte.orange,
                                                size: 18,
                                              ),
                                            ),
                                            Text(
                                              "Shooping",
                                              style: TextStyle(
                                                  color: MyColorPalatte.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Tab(
                                      child: CircleAvatar(
                                        backgroundColor: MyColorPalatte.white,
                                        foregroundColor: MyColorPalatte.orange,
                                        child: Icon(Icons.shopping_bag),
                                      ),
                                    ),
                              currentIndex == 3
                                  ? Tab(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          color: MyColorPalatte.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  MyColorPalatte.white,
                                              child: Icon(
                                                Icons.person_3,
                                                color: MyColorPalatte.orange,
                                                size: 18,
                                              ),
                                            ),
                                            Text(
                                              "Services",
                                              style: TextStyle(
                                                  color: MyColorPalatte.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Tab(
                                      child: CircleAvatar(
                                        backgroundColor: MyColorPalatte.white,
                                        foregroundColor: MyColorPalatte.orange,
                                        child: Icon(Icons.person_3),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Consumer<TabBarProvider>(
                            builder: (context, value, child) =>
                                Screens[currentIndex]),
                        SizedBox(
                          height: 32,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
