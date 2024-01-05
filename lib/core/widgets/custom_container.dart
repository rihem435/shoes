
import 'package:app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final double? widthContainer1;
  final double? heightContainer1;
  final double? heightContainer2;
  const CustomContainer({Key? key, this.child, this.widthContainer1, this.heightContainer1, this.heightContainer2, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: widthContainer1,
        height: heightContainer1,
        decoration: ShapeDecoration(
          color: AppColors.colorVert,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      Container(
        width: widthContainer1,
        height: heightContainer2,
        decoration: ShapeDecoration(
          color: AppColors.colorGris,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          
        ),
        
        child: child,
      )
    ]);
  }
}
