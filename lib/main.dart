import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'commons/routes.dart';
import 'commons/style_data.dart';
import 'pages/login/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Social Network',
        theme: StyleData.theme(),
        debugShowCheckedModeBanner: false,
        defaultTransition: kIsWeb ? Transition.noTransition : null,
        getPages: Routes.pages(),
        initialRoute: LoginPage.routeName,
      );
}
