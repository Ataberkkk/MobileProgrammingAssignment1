import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                      Text(
                        'Signup'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
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
                        height: height * 0.1,
                      ),
                      Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.05),
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter name here';
                                      }

                                      return null;
                                    },
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "Name * ",
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
                                height: height * 0.04,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.05),
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Email here';
                                      }

                                      return null;
                                    },
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "Email * ",
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
                                height: height * 0.04,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.05),
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter mobile phone here';
                                      }

                                      return null;
                                    },
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "Mobile Number * ",
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
                                height: height * 0.04,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.05),
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter password here';
                                      }

                                      return null;
                                    },
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "Password * ",
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
                            ],
                          )),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      ElevatedButton(
                          onPressed: () => {
                                if (_formkey.currentState.validate())
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Successfully Signedup',
                                              textAlign: TextAlign.center)),
                                    )
                                  }
                              },
                          child: Text("Signup"))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
