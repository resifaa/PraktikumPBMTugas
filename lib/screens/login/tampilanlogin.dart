import 'package:flutter/material.dart';
import 'package:tugaspr/components/login/logincomponent.dart';
import 'package:tugaspr/size_config.dart';

class TampilanLogin extends StatelessWidget {
  static String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}
