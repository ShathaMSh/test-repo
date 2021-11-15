// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:shopper/screens/Register.dart';

import 'otp_code.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('image/online-store.jpg'),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder() ,
                  filled: true,
                  prefixIcon: Icon(Icons.person) ,

                  hintText: 'Username',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder() ,
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: ElevatedButton(
                child: Text('SiGN In'),
                style: ButtonStyle(),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/catalog');
                },
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return OTP();},));
            }, child: Text('forget your password?')),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don't have account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return MyReg();},));
                }, child: Text('SIGN UP?')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
