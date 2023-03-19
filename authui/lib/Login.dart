import 'package:authui/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'Signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
        decoration: BoxDecoration(
            gradient:
                new LinearGradient(colors: [Colors.blue, Colors.blue[200]])),
        child: Scaffold(
          backgroundColor: Color.fromARGB(200, 0, 0, 0),
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
                          'Login'.toUpperCase(),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.05),
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
                                        label: Text(
                                          "Email",
                                          style: const TextStyle(
                                              color: Color(0xFF393E46),
                                              fontSize: 16),
                                        ),
                                        hintText: "Email * ",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.8),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              width: 1,
                                              style: BorderStyle.solid,
                                              color: Colors.blue),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        contentPadding: EdgeInsets.all(15),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                        label: Text(
                                          "Password",
                                          style: const TextStyle(
                                              color: Color(0xFF393E46),
                                              fontSize: 16),
                                        ),
                                        hintText: "Password * ",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.8),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              width: 1,
                                              style: BorderStyle.solid,
                                              color: Colors.blue),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        contentPadding: EdgeInsets.all(12),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                              ],
                            )),

                        ElevatedButton(
                            onPressed: () => {
                                  if (_formkey.currentState.validate())
                                    {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Successfully Login',
                                                textAlign: TextAlign.center)),
                                      )
                                    }
                                },
                            child: Text("Login")),

                        // Center(
                        //   child: Container(
                        //     padding:
                        //         EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                        //     decoration: BoxDecoration(
                        //         gradient: new LinearGradient(
                        //             colors: [Colors.blue, Colors.blue[200]]),
                        //         borderRadius: BorderRadius.circular(20),
                        //         boxShadow: [
                        //           BoxShadow(
                        //               blurRadius: 4,
                        //               color: Colors.blue[200],
                        //               offset: Offset(2, 2))
                        //         ]),
                        //     child: Text(
                        //       "Login".toUpperCase(),
                        //       style: TextStyle(
                        //           fontSize: 20,
                        //           color: Colors.white,
                        //           fontWeight: FontWeight.bold,
                        //           letterSpacing: 1.7),
                        //       textAlign: TextAlign.center,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            "Forgot Password ?".toUpperCase(),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                //  fontWeight: FontWeight.bold,
                                letterSpacing: 1.7),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Center(
                          child: Container(
                            height: 1,
                            width: width * 0.8,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          "Don't Have Account ?".toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              // color: Colors.blue,
                              //  fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
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
                                "Signup".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.7),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
