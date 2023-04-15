import 'package:flutter/material.dart';
import 'package:tugaspr/components/default_button_custom_color.dart';
import 'package:tugaspr/size_config.dart';

String temail = "cece@ggmail.com";
String tusername = "Cece";
String tpassword = "19042003";

class RegisterForm extends StatefulWidget {
  @override
  _RegisterForm createState() => _RegisterForm();
}

class _RegisterForm extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? username;
  String? password;

  TextEditingController txtEmail = TextEditingController(),
      txtUsername = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildUsername(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButtonCustomeColor(
            color: Color.fromRGBO(250, 152, 132, 0.9),
            text: "DAFTAR",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/login');
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              "Sudah Punya Akun? Masuk Disini",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF23374D)),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.text,
      style: TextStyle(
          fontWeight: FontWeight.w600, color: Color(0xFF23374D), fontSize: 14),
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukkan Email Anda',
        labelStyle: TextStyle(
            color: focusNode.hasFocus
                ? Color(0xFF8E8E8E)
                : Color.fromRGBO(250, 152, 132, 0.9)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.email_outlined,
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Mohon diisi lebih dahulu';
        }
        return null;
      },
    );
  }

  TextFormField buildUsername() {
    return TextFormField(
      controller: txtUsername,
      keyboardType: TextInputType.text,
      style: TextStyle(
          fontWeight: FontWeight.w600, color: Color(0xFF23374D), fontSize: 14),
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan Username Anda',
        labelStyle: TextStyle(
            color: focusNode.hasFocus
                ? Color(0xFF8E8E8E)
                : Color.fromRGBO(250, 152, 132, 0.9)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.account_circle_outlined,
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Mohon diisi lebih dahulu';
        }
        return null;
      },
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: false,
      style: TextStyle(
          fontWeight: FontWeight.w600, color: Color(0xFF23374D), fontSize: 14),
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password Anda',
        labelStyle: TextStyle(
            color: focusNode.hasFocus
                ? Color(0xFF8E8E8E)
                : Color.fromRGBO(250, 152, 132, 0.9)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.lock_outline,
        ),
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
