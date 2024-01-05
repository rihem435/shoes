
import 'package:app/core/widgets/custom_container.dart';
import 'package:app/core/widgets/custom_image_asset.dart';
import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  final String? label;
  final String iconData;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomInputText(
      {Key? key,
      this.label,
      required this.iconData,
      required this.hintText,
      this.suffixIcon,
      this.obscureText = false,
      this.validator,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widthContainer1: 344,
      heightContainer1: (validator!(controller!.text) != null)
          ? 100 // Adjust the height when there is an error
          : 43,
      heightContainer2: (validator != null)
          ? 62 // Adjust the height when there is an error
          : 41,
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,

            // ignore: unnecessary_null_comparison
            label: label != null
                ? Text(
                    label!,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Quicksand",
                        height: 0),
                  )
                : null,
            hintText: hintText,
            suffixIcon: (suffixIcon != null) ? suffixIcon : null,
            prefixIcon: CustomImageAsset(
              nameImage: iconData,
            ),
            border: InputBorder.none,
          ),
          obscureText: obscureText!,
          validator: validator),
    );
  }
}
