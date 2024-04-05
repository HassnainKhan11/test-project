import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../utils/constants.dart';
import 'history_list_widget.dart';

class HistoryListViewWidget extends StatelessWidget {
  const HistoryListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppConstants.forheadMassage),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Forehead Upward Massage ",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  historyFeatureWidget(
                    title: "2:00 PM",
                    subTitle: "Jan 18",
                  ),
                  const horizentalSpacer(),
                  const verticalDivider(),
                  const horizentalSpacer(),
                  historyFeatureWidget(
                    title: "00:00",
                    subTitle: "Duration",
                  ),
                  const horizentalSpacer(),
                  const verticalDivider(),
                  const horizentalSpacer(),
                  historyFeatureWidget(
                    title: "00:00",
                    subTitle: "Exercises",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
