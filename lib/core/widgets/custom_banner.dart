import 'package:app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  final String pourcentage;
  final String dateRemise;
  final String descRemise;
  const CustomBanner(
      {Key? key,
      required this.pourcentage,
      required this.dateRemise,
      required this.descRemise})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 170,
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: AppColors.colorRouge,
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$pourcentage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                '$dateRemise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Container(
                width: 154,
                child: Text(
                  '$descRemise',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/shoes.png', width: 190, height: 150),
        ],
      ),
    );
  }
}
