import 'package:flutter/material.dart';
import 'package:messanger/mainpage.dart';

import 'homescreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.grey[400],iconTheme: IconThemeData(color: Colors.white)),
    home: MainPage(),
  ));
}