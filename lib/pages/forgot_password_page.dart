import 'package:app/widgets/custom_boutton.dart';
import 'package:app/widgets/custom_input_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Form(
            key: keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 37,
                  // width: 249,
                  child: Text(
                    "Let’s Get Started!",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 27,
                  //width: 249,
                  child: Text(
                    "Please Enter Your Email!",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomInputText(
                  label: "Email",
                  hintText: "entrez votre email",
                  iconData: "email.png",
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "entrez un email ";
                    } else if (!EmailValidator.validate(value)) {
                      return "Email not valid";
                    }
                    return null;
                  },
                ),
                Spacer(),
                CustomBoutton(
                  text: "Sent",
                  function: () {
                    if (keyForm.currentState!.validate()) {
                      Navigator.pushNamed(context, "/verify");
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
