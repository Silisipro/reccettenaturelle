import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_responsiv.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/images.dart';
import 'package:reccettenaturelle/views/layout/auth_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin, UIMixin {

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: MyFlex(
        contentPadding: true,
        runAlignment: WrapAlignment.center,
        wrapCrossAlignment: WrapCrossAlignment.center,
        wrapAlignment: WrapAlignment.center,
        children: [
          MyFlexItem(
            sizes: "lg-6",
            child: MyResponsive(
              builder: (_, __, type) {
                return buildAuthSideBar();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAuthSideBar() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 700,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(Images.authSideImage),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            blendMode: BlendMode.darken,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText.displayMedium(
              "Bienvenu",
              textAlign: TextAlign.center,
              color: contentTheme.light,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/acceuil'); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                "Continuer",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
