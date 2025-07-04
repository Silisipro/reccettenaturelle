import 'dart:math';

class Images {
  /// WebApps Logo ///
  static String logoIcon = 'assets/logo/foodLogo.png';

  /// Background ///
  static String background = 'assets/images/dummy/background.jpg';

  /// Auth Side Image ///
  static String authSideImage = 'assets/images/dummy/auth_side_image.png';

  /// Avatars ///
  static List<String> avatars = List.generate(
      12, (index) => 'assets/images/dummy/avatar_${index + 1}.png');



  static List<String> food =
      List.generate(3, (index) => 'assets/images/food/food-${index + 1}.png');
  static List<String> restaurantLogo = List.generate(
      3,
      (index) =>
          'assets/images/restaurant_logo/restaurant_logo_${index + 1}.png');

  static String randomImage(List<String> images) {
    return images[Random().nextInt(images.length)];
  }
}
