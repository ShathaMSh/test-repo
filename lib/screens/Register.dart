// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:shopper/screens/login.dart';

class MyReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('image/online-store.jpg'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder() ,
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email',
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: <Widget>[
              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border:OutlineInputBorder() ,
                      filled: true,
                      prefixIcon: Icon(Icons.person) ,
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border:OutlineInputBorder() ,
                      filled: true,
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Phone',
                    ),
                    obscureText: true,
                  ),
                ),
              ),
            ],),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: <Widget>[ SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
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
              ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border:OutlineInputBorder() ,
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Confirm password',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                child: Text('SING UP'),
                style: ButtonStyle(),
                onPressed: () {
                  //verification
                  //Navigator.pushReplacementNamed(context, '/catalog');
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account? "),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return MyLogin();},));
                }, child: Text('sing in')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
