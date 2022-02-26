import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './signup.dart';
import './dabba page.dart';
class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController  emailController = new TextEditingController();
  final TextEditingController  passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        // reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
            .hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          signIn(emailController.text, passwordController.text);
        },
        child: Text('Login',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height:150,
                      child: Image.asset(
                        "assets/login.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 60,),
                    emailField,
                    SizedBox(height: 20,),
                    passwordField,
                    SizedBox(height: 30,),
                    loginButton,
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Text("Don't have an account?"),
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder:
                            (context)=> signup_form()));
                          },
                          child: Text("Signup",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                            ),
                        ),
  ],
                        ),
                      ],
                    ),
                ),
              ),
            ),
          ),
        ),
    );
  }
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      // try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
          Fluttertoast.showToast(msg: "Login Successful"),
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen())),
        }).catchError((e){
          Fluttertoast.showToast(msg: e!.message);
        });
      // } on FirebaseAuthException catch (error) {
      //   switch (error.code) {
      //     case "invalid-email":
      //       errorMessage = "Your email address appears to be malformed.";
      //
      //       break;
      //     case "wrong-password":
      //       errorMessage = "Your password is wrong.";
      //       break;
      //     case "user-not-found":
      //       errorMessage = "User with this email doesn't exist.";
      //       break;
      //     case "user-disabled":
      //       errorMessage = "User with this email has been disabled.";
      //       break;
      //     case "too-many-requests":
      //       errorMessage = "Too many requests";
      //       break;
      //     case "operation-not-allowed":
      //       errorMessage = "Signing in with Email and Password is not enabled.";
      //       break;
      //     default:
      //       errorMessage = "An undefined Error happened.";
      //   }
      //   Fluttertoast.showToast(msg: errorMessage!);
      //   print(error.code);
      // }
    }
  }
}