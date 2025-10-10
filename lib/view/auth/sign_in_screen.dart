import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tc_boiler_plate/main.dart';
import 'package:tc_boiler_plate/utils/colors.dart';
import 'package:tc_boiler_plate/view/auth/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Sign In"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: authStore.signInFormState,
          child: AnimatedScrollView(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (context.height() * 0.1).toInt().height,
              Text("Login".toUpperCase(), style: boldTextStyle(size: 28, letterSpacing: 1.8)),
              8.height,
              Text("Hello, Welcome Back", style: secondaryTextStyle(size: 18)),
              64.height,
              AppTextField(
                textFieldType: TextFieldType.EMAIL_ENHANCED,
                controller: authStore.emailCont,
                decoration: defaultInputDecoration(hint: "Enter your email"),
              ),
              16.height,
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                controller: authStore.passCont,
                decoration: defaultInputDecoration(hint: "Enter your password"),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?", style: secondaryTextStyle()),
                ),
              ),
              16.height,
              AppButton(
                width: context.width(),
                text: "LOGIN".toUpperCase(),
                textStyle: boldTextStyle(letterSpacing: 1.4, color: Colors.white),
                onTap: authStore.onSignSubmit,
              ),
              32.height,
              Row(
                children: [
                  32.width,
                  Divider().expand(),
                  32.width,
                  Text("OR", style: secondaryTextStyle()),
                  32.width,
                  Divider().expand(),
                  32.width,
                ],
              ),
              16.height,
              RichTextWidget(
                list: [
                  TextSpan(text: "Already have an account?", style: primaryTextStyle()),
                  TextSpan(
                    text: " Sign Up",
                    style: boldTextStyle(color: primaryColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        SignUpScreen().launch(context);
                      },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
