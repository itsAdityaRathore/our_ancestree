import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_ancestree/utils/colors_utils.dart';

import 'widgets/index.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenUtil.init(context);
        return const HomeScreen();
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            width: double.infinity,
            height: 65.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Our Ancestree',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontSize: 24.sp),
                      ),
                    ],
                  ),
                  const Icon(Icons.language),
                ]),
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomCard(
            elevation: 6,
            child: Container(
              height: 120.w,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffB4E4FF),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRROt7YUKa7excpJt4CR59ZwHzhWDfV1mr0eQ&usqp=CAU'),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Happy Birthday',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        userList.first.values.first,
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomCard(
              elevation: 6,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Search family member...',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.black26),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Events',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'See all',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black45),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 16.w, bottom: 12.h),
                child: CustomCard(
                    child: Container(
                  width: 170.w,
                )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

var userList = [
  {"name": "Aditya Rathore", "event": "birthday"},
  {"name": "Manish Rathore", "event": "marriage"},
  {"name": "Chetanya Rathore", "event": "birthday"},
  {"name": "Jyoti Rathore", "event": "marriage"}
];
