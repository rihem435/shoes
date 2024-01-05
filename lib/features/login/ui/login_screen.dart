import 'package:app/core/helpers/extension_navigation.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/widgets/custom_boutton.dart';
import 'package:app/core/widgets/custom_input_text.dart';
import 'package:app/core/widgets/custom_rich_text.dart';
import 'package:app/features/login/data/models/login_request_body.dart';
import 'package:app/features/login/logic/login_cubit.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_divider/text_divider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
        key: context.read<LoginCubit>().formKey,
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              Expanded(
                  flex: 3, child: Image.asset("assets/images/img_login.png")),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Login to Your Account',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomInputText(
                  label: "Email",
                  hintText: "entrez votre email",
                  iconData: "email.png",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "entrez un email ";
                    } else if (!EmailValidator.validate(value)) {
                      return "Email not valid";
                    }
                    return null;
                  },
                  controller: context.read<LoginCubit>().emailController,
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomInputText(
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
                  controller: context.read<LoginCubit>().passwordController,
                ),
              ),
              Expanded(
                child: Container(
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
              ),
              Expanded(
                flex: 1,
                child: CustomBoutton(
                  text: "Login",
                  function: () async {
                    login();
                    context.pushNamed(Routes.homeScreen);
                    print('login');
                  },
                ),
              ),
              Expanded(
                child: Container(
                  width: 330,
                  child: TextDivider.horizontal(
                      text: const Text('Or continue with '),
                      color: AppColors.colorVert),
                ),
              ),
              Expanded(
                child: Row(
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
              ),
              Expanded(
                child: CustomRichText(
                  text1: "Don't have an account?",
                  text2: " Sign Up",
                  function: () {
                    context.pushNamed(Routes.signUpScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void login() {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text.trim(),
          password: context.read<LoginCubit>().passwordController.text.trim()));
    }
  }
}
