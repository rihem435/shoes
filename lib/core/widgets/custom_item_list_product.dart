import 'package:app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomItemListProduct extends StatelessWidget {
  const CustomItemListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      height: 160,
      margin: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Color(0xFFF1F1F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          // Icône en haut à droite

          // Contenu du container
          Container(
            width: 113,
            height: 152,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/adidas.png"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.favorite,
              color: AppColors.colorVert,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
