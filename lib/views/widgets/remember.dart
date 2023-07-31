import 'package:flutter/material.dart';
import 'package:log_in_app/services/constants/color_constants.dart';
import 'package:log_in_app/services/constants/font_constants.dart';
import 'package:log_in_app/services/constants/sring_constants.dart';

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool check = false;

  ///function for check
  void onChanged(value) {
    check = value!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Checkbox(
            value: check,
            onChanged: onChanged,
            checkColor: CustomColors.grey,
            activeColor: CustomColors.purple,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            side: const BorderSide(color: CustomColors.purple, width: 2.5)),
        Text(CustomStrings.rememberMe,
            style:
                CustomFonts.semiJostMini.copyWith(color: CustomColors.purple))
      ],
    );
  }
}
