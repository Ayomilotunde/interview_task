import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/views/home/component/app_bar.dart';
import 'package:interview/views/home/component/new_arrival_item.dart';
import 'package:interview/views/home/component/recently_browsed_item.dart';
import 'package:interview/views/home/component/search.dart';
import 'package:interview/widgets/custom_text.dart';

import '../../constants/app_assets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> frequency = [
    "All",
    "Friction",
  ];

  // "Engineering","Thriller","Comedy",];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 44.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardAppBar(),
              YMargin(24.h),
              Row(
                children: [
                  const Expanded(child: CustomSearchBox()),
                  XMargin(16.w),
                  SvgPicture.asset(
                    AppAssets.sort,
                  ),
                ],
              ),
              YMargin(24.h),
              const CustomOpenSansText(
                text: "Categories",
                fontWeight: FontWeight.w600,
                textSize: 16,
                textColor: AppTheme.black,
              ),
              YMargin(16.h),
              Container(
                height: 33,
                // padding: const EdgeInsets.all(4,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: frequency.map((e) {
                    int index = frequency.indexOf(e);
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: selectedIndex == index
                              ? const Color(0xFF000000).withOpacity(.07)
                              : const Color(0xFF000000).withOpacity(.05),
                        ),
                        child: CustomOpenSansText(
                          text: e,
                          fontWeight: FontWeight.w400,
                          textSize: 14.sp,
                          textColor: AppTheme.black,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              YMargin(18.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOpenSansText(
                    text: "Recently Borrowed",
                    fontWeight: FontWeight.w600,
                    textSize: 16,
                    textColor: AppTheme.black,
                  ),
                  CustomOpenSansText(
                    text: "view all",
                    fontWeight: FontWeight.w400,
                    textSize: 12,
                    textColor: AppTheme.black,
                  ),
                ],
              ),
              YMargin(16.h),
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return const RecentlyBrowsedItem();
                    }),
              ),
              YMargin(24.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOpenSansText(
                    text: "New Arrival",
                    fontWeight: FontWeight.w600,
                    textSize: 16,
                    textColor: AppTheme.black,
                  ),
                  CustomOpenSansText(
                    text: "view all",
                    fontWeight: FontWeight.w400,
                    textSize: 12,
                    textColor: AppTheme.black,
                  ),
                ],
              ),
              YMargin(16.h),
              SizedBox(
                height: 330.h,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return const NewArrivalItem();
                    }),
              ),
              YMargin(24.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOpenSansText(
                    text: "Recommended For You",
                    fontWeight: FontWeight.w600,
                    textSize: 16,
                    textColor: AppTheme.black,
                  ),
                  CustomOpenSansText(
                    text: "view all",
                    fontWeight: FontWeight.w400,
                    textSize: 12,
                    textColor: AppTheme.black,
                  ),
                ],
              ),
              YMargin(16.h),
              SizedBox(
                height: 330.h,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return const NewArrivalItem();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
