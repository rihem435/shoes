import 'package:app/widgets/custom_boutton.dart';
import 'package:app/widgets/custom_secret_code.dart';
import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: keyForm,
          child: Padding(
            padding: const EdgeInsets.all(15),
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
                    "Verify Your Email",
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
                    "We’ve sent an code to email",
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
                Row(
                  children: [
                    CustomSecretCode(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomSecretCode(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomSecretCode(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomSecretCode()
                  ],
                ),
                Spacer(),
                CustomBoutton(
                  text: "Verify",
                  function: () {
                    if (keyForm.currentState!.validate()) {
                      Navigator.pushNamed(context, "/home");
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
