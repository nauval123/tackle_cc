import 'package:flutter/material.dart';
import 'package:tackle_cc/component.dart';

class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.green,
    body: MediaQuery.of(context).orientation == Orientation.landscape
    ? SingleChildScrollView(child: ContentArea()):ContentArea(),
  );
 } 
}

class ContentArea extends StatelessWidget{
  const ContentArea({
    Key key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormLogin(),
      ],
    );
  }
}