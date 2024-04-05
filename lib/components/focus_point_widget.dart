import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../utils/constants.dart';

class FocusPointWidget extends StatelessWidget {
  FocusPointWidget({
    super.key,
    required this.heading,
    required this.subHeading,
    required this.imageUrl,
  });
  String heading;
  String subHeading;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.472,
      height: 100.5,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 21),
                blurRadius: 6.5,
                spreadRadius: -18)
          ],
          color: const Color(0xffFFEBD4),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(child: Image.asset(AppConstants.smallCardTexture)),
          Positioned(
              left: 2.w,
              bottom: 1.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    subHeading,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 8),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 38.857,
                        height: 12,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(2.2857141494750977)),
                            color: Color(0xffffc583)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppConstants.durationIcon),
                            SizedBox(
                              width: 1.w,
                            ),
                            const Text(
                              "20min",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 7),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        width: 38.857,
                        height: 12,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(2.2857141494750977)),
                            color: Color(0xffffc583)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppConstants.burnIcon),
                            SizedBox(
                              width: 1.w,
                            ),
                            const Text(
                              "20cal",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 7),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Positioned(bottom: 0, right: 0, child: Image.asset(imageUrl))
        ],
      ),
    );
  }
}
