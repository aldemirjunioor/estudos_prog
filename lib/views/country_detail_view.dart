import 'package:estudos_prog/models/country_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CountryDetailView extends GetView {
  const CountryDetailView(this.country, {super.key});
  final CountryModel country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Image.network(country.flag),
          Center(
              child: Text(
            country.capital,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(country.region,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Center(
              child: Text(country.longitude,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Center(
              child: Text(country.latitude,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          FilledButton(
              onPressed: () async {
                final Uri _url = Uri.parse(country.map);
                if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                }
              },
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
              child: Text("Abrir no mapa"))
        ],
      ),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        title: Text(country.name),
      ),
    );
  }
}
