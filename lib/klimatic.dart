import 'package:flutter/material.dart';
import './utils/utils.dart' as util;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Klimatic extends StatefulWidget {
  const Klimatic({Key? key}) : super(key: key);

  @override
  State<Klimatic> createState() => _KlimaticState();
}

class _KlimaticState extends State<Klimatic> {
  void showStuff() async {
    Map data = await getWeather(util.appId);
    print(data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Klimatic'),
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(
            onPressed: showStuff,
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'images/umbrella.png',
              width: 490.0,
              height: 1900.0,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
            child: Text('Spokane', style: cityStyle()),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset('images/light_rain.png'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30.0, 250.0, 0.0, 0.0),
            child: updateTempWidget('String'),
          )
        ],
      ),
    );
  }

// {'lat=35&lon=139&appid=${appId}'}

  Future<Map> getWeather(String appId) async {
    var url = Uri.https('api.openweathermap.org', '/data/2.5/weather',
        {'lat': '30', 'lon': '139', 'appid': appId});

    var response = await http.get(url);

    return jsonDecode(response.body);
  }

  Widget updateTempWidget(String) {
    return FutureBuilder(
      future: getWeather(util.appId),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        List<Widget> children;
        if (snapshot.hasData) {
          Map content = snapshot.data as Map;
          children = <Widget>[
            ListTile(
              title: Text(content['main']['temp'].toString()),
            )
          ];
        }
        return Container(
          child: Column(
            children: children,
          ),
        );
      },
    );
  }
}

TextStyle cityStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 22.9,
    fontStyle: FontStyle.italic,
  );
}

TextStyle tempStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 49.9,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
}
// https://api.openweathermap.org/data/2.5/weather?lat=35&lon=105&appid=e69e56a0b7c65988ca3b23787d685bc7
// https://api.openweathermap.org/data/2.5/weather%3Flat=35&lon=139&appid=e69e56a0b7c65988ca3b23787d685bc7