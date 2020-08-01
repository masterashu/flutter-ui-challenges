import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Challenge1 extends StatefulWidget {
  static WidgetBuilder get route {
    return (_) => Challenge1();
  }

  @override
  _Challenge1State createState() => _Challenge1State();
}

class _Challenge1State extends State<Challenge1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange[900], Colors.orange[700]],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [0, 0.5]),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 100.0, 0.0, 40.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text("Login", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                  Text("Welcome Back", style: TextStyle(fontSize: 20.0, color: Colors.white)),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(64.0), topRight: const Radius.circular(64.0)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(top: 8.0),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 20.0),
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Form(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              const BoxShadow(
                                  color: Color(0x50FF9800),
                                  spreadRadius: 2.0,
                                  offset: Offset(0, 2),
                                  blurRadius: 8.0),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0),
                                    gapPadding: 2.0,
                                  ),
                                  hintText: "Email or Phone Number",
                                ),
                              ),
                              Divider(),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0),
                                    gapPadding: 2.0,
                                  ),
                                  hintText: "Password",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 32, 0, 32),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 14.0),
                        color: Colors.orange[900],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        elevation: 0,
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 24),
                        child: Text(
                          'Continue with social media',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 14.0),
                            color: Colors.lightBlue[600],
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
                            child: Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white, fontSize: 16.0),
                            ),
                            elevation: 0,
                            onPressed: () {},
                          ),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 14.0),
                            color: Colors.black,
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
                            child: Text(
                              "Github",
                              style: TextStyle(color: Colors.white, fontSize: 16.0),
                            ),
                            elevation: 0,
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
