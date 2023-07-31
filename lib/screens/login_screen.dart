import 'package:flutter/material.dart';
import 'package:log_in_app/services/constants/font_constants.dart';
import 'package:log_in_app/services/constants/icon_constants.dart';
import 'package:log_in_app/services/constants/sring_constants.dart';
import 'package:log_in_app/views/widgets/continue.dart';
import 'package:log_in_app/views/widgets/first_text_field.dart';
import 'package:log_in_app/views/widgets/others.dart';
import 'package:log_in_app/views/widgets/remember.dart';
import 'package:log_in_app/views/widgets/rich_text4.dart';
import 'package:log_in_app/views/widgets/sign_in.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 75,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: CustomIcons.back,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, bottom: 20,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(CustomStrings.login, style: CustomFonts.semiJost),
              const SizedBox(height: 55),
              const FirstTextField(),
              const SizedBox(height: 15),
              const FirstTextField(isPassword: true),
              const SizedBox(height: 35),
              const Remember(),
              const SizedBox(height: 35,),
              const SignInButton(),
              const SizedBox(height: 35,),
              const Continue(),
              const SizedBox(height: 35,),
              const Others(),
              const SizedBox(height: 35,),
              const Rich()
            ],
          ),
        ),
      ),
    );
  }
}
