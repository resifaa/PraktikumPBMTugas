import 'package:flutter/material.dart';
import 'package:tugaspr/components/register/registercomponent.dart';
import 'package:tugaspr/size_config.dart';

class TampilanRegister extends StatelessWidget {
  static String routeName = "/register";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: RegisterComponent(),
    );
  }
}
