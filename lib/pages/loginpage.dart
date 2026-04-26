import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:make_app/ulities/commontoast.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _formkey = GlobalKey<FormState>();
  String name = "";
  bool changeButton = false;
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  goToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      changeButton = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, "home");
      changeButton = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Login Page',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("lib/images/login_image.png", fit: BoxFit.cover),
              Text(
                "WELCOME $name",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
              ),
              Text(
                "          BACK",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    TextFormField(
                      controller: userController,
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "user name cannot be ";
                        } else if (!(value?.contains("@") ?? false)) {
                          return "please enter a right email";
                        } else {
                          return null;
                          //(!(value?.contains("@")??false))
                          // !value!.contains("@")
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter Username",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.lilitaOne().fontFamily,
                          fontWeight: FontWeight.w500,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password Length should be atleast 6 ";
                        } else {
                          return null;
                        }
                      },
                      controller: passController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.lilitaOne().fontFamily,
                          fontWeight: FontWeight.w500,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 17),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(390, 50),
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {
                        if (userController.text.trim().isEmpty) {
                          commonToast(
                            context,
                            "Please EnterUsername",
                            bgcolor: Colors.red.shade200,
                          );
                        } else if (passController.text.trim().isEmpty) {
                          commonToast(
                            context,
                            "Please Enter Password",
                            bgcolor: Colors.red.shade200,
                            durvalue: 4,
                          );
                        } else {
                          commonToast(
                            context,
                            "Login Succesfull",
                            bgcolor: Colors.green.shade200,
                          );
                          Navigator.pushNamed(context, "home");
                        }
                      },

                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(
                        changeButton ? 50 : 8,
                      ),
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => goToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: changeButton ? 50 : 400,
                          height: 50,
                          alignment: Alignment.center,

                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ),

                    SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "apifetch");
                          },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "valid");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
