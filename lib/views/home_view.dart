import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../components/app_bar_widget.dart';
import '../components/face_massage_card_widget.dart';
import '../components/focus_point_widget.dart';
import '../components/home_main_card_widget.dart';
import '../components/search_bar_widget.dart';
import '../models/focus_points_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAvatarWidget(),
              const SearchBarWidget(),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 302,
                width: double.infinity,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return const HomeMainCard();
                  },
                  itemCount: 3,
                  loop: true,
                  itemWidth: double.infinity,
                  itemHeight: 302.0,
                  layout: SwiperLayout.TINDER,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  "Focus Points",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            childAspectRatio: 1.5,
                            mainAxisSpacing: 20),
                    itemCount: focusPoints.length,
                    itemBuilder: ((context, index) {
                      return FocusPointWidget(
                        heading: focusPoints[index].heading,
                        subHeading: focusPoints[index].subHeading,
                        imageUrl: focusPoints[index].imageUrl,
                      );
                    })),
              ),
              SizedBox(
                height: 3.h,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  "Face Massage & Care",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              const FaceMassageCardWidget(),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
