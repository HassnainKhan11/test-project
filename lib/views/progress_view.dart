import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../components/history_list_widget.dart';
import '../components/history_listview_widget.dart';
import '../models/areas_analysis_model.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              const Text(
                "Progress Report",
                style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 24.0),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xfffff2e4)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OverAllWidget(
                        title: "Total days",
                        number: "1",
                      ),
                      Container(
                          width: 1,
                          height: 36,
                          decoration:
                              const BoxDecoration(color: Color(0x33000000))),
                      OverAllWidget(
                        title: "Workout",
                        number: "6",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xfffff2e4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Area Analysis",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Focus on specific areas that require extra attention.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      width: double.infinity,
                      color: const Color(0x33000000),
                      child: GridView.builder(
                          itemCount: areasAnalysis.length,
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 1,
                                  childAspectRatio: 2,
                                  crossAxisSpacing: 1),
                          itemBuilder: (context, index) {
                            return areaAnalysisWidget(
                              title: areasAnalysis[index].title,
                              imageUrl: areasAnalysis[index].imageUrl,
                            );
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xfffff2e4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "History of Workouts",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                    const Divider(
                      color: Color(0x33000000),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Jan 14 - Jan 20",
                          style: TextStyle(
                              color: Color(0xff898989),
                              fontWeight: FontWeight.w400,
                              fontSize: 10.0),
                        ),
                        Text(
                          "3 Workouts, 02:17",
                          style: TextStyle(
                              color: Color(0xff898989),
                              fontWeight: FontWeight.w400,
                              fontSize: 10.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const HistoryListViewWidget();
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
