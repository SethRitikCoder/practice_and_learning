import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  Widget defText(
    String value,
    double size, {
    FontWeight? weight,
    Color? textcolor,
    String? fontFamily,
  }) {
    return Text(
      value,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: textcolor ?? Colors.white,
        fontFamily: fontFamily ?? GoogleFonts.lato().fontFamily,
      ),
    );
  }

  final _formkey = GlobalKey<FormState>();
  bool is_Loading = false;

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset("lib/images/login_image.png"),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  if (value.isEmpty) {
                    is_Loading = true;
                  } else {
                    is_Loading = false;
                  }
                });
                // value.isNotEmpty;
                // setState(() {
                //   is_Loading = false;
                // });
              },
              scrollPadding: EdgeInsets.all(12),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Your UserName";
                } else if (value.length < 4) {
                  return "Username Must Be At Least 4 Character";
                }
                return null;
              },
              controller: userController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(style: BorderStyle.solid),
                ),
                hintText: "Enter Your User Name",
                hintStyle: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.w700,
                ),
                labelText: "User Name",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              scrollPadding: EdgeInsets.all(12),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Your Password";
                } else if (value.length < 6) {
                  return "Password Must Be At Least 4 Character";
                } else if (value.contains(" ")) {
                  return "Please Don't use Space";
                }
                return null;
              },
              controller: passController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(style: BorderStyle.solid),
                ),
                hintText: "Enter Your Password",
                hintStyle: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.w700,
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                minimumSize: Size(200, 50),
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () async {
                if (_formkey.currentState!.validate()) {
                  await Future.delayed(Duration(seconds: 2));
                  Navigator.pushNamed(context, "home");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "LoginSuccessfull",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 3),
                    ),
                  );
                }
              },
              child: defText(
                "Submit",
                22,
                weight: FontWeight.bold,
                fontFamily: GoogleFonts.aBeeZee().fontFamily,
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,

              child: is_Loading
                  ? Center(child: CircularProgressIndicator())
                  : Text("Not Empty"),
            ),
            SizedBox(
              height: 100,
              width: 400,

              child: userController.text.trim().isEmpty
                  ? Center(child: Text("User Name Is Empty"))
                  : Center(
                      child: Text("you have entered ${userController.text}"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
