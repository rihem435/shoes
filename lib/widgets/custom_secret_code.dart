import 'package:app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSecretCode extends StatelessWidget {
  final String? Function(String?)? validator;

  const CustomSecretCode({Key? key, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 44,
          height: 45,
          decoration: ShapeDecoration(
            color: AppColors.colorVert,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        Container(
          width: 44,
          height: 43,
          decoration: ShapeDecoration(
            color: AppColors.colorGris,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return "code !";
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
