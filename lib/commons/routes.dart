import 'package:get/get.dart';

import '../pages/login/bindings/login_binding.dart';
import '../pages/login/views/login_page.dart';
import '../pages/main/bindings/main_binding.dart';
import '../pages/main/views/main_page.dart';
import '../pages/profile/bindings/profile_binding.dart';
import '../pages/profile/views/profile_page.dart';

class Routes {
  Routes._();

  static List<GetPage> pages() => [
        GetPage(
          name: LoginPage.routeName,
          page: LoginPage.new,
          binding: LoginBinding(),
        ),
        GetPage(
          name: MainPage.routeName,
          page: MainPage.new,
          binding: MainBinding(),
        ),
        GetPage(
          name: ProfilePage.routeNameWithParam,
          page: ProfilePage.new,
          binding: ProfileBinding(),
        ),
      ];
}
