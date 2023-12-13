import 'package:app/utils/app_colors.dart';
import 'package:app/widgets/custom_boutton.dart';
import 'package:app/widgets/custom_input_text.dart';
import 'package:app/widgets/custom_rich_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isVisible = true;
  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: keyForm,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Create Your Account',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputText(
                hintText: 'Votre nom',
                label: 'Name',
                iconData: 'name.png',
                obscureText: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Entrer un nom valide";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputText(
                hintText: 'Phone Number',
                label: 'Phone Number',
                iconData: 'call.png',
                obscureText: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Entrer un Num de Tél valide";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputText(
                hintText: 'Votre  mail',
                label: 'Email',
                iconData: 'email.png',
                obscureText: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Entrer un email valide";
                  } else if (!EmailValidator.validate(value)) {
                    return "Email not valid";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputText(
                hintText: 'Votre Mot de passe',
                label: 'Password',
                iconData: 'password.png',
                obscureText: isVisible,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Entrer un mot de passe valide";
                  }
                  return null;
                },
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: (!isVisible)
                        ? Icon(
                            Icons.visibility_off,
                            color: AppColors.colorGris,
                          )
                        : Icon(
                            Icons.visibility,
                            color: AppColors.colorVert,
                          )),
              ),
              SizedBox(
                height: 40,
              ),
              CustomBoutton(
                text: 'Sign Up',
                function: () {
                  if (keyForm.currentState!.validate()) {
                    Navigator.pushNamed(context, '/home');
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                child: TextDivider.horizontal(
                  text: const Text('or Sign up with'),
                  color: AppColors.colorVert,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/facebook.png')),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/google.png')),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomRichText(
                  text1: 'Already have an account? ',
                  text2: 'Sign In',
                  function: () {
                    Navigator.pushNamed(context, '/');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
