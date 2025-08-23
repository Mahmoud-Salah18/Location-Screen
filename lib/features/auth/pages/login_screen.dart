import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/widgets/custom_password_field.dart';
import 'package:nectar_ui/core/widgets/custom_text_field.dart';
import 'package:nectar_ui/core/widgets/main_button.dart';
import 'package:nectar_ui/features/auth/pages/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset(AppImages.carrotSvg)],
                  ),
                  SizedBox(height: 70),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkColor,
                    ),
                  ),
                  Text(
                    "Enter your emails and password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextField(
                    label: "Email",
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please enter your email";
                      }
                        return null;
                    } ,
                    prefix: Icon(Icons.email, color: AppColors.primaryColor),
                  ),
                  SizedBox(height: 20),
                  CustomPasswordField(
                    label: "Password",
                    prefix: Icon(Icons.lock, color: AppColors.primaryColor),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppColors.darkColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MainButton(text: "Log In", onPressed: () {
                    if(formKey.currentState!.validate()){

                    }
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushWithReplacement(context, SignUpScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
