import 'package:flutter/material.dart';
import 'package:weframetech_project/constants.dart';

class Page4Screen extends StatefulWidget {
  const Page4Screen({super.key});

  @override
  State<Page4Screen> createState() => _Page4ScreenState();
}

class _Page4ScreenState extends State<Page4Screen> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Services",
      style: TextStyle(color: MyColorPalatte.orange),
    );
  }
}
