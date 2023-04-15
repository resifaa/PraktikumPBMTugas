import 'package:flutter/material.dart';
import 'package:tugaspr/components/default_button_custom_color.dart';
import 'package:tugaspr/size_config.dart';

class DashboardForm extends StatefulWidget {
  @override
  _DashboardForm createState() => _DashboardForm();
}

class _DashboardForm extends State<DashboardForm> {
  final _formKey = GlobalKey<FormState>();
  String? tinggibadan;
  String? beratbadan;

  TextEditingController txtTinggiBadan = TextEditingController(),
      txtBeratBadan = TextEditingController();
  double hasil = 0;
  hitung() {
    hasil = (double.parse(txtBeratBadan.text) /
        (double.parse(txtTinggiBadan.text) *
            double.parse(txtTinggiBadan.text)));
  }

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildTinggiBadan(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildBeratBadan(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButtonCustomeColor(
            color: Color.fromRGBO(250, 152, 132, 0.9),
            text: "Hitung BMI",
            press: () {
              if (_formKey.currentState!.validate()) {
                hitung();
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text("Score BMI = $hasil",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF23374D))),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  TextFormField buildTinggiBadan() {
    return TextFormField(
      controller: txtTinggiBadan,
      keyboardType: TextInputType.text,
      style: TextStyle(
          fontWeight: FontWeight.w600, color: Color(0xFF23374D), fontSize: 14),
      decoration: InputDecoration(
        labelText: 'Tinggi Badan',
        hintText: 'Masukkan Tinggi Badan (m)',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? Color(0xFF8E8E8E) : Color(0xFF1DB9C3)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Mohon diisi lebih dahulu';
        }
        return null;
      },
    );
  }

  TextFormField buildBeratBadan() {
    return TextFormField(
      controller: txtBeratBadan,
      keyboardType: TextInputType.text,
      style: TextStyle(
          fontWeight: FontWeight.w600, color: Color(0xFF23374D), fontSize: 14),
      decoration: InputDecoration(
        labelText: 'Berat Badan',
        hintText: 'Masukkan Berat Badan (kg)',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? Color(0xFF8E8E8E) : Color(0xFF1DB9C3)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Mohon diisi lebih dahulu';
        }
        return null;
      },
    );
  }
}
