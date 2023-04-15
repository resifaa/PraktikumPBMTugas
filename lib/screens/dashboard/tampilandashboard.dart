import 'package:flutter/material.dart';
import 'package:tugaspr/components/dashboard/dashboardcomponent.dart';
import 'package:tugaspr/size_config.dart';

class TampilanDashboard extends StatelessWidget {
  static String routeName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: DashboardComponent(),
    );
  }
}
