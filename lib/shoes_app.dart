// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';

import 'package:app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoesApp extends StatelessWidget {
  AppRouter appRouter;
  ShoesApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: "Shoes App",
        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
