import 'package:flutter/material.dart';
import 'package:tugaspr/routes.dart';
import 'package:tugaspr/screens/login/tampilanlogin.dart';
import 'package:tugaspr/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Menghitung BMI",
    theme: theme(),
    initialRoute: TampilanLogin.routeName,
    routes: routes,
    debugShowCheckedModeBanner: false,
  ));
}
