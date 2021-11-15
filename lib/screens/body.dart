// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:js_util';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    Row buildTimer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("this code will expired in "),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context, value, child) => Text(
              "00:${value.toInt()}",
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
            onEnd: () {},
          ),
        ],
      );
    }
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.2,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                "OTP VERIFICATION",
                style: Theme.of(context).textTheme.headline,
              ),
              Text("WE SENT YOUR CODE TO 34556765"),
              buildTimer(),
              SizedBox(
                height: 10,
              ),
              OtpForm(),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "RESENT OTP CODE",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;

  FocusNode pin3FocusNode;

  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextFiled({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40,
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                  onChanged: (value) {
                    nextFiled(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                  onChanged: (value) {
                    nextFiled(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                  onChanged: (value) {
                    nextFiled(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: 40,
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                  onChanged: (value) {
                    pin4FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 60,),
          ElevatedButton(onPressed: (){}, child: Text('continue'))
        ],
      ),
    );
  }
}
