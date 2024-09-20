import 'package:estudos_prog/controllers/country_list_controller.dart';
import 'package:estudos_prog/views/country_detail_view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<CountryListController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state) => ListView.builder(
            itemCount: state?.length,
            itemBuilder: (context, index) => Card.filled(
              child: ListTile(
                onTap: () {
                  Get.to(CountryDetailView(state[index]));
                },
                leading: Image.network(state![index].flag),
                title: Text(state[index].name),
                subtitle: Text(state[index].region),
              ),
            ),
          )),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        title: Text("Lista de Países - Lingua Portuguesa"),
      ),
    );
  }
}
