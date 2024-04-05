import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class HomeAvatarWidget extends StatelessWidget {
  const HomeAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Row(
        children: [
          Image.asset(AppConstants.avatar),
          SizedBox(
            width: 4.w,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
                text: "Good Morning, "),
            TextSpan(
                style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0),
                text: AppConstants.userName)
          ])),
        ],
      ),
    );
  }
}
