import 'package:flutter/material.dart';
import 'package:flutter_clima_weather_app/screens/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class loading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();

  }

  void getLocation() async {
    location loc = location();
    await loc.getLoc();
    print(loc.latitude);
    print(loc.longitutde);
    fetchData();
  }

  void fetchData() async {
    http.Response response = await http.get(
        'https://api.weatherapi.com/v1/current.json?key=c49e9597a34a4207927104718211011&q=Karachi');
    print(jsonDecode(response.body)['location']['name']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Get Location"),
        ),
      ),
    );
  }
}
