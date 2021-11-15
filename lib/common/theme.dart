// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

final appTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.yellow,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    display1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    button: TextStyle(
      color: Colors.yellow,
    ),
    headline: TextStyle(
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  ),
);
