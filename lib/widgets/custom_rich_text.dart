import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final Function function;
  CustomRichText(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: text2,
            style: TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                function();
              },
          ),
        ],
      ),
    );
  }
}
