import 'package:flutter/cupertino.dart';
import 'package:log_in_app/services/constants/color_constants.dart';
import 'package:log_in_app/services/constants/font_constants.dart';
import 'package:log_in_app/services/constants/sring_constants.dart';

class Rich extends StatelessWidget {
  const Rich({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: CustomStrings.already,
        style: CustomFonts.regularMontserrat
            .copyWith(color: CustomColors.black),
        children: [
          TextSpan(
            text: CustomStrings.signUp,
            style:
                CustomFonts.boldMontserrat.copyWith(color: CustomColors.purple),
          ),
        ],
      ),
    );
  }
}
