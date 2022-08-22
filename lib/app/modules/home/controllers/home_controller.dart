import 'package:get/get.dart';
import 'package:teste_layout_ricardo/app/data/models/card_menu.dart';
import 'package:teste_layout_ricardo/app/data/repositories/menu_repository.dart';

class HomeController extends GetxController {
  RxList<Cardmenu> menu = RxList<Cardmenu>([]);
  final isLoading = false.obs;

  @override
  onInit() {
    obterMenu();
    super.onInit();
  }

  Future<List<Cardmenu>?> obterMenu() async {
    try {
      isLoading(true);
      final response = await MenuRepository().obterMenu('7', 'F', 'N');
      print(response);

      menu(response);
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
    return null;
  }
}
