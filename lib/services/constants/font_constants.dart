import 'package:flutter/material.dart';

abstract class CustomFonts{
  static const String jost = "Jost";
  static const String montserrat = "Montserrat";

  static  TextStyle semiJost = const TextStyle(fontWeight: FontWeight.w600, fontFamily: jost, fontSize: 40,height: 1);
  static  TextStyle semiJostMini = const TextStyle(fontWeight: FontWeight.w600, fontFamily: jost, fontSize: 16);
  static  TextStyle boldMontserrat = const TextStyle(fontWeight: FontWeight.bold, fontFamily: montserrat, fontSize: 16);
  static  TextStyle regularMontserrat = const TextStyle(fontWeight: FontWeight.w400, fontFamily: montserrat, fontSize: 16);
}