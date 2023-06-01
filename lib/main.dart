import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weframetech_project/providers/tab_bar_provider.dart';
import 'package:weframetech_project/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TabBarProvider())
      ],
      child: MaterialApp(
        title: 'WeFrameTech Project',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: "Poppins",
        ),
        home: HomeScreen(),
      ),
    );
  }
}
