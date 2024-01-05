// import 'package:app/src/widgets/custom_banner.dart';
// import 'package:app/src/widgets/custom_bottom_navigation_bar.dart';
// import 'package:app/src/widgets/custom_image_asset.dart';
// import 'package:app/src/widgets/custom_input_text.dart';
// import 'package:app/src/widgets/custom_item_list_product.dart';
// import 'package:app/src/widgets/custom_image.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   ScrollController controller = ScrollController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 20, top: 26),
//           child: Image.asset(
//             "assets/images/logo.png",
//           ),
//         ),
//         leadingWidth: 148,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20, top: 26),
//             child: Image.asset(
//               "assets/images/favorite.png",
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: SingleChildScrollView(
//           controller: controller,
//           child: Column(children: [
//             CustomInputText(
//               iconData: "search.png",
//               hintText: "Search",
//               suffixIcon: IconButton(
//                 icon: CustomImageAsset(
//                   nameImage: "filter.png",
//                   width: 18.75,
//                   height: 18.75,
//                 ),
//                 onPressed: () {},
//               ),
//             ),
//             SizedBox(
//               height: 24,
//             ),
//             CustomBanner(
//                 pourcentage: "25 %",
//                 dateRemise: "Today Special",
//                 descRemise: "Get discount for every order. Only valid today"),
//             SizedBox(
//               height: 30,
//             ),
//             GridView.builder(
//                 //!pour mettre list scrollable
//                 physics: BouncingScrollPhysics(),
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                 ),
//                 itemCount: 8,
//                 itemBuilder: (BuildContext context, int index) {
//                   return CustomImage(
//                     image: "puma.png",
//                     name: "puma",
//                   );
//                 }),
//             Row(
//               children: [
//                 SizedBox(
//                   height: 20,
//                   child: Text(
//                     'Most Popular',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 16,
//                       fontFamily: 'Quicksand',
//                       fontWeight: FontWeight.w500,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 SizedBox(
//                   height: 20,
//                   child: Text(
//                     'SEE ALL',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontFamily: 'Quicksand',
//                       fontWeight: FontWeight.w500,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             GridView.builder(
//                 physics: BouncingScrollPhysics(),
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                 ),
//                 itemCount: 8,
//                 itemBuilder: (BuildContext context, int index) {
//                   return CustomItemListProduct();
//                 }),
//           ]),
//         ),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(),
//     );
//   }
// }
