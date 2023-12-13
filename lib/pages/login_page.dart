import 'package:app/utils/app_colors.dart';
import 'package:app/widgets/custom_boutton.dart';
import 'package:app/widgets/custom_input_text.dart';
import 'package:app/widgets/custom_rich_text.dart';
import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;

  final keyForm = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
        key: keyForm,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/img_login.png"),
            SizedBox(
              width: 281,
              height: 37,
              child: Text(
                'Login to Your Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
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
              controller: emailController,
            ),
            SizedBox(
              height: 15,
            ),
            CustomInputText(
              label: "Password",
              hintText: "entrez votre password",
              iconData: "password.png",
              obscureText: isVisible,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                  print('isVisible=====> $isVisible');
                },
                icon: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "entrez un password ";
                }
                return null;
              },
              controller: passwordController,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 344,
              height: 61,
              child: Align(
                child: GestureDetector(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Quicksand",
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/forgot");
                  },
                ),
                alignment: Alignment.topRight,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustomBoutton(
              text: "Login",
              function: () async {
                if (keyForm.currentState!.validate()) {
                  print("email====>${emailController.text}");
                  print("password====>${passwordController.text}");
                  final response = await dio
                      .post("http://192.168.1.101:3001/auth/login", data: {
                    "email": emailController.text,
                    "password": passwordController.text
                  });
                  print("response ====>${response.data['data']}");

                  if (response.data['success']) {
                    Navigator.pushNamed(context, "/home");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("error d'auth"),
                      ),
                    );
                  }
                }
                print('login');
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 330,
              child: TextDivider.horizontal(
                  text: const Text('Or continue with '),
                  color: AppColors.colorVert),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/google.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/facebook.png"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomRichText(
              text1: "Don't have an account?",
              text2: " Sign Up",
              function: () {
                Navigator.pushNamed(context, "/register");
              },
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    ));
  }
}
