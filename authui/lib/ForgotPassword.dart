import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient:
              new LinearGradient(colors: [Colors.blue, Colors.blue[200]])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: height * 0.15,
            ),
            Container(
                margin: EdgeInsets.only(top: height * 0.15),
                height: height * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.08),
                      Text(
                        'reset password'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Center(
                        child: Container(
                          height: 1,
                          width: width * 0.8,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter e-mail here';
                              }

                              return null;
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Your Email * ",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: Colors.blue),
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(12),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: Colors.grey),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 10),
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  colors: [Colors.blue, Colors.blue[200]]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.blue[200],
                                    offset: Offset(2, 2))
                              ]),
                          child: Text(
                            "Reset".toUpperCase(),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.7),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
