import 'package:reccettenaturelle/helpers/theme/theme_customizer.dart';
import 'package:get/get.dart';

abstract class MyController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    ThemeCustomizer.addListener((old, newVal) {
      if (old.theme != newVal.theme) {
        update();
        onThemeChanged();
      }
    });
  }

  void onThemeChanged(){

  }
}
