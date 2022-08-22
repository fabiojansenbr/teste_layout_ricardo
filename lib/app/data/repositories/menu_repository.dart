import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teste_layout_ricardo/app/data/models/card_menu.dart';

class MenuRepository {
  Future<List<Cardmenu>> obterMenu(
      dynamic idMenu, String pesFisJur, String ehDental) async {
    try {
      final response = await http.post(
        Uri.parse(
          'https://apisourcehealth.herokuapp.com/sh/rtn',
        ),
        body: {
          'codrot': '15001',
          'idmenu': idMenu,
          'pesfisjur': pesFisJur,
          'ehdental': ehDental,
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['data'] as List;

        print(json);

        return json.map((menu) => Cardmenu.fromJson(menu)).toList();
      }

      if (response.statusCode == 404) {
        return [];
      }
    } catch (e, s) {
      print(e);
      print(s);
    }

    return [];
  }
}
