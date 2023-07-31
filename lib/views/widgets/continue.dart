import 'package:flutter/material.dart';
import 'package:log_in_app/services/constants/font_constants.dart';
import 'package:log_in_app/services/constants/sring_constants.dart';

class Continue extends StatelessWidget {
  const Continue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(child: Divider(thickness: 2,),),
      const SizedBox(width: 10,),
      Text(CustomStrings.orContinue,style: CustomFonts.semiJostMini.copyWith(color: Colors.grey),),
      const SizedBox(width: 10,),
      const Expanded(child: Divider(thickness: 2,),),
    ],);
  }
}
