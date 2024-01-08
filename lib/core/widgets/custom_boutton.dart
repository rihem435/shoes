import 'package:app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoutton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final Function? function;
  const CustomBoutton({Key? key, this.text, this.function, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      height: 44.h,
      child: ElevatedButton(
          onPressed: () {
            function!();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.colorVert,
            foregroundColor: Colors.white,
            padding: EdgeInsets.only(left: 5.w, top: 10.h, bottom: 10.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
          ),
          child: Text('$text')),
    );
  }
}
