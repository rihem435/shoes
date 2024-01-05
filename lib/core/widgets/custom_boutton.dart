
import 'package:app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBoutton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final Function? function;
  const CustomBoutton({Key? key, this.text, this.function, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 44,
      child: ElevatedButton(
          onPressed: () {
            function!();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.colorVert,
            foregroundColor: Colors.white,
            padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text('$text')),
    );
  }
}
