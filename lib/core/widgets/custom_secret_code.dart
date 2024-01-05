import 'package:app/core/widgets/custom_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSecretCode extends StatelessWidget {
  final String? Function(String?)? validator;

  const CustomSecretCode({Key? key, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: CustomContainer(
        widthContainer1: 44,
        heightContainer1: 43,
        heightContainer2: 41,
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
    );
  }
}
