import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:make_app/apiservice/apiservice.dart';
import 'package:make_app/ulities/commontoast.dart';
import 'package:make_app/ulities/text.dart';

class MyAddApi extends StatefulWidget {
  const MyAddApi({super.key});

  @override
  State<MyAddApi> createState() => _MyAddApiState();
}

class _MyAddApiState extends State<MyAddApi> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  bool is_Loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Add Page',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 22),
              TextFormField(
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "Please Enter Title";
                  } else if (value!.contains(RegExp(r'[0-9]'))) {
                    return "Please Don't Use Number In Title";
                  }
                  return null;
                },
                controller: titleController,
                decoration: InputDecoration(
                  hint: textdef("Title", 22, weight: FontWeight.bold),
                  label: textdef(
                    "Enter Your Title",
                    18,
                    weight: FontWeight.bold,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 22),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Body";
                  } else if (value.length < 4) {
                    return "Please Enter Atleast 10 Words";
                  }
                  return null;
                },
                controller: bodyController,
                maxLines: 4,
                decoration: InputDecoration(
                  hint: textdef("Body", 22, weight: FontWeight.bold),
                  label: textdef(
                    "Enter Your Body",
                    18,
                    weight: FontWeight.bold,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 22),
              is_Loading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 40),
                        side: BorderSide(width: 1),
                        elevation: 2.0,
                        backgroundColor: Colors.deepPurple.shade300,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            is_Loading = true;
                          });

                          final response = await Apiservice().addApi(
                            titleController.text,
                            bodyController.text,
                          );
                          titleController.clear();
                          bodyController.clear();
                          if (response == true) {
                            commonToast2(context, "Successfully Add Data");
                          } else {
                            commonToast2(context, "Failed to Add Data");
                          }

                          setState(() {
                            is_Loading = false;
                          });
                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
