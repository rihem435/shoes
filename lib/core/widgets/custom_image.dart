import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String? image;
  final String? name;
  const CustomImage({Key? key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 57,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/$image"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(39.50),
            ),
          ),
        ),
        SizedBox(
          width: 40,
          height: 19,
          child: Text(
            '$name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
