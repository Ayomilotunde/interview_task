import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/constants/app_assets.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/views/notification/components/notification_item.dart';
import 'package:interview/widgets/custom_text.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomOpenSansText(
          text: "Notification",
          fontWeight: FontWeight.w600,
          textSize: 16.sp,
          textColor: AppTheme.black,
        ),
        centerTitle: true,
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xFFF6F8Fa),
                  borderRadius: BorderRadius.circular(8),
                  border: const Border(bottom: BorderSide.none)),
              child: TabBar(
                onTap: (value) {
                  index = value;
                },
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    color: Colors.white),
                labelPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                labelColor: Colors.black,
                unselectedLabelColor: AppTheme.grey[500],
                tabs: const [
                  Tab(
                      child: Text(
                    'All',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
                  Tab(
                      child: Text(
                    'Read',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
                  Tab(
                      child: Text(
                    'Unread',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
                ],
              ),
            ),
          ),
          YMargin(46.h),
          Container(
            height: 600,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomOpenSansText(
                        text: "Today",
                        fontWeight: FontWeight.w600,
                        textSize: 14.sp,
                        textColor: AppTheme.black,
                      ),
                      YMargin(16.h),
                      const NotificationItem(
                          isAccepted: true,
                          title: "Request Accepted!",
                          time: "2 hours ago",
                          subTitle: "You can now come to the library to pickup your book"),
                      const NotificationItem(
                          isAccepted: false,
                          title: "Request Declined!",
                          time: "10 hours ago",
                          subTitle: "You have reached your borrow limit"),
                      const NotificationItem(
                          isAccepted: true,
                          title: "Request Accepted!",
                          time: "12 hours ago",
                          subTitle: "You can now come to the library to pickup your book"),
                      YMargin(8.h),
                      CustomOpenSansText(
                        text: "Yesterday",
                        fontWeight: FontWeight.w600,
                        textSize: 14.sp,
                        textColor: AppTheme.black,
                      ),
                      YMargin(16.h),
                      const NotificationItem(
                          isAccepted: false,
                          title: "Request Declined!",
                          time: "1 day ago",
                          subTitle: "Due to a lot of damaged books"),
                      const NotificationItem(
                          isAccepted: true,
                          title: "Request Accepted!",
                          time: "12 hours ago",
                          subTitle: "You can now come to the library to pickup your book"),
                      YMargin(8.h),
                      CustomOpenSansText(
                        text: "Tuesday",
                        fontWeight: FontWeight.w600,
                        textSize: 14.sp,
                        textColor: AppTheme.black,
                      ),
                      YMargin(16.h),
                      const NotificationItem(
                          isAccepted: true,
                          title: "Request Accepted!",
                          time: "12/07/2024",
                          subTitle: "You can now come to the library to pickup your book"),
                      const NotificationItem(
                          isAccepted: false,
                          title: "Request Declined!",
                          time: "12/07/2024",
                          subTitle: "Due to a technical issue or system error"),
                    ],
                  ),
                ),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
