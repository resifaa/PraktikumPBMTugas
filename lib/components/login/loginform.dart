import 'package:flutter/material.dart';
import 'package:tugaspr/components/default_button_custom_color.dart';
import 'package:tugaspr/size_config.dart';

String tusername = "Cece";
String tpassword = "19042003";

class LoginForm extends StatefulWidget {
  @override
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remember = false;

  TextEditingController txtUsername = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUsername(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember Me"),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF23374D)),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: Color.fromRGBO(250, 152, 132, 0.9),
            text: "MASUK",
            press: () {
              if (_formKey.currentState!.validate()) {
                // Navigator.pushNamed(context, '/dashboard');
                if (txtUsername.text == tusername &&
                    txtPassword.text == tpassword) {
                  Navigator.pushNamed(context, '/dashboard');
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Konfirmasi Login'),
                          content: Text('Username atau Password masih salah'),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  txtUsername.text = '';
                                  txtPassword.text = '';

                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text('Ok'))
                          ],
                        );
                      });
                }
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text(
              "Belum Punya Akun? Daftar Disini",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xFF23374D)),
            ),
          )
        ],
      ),
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
      obscureText: true,
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
