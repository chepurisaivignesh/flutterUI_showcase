import 'package:flutter/material.dart';
import 'package:weframetech_project/constants.dart';
import 'package:weframetech_project/screens/hotel_details_screen.dart';

class Page1Screen extends StatefulWidget {
  const Page1Screen({super.key});

  @override
  State<Page1Screen> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby Hotels",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 52,
                    width: 52,
                    child: Stack(children: [
                      Positioned(
                        top: 4,
                        left: 4,
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: MyColorPalatte.orange,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: MyColorPalatte.black,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right_alt_outlined,
                              color: MyColorPalatte.black,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: MyColorPalatte.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: MyColorPalatte.black,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right_alt_outlined,
                              color: MyColorPalatte.black,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 16, bottom: 8),
            child: AspectRatio(
              aspectRatio: 1.2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, int) => AspectRatio(
                      aspectRatio: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HotelDetailScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyColorPalatte.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: MyColorPalatte.black,
                                )),
                            child: Flex(
                              direction: Axis.vertical,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16)),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1528044085473-73c9d232288d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNpdHklMjByb2FkfGVufDB8fDB8fHww&w=1000&q=80"))),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Sunflower Suites",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: MyColorPalatte.black),
                                            ),
                                            Text(
                                              "\$21,00,000",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: MyColorPalatte.orange,
                                                  fontFamily: "Nexa-Trial"),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "203 Sunflower Street",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: MyColorPalatte.black
                                                .withOpacity(0.5),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.bathtub_rounded,
                                                    color: MyColorPalatte.black
                                                        .withOpacity(0.5)),
                                                Text(
                                                  "02",
                                                  style: TextStyle(
                                                      color: MyColorPalatte
                                                          .black
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.directions_car,
                                                    color: MyColorPalatte.black
                                                        .withOpacity(0.5)),
                                                Text(
                                                  "05",
                                                  style: TextStyle(
                                                      color: MyColorPalatte
                                                          .black
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.zoom_out_map,
                                                    color: MyColorPalatte.black
                                                        .withOpacity(0.5)),
                                                Text(
                                                  "05",
                                                  style: TextStyle(
                                                      color: MyColorPalatte
                                                          .black
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 16, bottom: 8),
            child: AspectRatio(
              aspectRatio: 1.2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, int) => AspectRatio(
                      aspectRatio: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HotelDetailScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyColorPalatte.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: MyColorPalatte.black,
                                )),
                            child: Flex(
                              direction: Axis.vertical,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16)),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1528044085473-73c9d232288d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNpdHklMjByb2FkfGVufDB8fDB8fHww&w=1000&q=80"))),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Sunflower Suites",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: MyColorPalatte.black),
                                            ),
                                            Text(
                                              "\$21,00,000",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: MyColorPalatte.orange,
                                                  fontFamily: "Nexa-Trial"),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "203 Sunflower Street",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: MyColorPalatte.black
                                                .withOpacity(0.5),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.bathtub_rounded,
                                                    color: MyColorPalatte.black
                                                        .withOpacity(0.5)),
                                                Text(
                                                  "02",
                                                  style: TextStyle(
                                                      color: MyColorPalatte
                                                          .black
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.directions_car,
                                                    color: MyColorPalatte.black
                                                        .withOpacity(0.5)),
                                                Text(
                                                  "05",
                                                  style: TextStyle(
                                                      color: MyColorPalatte
                                                          .black
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.zoom_out_map,
                                                    color: MyColorPalatte.black
                                                        .withOpacity(0.5)),
                                                Text(
                                                  "05",
                                                  style: TextStyle(
                                                      color: MyColorPalatte
                                                          .black
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
