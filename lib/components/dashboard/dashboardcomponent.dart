import 'package:flutter/material.dart';
import 'package:tugaspr/components/dashboard/dashboardform.dart';
import 'package:tugaspr/components/login/loginform.dart';
import 'package:tugaspr/size_config.dart';

class DashboardComponent extends StatefulWidget {
  @override
  _DashboardComponnet createState() => _DashboardComponnet();
}

class _DashboardComponnet extends State<DashboardComponent> {
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Selamat Datang, $tusername",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF23374D),
                            fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Menghitung BMI",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF23374D),
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                DashboardForm(),
                Container(
                  child: Text(
                    "Keterangan : ",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: Text(
                    "Score BMI <18.5 = Berat Badan Kurang",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: Text(
                    "Score BMI 18.5 - 22.9 = Berat Badan Ideal",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: Text(
                    "Score BMI 23 - 29.9 = Berat Badan Berlebih",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: Text(
                    "Score BMI >30 = Obesitas",
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
