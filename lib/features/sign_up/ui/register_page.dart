
// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';
// import 'package:text_divider/text_divider.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key}) : super(key: key);
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   bool isVisible = true;
//   final TextEditingController nameController = TextEditingController();
//   final keyForm = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: keyForm,
//         child: Padding(
//           padding: const EdgeInsets.all(23.0),
//           child: Column(
//             children: [
//               Expanded(child: Container()),
//               Expanded(
//                 flex: 2,
//                 child: FittedBox(
//                   child: Container(
//                     width: 265,
//                     height: 37,
//                     child: Text(
//                       'Create Your Account',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontFamily: 'Quicksand',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: CustomInputText(
//                   controller: nameController,
//                   hintText: 'Votre nom',
//                   label: 'Name',
//                   iconData: 'name.png',
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Entrer un nom valide";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Expanded(
//                 child: CustomInputText(   controller: nameController,
//                   hintText: 'Phone Number',
//                   label: 'Phone Number',
//                   iconData: 'call.png',
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Entrer un Num de Tél valide";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Expanded(
//                 child: CustomInputText(   controller: nameController,
//                   hintText: 'Votre  mail',
//                   label: 'Email',
//                   iconData: 'email.png',
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Entrer un email valide";
//                     } else if (!EmailValidator.validate(value)) {
//                       return "Email not valid";
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Expanded(
//                 child: CustomInputText(   controller: nameController,
//                   hintText: 'Votre Mot de passe',
//                   label: 'Password',
//                   iconData: 'password.png',
//                   obscureText: isVisible,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return "Entrer un mot de passe valide";
//                     }
//                     return null;
//                   },
//                   suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           isVisible = !isVisible;
//                         });
//                       },
//                       icon: (isVisible)
//                           ? Icon(
//                               Icons.visibility_off,
//                               //  color: AppColors.colorGris,
//                             )
//                           : Icon(
//                               Icons.visibility,
//                               color: AppColors.colorVert,
//                             )),
//                 ),
//               ),
//               Expanded(
//                 child: CustomBoutton(
//                   text: 'Sign Up',
//                   function: () {
//                     if (keyForm.currentState!.validate()) {
//                       Navigator.pushNamed(context, '/home');
//                     }
//                   },
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   width: 330,
//                   child: TextDivider.horizontal(
//                     text: const Text('or Sign up with'),
//                     color: AppColors.colorVert,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                         onPressed: () {},
//                         icon: Image.asset('assets/images/facebook.png')),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     IconButton(
//                         onPressed: () {},
//                         icon: Image.asset('assets/images/google.png')),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: CustomRichText(
//                     text1: 'Already have an account? ',
//                     text2: 'Sign In',
//                     function: () {
//                       Navigator.pushNamed(context, '/');
//                     }),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
