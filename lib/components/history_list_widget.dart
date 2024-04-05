import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class historyFeatureWidget extends StatelessWidget {
  historyFeatureWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 8.0),
        ),
        Text(
          subTitle,
          style: const TextStyle(
              color: Color(0xff898989),
              fontWeight: FontWeight.w400,
              fontSize: 8.0),
        ),
      ],
    );
  }
}

class verticalDivider extends StatelessWidget {
  const verticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1,
        height: 16,
        decoration: const BoxDecoration(color: Color(0x33000000)));
  }
}

class areaAnalysisWidget extends StatelessWidget {
  areaAnalysisWidget({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  String title;
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xfffff2e4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl),
          SizedBox(
            width: 2.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "0 min",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OverAllWidget extends StatelessWidget {
  OverAllWidget({super.key, required this.title, required this.number});
  String title;
  String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontSize: 12.0),
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          number,
          style: const TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w700,
              fontSize: 26.0),
        )
      ],
    );
  }
}

class horizentalSpacer extends StatelessWidget {
  const horizentalSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 8.w,
    );
  }
}
