import 'package:app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final Function? function;

  const CustomSearchBar({Key? key, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 359,
          height: 49,
          decoration: ShapeDecoration(
            color: AppColors.colorVert,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        Container(
          width: 359,
          height: 47,
          decoration: ShapeDecoration(
            color: AppColors.colorGris,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: TextFormField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Quicksand",
              ),
              prefixIcon: Image.asset("assets/images/search.png"),
              suffixIcon: IconButton(
                onPressed: () {
                  function!();
                },
                icon: Image.asset("assets/images/filter.png"),
              ),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
