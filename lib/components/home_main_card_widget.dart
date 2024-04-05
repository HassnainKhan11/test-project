import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:test_project/utils/constants.dart';

import '../utils/colors.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: AppColors.mainCardGradient,
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(AppConstants.cardTexture),
          ),
          Positioned(
              left: 4.w,
              top: 8.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Face Massage",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 32.0),
                      textAlign: TextAlign.left),
                  const Text("Beginner Exercises ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      MassageFeatureWidget(
                        icon: const Icon(
                          Icons.access_time_filled_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                        title: "20mins",
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      MassageFeatureWidget(
                        icon: Image.asset("assets/images/burning_icon.png"),
                        title: "20cal",
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(AppConstants.breathingMan)),
          Positioned(
              left: 4.w,
              bottom: 4.5.h,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: 181,
                height: 51,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x30030020),
                          offset: Offset(0, 24),
                          blurRadius: 17.100000381469727,
                          spreadRadius: -15)
                    ],
                    color: Color(0xffffffff)),
                child: Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color(0xff181818), width: 1)),
                      child: Center(
                        child: Image.asset(AppConstants.playIcon),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const Text("Start",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                        textAlign: TextAlign.left)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class MassageFeatureWidget extends StatelessWidget {
  MassageFeatureWidget({super.key, required this.icon, required this.title});
  Widget icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 3.h,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Color(0xffffc583)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              width: 1.w,
            ),
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.normal,
                    fontSize: 11.0),
                textAlign: TextAlign.left)
          ],
        ),
      ),
    );
  }
}
