import 'package:flutter/material.dart';
import 'package:log_in_app/services/constants/color_constants.dart';
import 'package:log_in_app/services/constants/icon_constants.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerWidget(child: CustomIcons.google,),
        ContainerWidget(child: CustomIcons.google),
        ContainerWidget(child: CustomIcons.apple)
      ],
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Widget child;
  const ContainerWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      height: 50,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: CustomColors.grey, width: 2),),
      child: child,
    );
  }
}
