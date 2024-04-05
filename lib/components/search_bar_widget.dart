import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xffF6F6F6)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Row(
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: Color(0xffACACAC),
                        size: 20,
                      ),
                      prefixIconConstraints: BoxConstraints.tightFor(),
                      hintText: "Search",
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      hintStyle: TextStyle(color: Color(0xffACACAC)),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
