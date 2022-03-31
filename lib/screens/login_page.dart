import 'package:ebuy/utilities/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildLoginImage(),
              SizedBox(
                height: 20.0,
              ),
              buildLoginHeader(),
              SizedBox(
                height: 20.0,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      buildUsername(),
                      buildPasswordField(),
                      SizedBox(
                        height: 32.0,
                      ),
                      buildLoginButton(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Image buildLoginImage() {
    return Image.asset(
      "assets/images/hey.png",
      fit: BoxFit.cover,
    );
  }

  Text buildLoginHeader() {
    return Text("Welcome $name!",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ));
  }

  TextFormField buildUsername() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter username",
        labelText: "Username",
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Username cannot be empty.";
        }
        return null;
      },
      onChanged: (value) {
        name = value;
        setState(() {});
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter password",
        labelText: "Passwords",
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Password cannot be empty.";
        } else if (value.length < 6) {
          return "Password length must be atleast 6.";
        }
        return null;
      },
    );
  }

  Material buildLoginButton(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
      child: InkWell(
        onTap: () => moveToHome(context),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: changeButton ? 50 : 150,
          height: 50,
          alignment: Alignment.center,
          child: changeButton
              ? SizedBox(
                  height: 22,
                  width: 22,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ))
              : Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
