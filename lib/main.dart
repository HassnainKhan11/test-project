import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:test_project/components/bottom_navigation_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, deviceType) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Inter",
          colorScheme:
              ColorScheme.fromSwatch().copyWith(background: Colors.white),
        ),
        home: const DashboardView(),
        builder: (c, w) {
          return MediaQuery(
            data: MediaQuery.of(c).copyWith(textScaleFactor: 1.0),
            child: w!,
          );
        },
      );
    });
  }
}
