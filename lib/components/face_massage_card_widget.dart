import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class FaceMassageCardWidget extends StatelessWidget {
  const FaceMassageCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      margin: const EdgeInsets.symmetric(horizontal: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColors.massageCardGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(child: Image.asset(AppConstants.textureWoman)),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(AppConstants.faceMassageWoman)),
          Positioned(
              left: 4.w,
              top: 4.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Face Care",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0),
                  ),
                  Text(
                    "See Tutorials",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0),
                  )
                ],
              )),
          Positioned(
              left: 4.w,
              bottom: 2.h,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: 140,
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
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
                      width: 24,
                      height: 24,
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
                            fontWeight: FontWeight.w600, fontSize: 15.0),
                        textAlign: TextAlign.left)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
