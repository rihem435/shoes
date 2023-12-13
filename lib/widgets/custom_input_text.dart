import 'package:app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  final String label;
  final String iconData;
  final String hintText;
  final IconButton? suffixIcon;
  final bool? obscureText;
  
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomInputText(
      {Key? key,
      required this.label,
      required this.iconData,
      required this.hintText,
      this.suffixIcon,
      this.obscureText,
      this.validator, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 344,
          height: 63,
          decoration: ShapeDecoration(
            color: AppColors.colorVert,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        Container(
          width: 344,
          height: 61,
          decoration: ShapeDecoration(
            color: AppColors.colorGris,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: TextFormField(
            controller: controller,
              decoration: InputDecoration(
                label: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",
                  ),
                ),
                hintText: hintText,
                suffixIcon: (suffixIcon != null) ? suffixIcon : null,
                prefixIcon: Image.asset("assets/images/$iconData"),
                border: InputBorder.none,
              ),
              obscureText: obscureText!,
              validator: validator),
        ),
      ],
    );
  }
}
