import 'package:flutter/widgets.dart';
import 'package:tugaspr/screens/dashboard/tampilandashboard.dart';
import 'package:tugaspr/screens/login/tampilanlogin.dart';
import 'package:tugaspr/screens/register/tampilanregister.dart';

final Map<String, WidgetBuilder> routes = {
  TampilanLogin.routeName: (context) => TampilanLogin(),
  TampilanRegister.routeName: (context) => TampilanRegister(),
  TampilanDashboard.routeName: (context) => TampilanDashboard(),
};
