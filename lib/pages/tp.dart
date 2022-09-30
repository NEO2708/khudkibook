import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ThemePreferences {
  static const PREF_KEY = "PREF_KEY";
  
  // get SharedPreferences => null;
  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY);
  }
}
