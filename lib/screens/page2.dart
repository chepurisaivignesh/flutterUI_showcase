import 'package:flutter/material.dart';
import 'package:weframetech_project/constants.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({super.key});

  @override
  State<Page2Screen> createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Properties",
      style: TextStyle(color: MyColorPalatte.orange),
    );
  }
}
