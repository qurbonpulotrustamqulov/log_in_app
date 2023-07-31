import 'package:flutter/material.dart';

abstract class CustomIcons{
  static const IconData login = Icons.login;
  static const IconData email = Icons.email;
  static const IconData password = Icons.lock;
  static const IconData view = Icons.visibility;
  static const IconData deView = Icons.visibility_off;
  static const Image google = Image(image: AssetImage("assets/icons/ic_google.png"));
  static const Image apple = Image(image: AssetImage("assets/icons/ic_apple.png"));
  static const Image facebook = Image(image: AssetImage("assets/icons/ic_facebook.png"));
  static const Image back = Image(image: AssetImage("assets/icons/ic_back.png"));
}