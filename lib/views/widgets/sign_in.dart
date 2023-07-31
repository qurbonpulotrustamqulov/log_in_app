import 'package:flutter/material.dart';
import 'package:log_in_app/services/constants/color_constants.dart';
import 'package:log_in_app/services/constants/font_constants.dart';
import 'package:log_in_app/services/constants/sring_constants.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(margin: const EdgeInsets.only(bottom: 70, right: 50, left: 50),
              behavior: SnackBarBehavior.floating,
              content:  Align(
                alignment: Alignment.center,
                child: Text(CustomStrings.successful, style: CustomFonts.boldMontserrat,),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: CustomColors.purple),
        child: Text(
          CustomStrings.signIn,
          style: CustomFonts.boldMontserrat
              .copyWith(color: CustomColors.grey.withOpacity(0.8)),
        ),
      ),
    );
  }
}
