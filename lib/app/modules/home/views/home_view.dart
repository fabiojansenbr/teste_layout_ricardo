import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_layout_ricardo/app/widgets/aa_card_option_menu_image.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  final controller = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Obx(
            () => Container(
              padding: const EdgeInsets.all(20.0),
              child: controller.isLoading.value == true
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2,
                      children: List.generate(controller.menu.length, (index) {
                        return AAcardOptionMenuImage(
                          imageName: controller.menu[index].icone,
                          onTap: () {},
                          description: controller.menu[index].titulo,
                        );
                      }),
                    ),
            ),
          )),
    );
  }
}
