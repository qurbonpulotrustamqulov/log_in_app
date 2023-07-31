import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:log_in_app/services/constants/color_constants.dart';
import 'package:log_in_app/services/constants/font_constants.dart';
import 'package:log_in_app/services/constants/icon_constants.dart';
import 'package:log_in_app/services/constants/sring_constants.dart';

///1 text field
class FirstTextField extends StatefulWidget {
  final bool isPassword;

  const FirstTextField({
    Key? key,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<FirstTextField> createState() => _FirstTextFieldState();
}

class _FirstTextFieldState extends State<FirstTextField> {
  String ctr = '';
  String password = '';
  bool focused = false;
  bool view = true;

  ///for listen value, password or email
  void onChanged(value) {
    if (widget.isPassword) {
      password = value;
    } else {
      ctr = value;
    }
    setState(() {});
  }

  ///for check focusing
  void onFocusChange(value) {
    focused = value;
    setState(() {});
  }

  ///for view password
  void onPressed() {
    view = !view;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: onFocusChange,
      child: SizedBox(
        height: 80,
        child: TextField(
          obscureText: widget.isPassword ? view : false,
          textInputAction: TextInputAction.done,
          style: CustomFonts.boldMontserrat,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: CustomColors.purple),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            focusColor: CustomColors.purple,
            prefixIcon: Icon(
                widget.isPassword ? CustomIcons.password : CustomIcons.email,
                color: focused
                    ? CustomColors.purple
                    : !focused && ctr.isNotEmpty || password.isNotEmpty
                        ? CustomColors.black
                        : null),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: onPressed,
                    icon: Icon(view ? CustomIcons.deView : CustomIcons.view,
                        color: focused
                            ? CustomColors.purple
                            : !focused && ctr.isNotEmpty || password.isNotEmpty
                                ? CustomColors.black
                                : null))
                : null,
            fillColor: CustomColors.grey,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: !focused ? BorderSide.none : const BorderSide()),
            hintText: widget.isPassword
                ? CustomStrings.password
                : CustomStrings.email,
            errorText: widget.isPassword && password.length < 8 && focused ||
                    !widget.isPassword &&
                        !ctr.contains(CustomStrings.gmail) &&
                        focused
                ? CustomStrings.enter
                : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          ),
          onChanged: onChanged,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              CustomStrings.regex,
            ),
          ],
        ),
      ),
    );
  }
}
