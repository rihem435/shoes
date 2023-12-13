import 'package:app/widgets/custom_banner.dart';
import 'package:app/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 26),
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        leadingWidth: 148,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 26),
            child: Image.asset(
              "assets/images/favorite.png",
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          CustomSearchBar(
            function: () {},
          ),
          SizedBox(
            height: 24,
          ),
          CustomBanner(
              pourcentage: "25 %",
              dateRemise: "Today Special",
              descRemise: "Get discount for every order. Only valid today"),
          
        ]),
      ),
    );
  }
}
