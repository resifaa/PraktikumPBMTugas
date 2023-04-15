import 'package:flutter/material.dart';
import 'package:tugaspr/components/register/registerform.dart';
import 'package:tugaspr/size_config.dart';

class RegisterComponent extends StatefulWidget {
  @override
  _RegisterComponnet createState() => _RegisterComponnet();
}

class _RegisterComponnet extends State<RegisterComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Image(
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/1754/1754237.png"),
                  height: 150,
                  width: 202,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Register !",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF23374D),
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RegisterForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
