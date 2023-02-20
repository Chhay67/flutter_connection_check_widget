


import 'package:flutter/material.dart';

import 'connection_check_widget.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  void login(){
    print('do something');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ConnectivityCheck(
        builder: (isConnected){
        if(isConnected){
          login();
          return Center(child: Icon(Icons.wifi,size: 40,color: Colors.greenAccent,),);
        }else{
          return Center(child: Icon(Icons.wifi_off_outlined,size: 40,color: Colors.redAccent,),);
        }

      },)
    );
  }
}
