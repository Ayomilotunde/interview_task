import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview/app/data/models/books.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/constants/app_assets.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/views/books/components/book_item.dart';
import 'package:interview/views/home/component/search.dart';
import 'package:interview/widgets/custom_text.dart';

class MyBooksView extends StatefulWidget {
  const MyBooksView({super.key});

  @override
  State<MyBooksView> createState() => _MyBooksViewState();
}

class _MyBooksViewState extends State<MyBooksView> with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 1;

  Books booksList = Books.fromJson({
    "books": [
      {"title": "Game of Thrones", "author": "George R.R Martin", "rating": "4.5"},
      {"title": "Apple", "author": "George R.R Martin", "rating": "4.5"},
      {"title": "Banana", "author": "George R.R Martin", "rating": "4.5"},
      {"title": "Cherry", "author": "George R.R Martin", "rating": "4.5"},
      {"title": "Honeydew", "author": "George R.R Martin", "rating": "4.5"},
      {"title": "Elderberry", "author": "George R.R Martin", "rating": "4.5"},
      {"title": "Grape", "author": "George R.R Martin", "rating": "4.5"}
    ]
  });

  // List that holds filtered items
  List<Book> filteredItems = [];
  String searchQuery = '';

  Future<void> filterItems(String query) async {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredItems = booksList.books ?? [];
      } else {
        filteredItems =
            booksList.books!.where((item) => item.title!.toLowerCase().contains(query.toLowerCase())).toList();
      }
    });
  }

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
          text: "My Books",
          fontWeight: FontWeight.w600,
          textSize: 16.sp,
          textColor: AppTheme.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
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
                      'Active borrows',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                    Tab(
                        child: Text(
                      'Returned',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                  ],
                ),
              ),
            ),
            YMargin(28.h),
            Row(
              children: [
                Expanded(
                    child: CustomSearchBox(
                  onChanged: filterItems,
                )),
                XMargin(16.w),
                SvgPicture.asset(
                  AppAssets.sort,
                ),
              ],
            ),
            YMargin(24.h),
            if (searchQuery.isEmpty)
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: booksList.books?.length ?? 0,
                  itemBuilder: (_, index) {
                    final data = booksList.books?[index];
                    return BookItem(book: data ?? Book());
                  }),
            if (searchQuery.isNotEmpty) ...[
              filteredItems.isNotEmpty
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: filteredItems.length,
                      itemBuilder: (_, index) {
                        final data = filteredItems[index];
                        return BookItem(book: data);
                      })
                  : const Center(
                      child: Text('No results found'),
                    )
            ]
          ],
        ),
      ),
    );
  }
}
