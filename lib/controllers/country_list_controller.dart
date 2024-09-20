import 'dart:convert';
import 'package:estudos_prog/models/country_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CountryListController extends GetxController
    with StateMixin<List<CountryModel>> {
  @override
  Future<void> onInit() async {
    super.onInit();
    var url = Uri.https('restcountries.com', '/v3.1/lang/por');
    var response = await http.get(url);
    //var response = await http.post(url, body: {
      //"title": 'foo',
      //"body": 'bar',
      //"userId": 1,
    //});
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as List;
    final countries = <CountryModel>[];
    for (final r in decodedResponse) {
      countries.add(CountryModel(
          name: r["name"]["common"], region: r["region"],
          capital: r["capital"]?[0] ?? "",
          flag: r["flags"]["png"],
          latitude: r["latlng"][0].toString(),
          longitude: r["latlng"][1].toString(),
          map: r["maps"]["googleMaps"]));
    }
    change(countries, status: RxStatus.success());
  }
}
