import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


class InternetCheck{


  static StreamSubscription? connectivitySubscription;
  static ConnectivityResult? connectivityResult = ConnectivityResult.none;

  static checkNet(BuildContext context) {
    connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.ethernet ||
          result == ConnectivityResult.bluetooth ||
          result == ConnectivityResult.wifi ||
          result == ConnectivityResult.vpn ||
          result == ConnectivityResult.other) {

        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
          content: Text('Connected'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
        ));

      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
          content: Text('Disconnected'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
        ));
      }
    });
  }










}