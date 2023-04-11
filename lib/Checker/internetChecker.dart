import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


class InternetCheck extends StatefulWidget {
  const InternetCheck({Key? key}) : super(key: key);

  @override
  State<InternetCheck> createState() => _InternetCheckState();
}

class _InternetCheckState extends State<InternetCheck> {
  StreamSubscription? connectivitySubscription;
  ConnectivityResult? connectivityResult = ConnectivityResult.none;

  @override
  void initState() {
    super.initState();
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
          content: Text('You are connected to internet'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
        ));
        print('connected');


      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
          content: Text('Please Check Your Internet Connection'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
        ));
        print('disconnected');

        setState(() { });

      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    connectivitySubscription!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
