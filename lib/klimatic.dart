import 'package:flutter/material.dart';

class Klimatic extends StatefulWidget {
  const Klimatic({Key? key}) : super(key: key);

  @override
  State<Klimatic> createState() => _KlimaticState();
}

class _KlimaticState extends State<Klimatic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Klimatic'), backgroundColor: Colors.white, actions: []),
    );
  }
}
