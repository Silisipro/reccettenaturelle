import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reccettenaturelle/controller/layout/layout_controller.dart';
import 'package:reccettenaturelle/helpers/theme/admin_theme.dart';
import 'package:reccettenaturelle/helpers/theme/app_style.dart';
import 'package:reccettenaturelle/helpers/theme/app_themes.dart';
import 'package:reccettenaturelle/helpers/theme/theme_customizer.dart';
import 'package:reccettenaturelle/helpers/widgets/my_button.dart';
import 'package:reccettenaturelle/helpers/widgets/my_container.dart';
//import 'package:reccettenaturelle/helpers/widgets/my_dashed_divider.dart';
import 'package:reccettenaturelle/helpers/widgets/my_responsiv.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/views/layout/left_bar.dart';
import 'package:reccettenaturelle/views/layout/right_bar.dart';
import 'package:reccettenaturelle/views/layout/top_bar.dart';
import 'package:reccettenaturelle/widgets/custom_pop_menu.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:get/get.dart';

class Layout extends StatelessWidget {
  final Widget? child;

  final LayoutController controller = LayoutController();
  final topBarTheme = AdminTheme.theme.topBarTheme;
  final contentTheme = AdminTheme.theme.contentTheme;

  Layout({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return MyResponsive(builder: (BuildContext context, _, screenMT) {
      return GetBuilder(
          init: controller,
          builder: (controller) {
            return screenMT.isMobile ? mobileScreen() : largeScreen();
          });
    });
  }

  Widget mobileScreen() {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        
        actions: [
          Row(
            children: [
              
              CustomPopupMenu(
                backdrop: true,
                onChange: (_) {},
                offsetX: -110,
                offsetY: 0,
                menu: Padding(
                  padding: MySpacing.xy(8, 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyContainer.roundBordered(
                          paddingAll: 8,
                          child: Icon(LucideIcons.circleEllipsis, size: 20)),
                    ],
                  ),
                ),
                menuBuilder: (_) => buildAccountMenu(),
              ),
            ],
          ),
        ],
      ),
      drawer: LeftBar(),
      body: SingleChildScrollView(
        key: controller.scrollKey,
        child: child,
      ),
    );
  }

  Widget buildTopBar(IconData icon, Color color) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
      ],
    );
  }

  Widget largeScreen() {
    return Scaffold(
      key: controller.scaffoldKey,
      endDrawer: RightBar(),
      body: Row(
        children: [
          LeftBar(isCondensed: ThemeCustomizer.instance.leftBarCondensed),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  padding:
                      MySpacing.fromLTRB(0, 58 + flexSpacing, 0, flexSpacing),
                  key: controller.scrollKey,
                  child: child,
                ),
              ),
              Positioned(top: 0, left: 0, right: 0, child: TopBar()),
            ],
          )),
         
        ],
      ),
    );
  }

  
  Widget buildAccountMenu() {
    return MyContainer.bordered(
      paddingAll: 0,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: MySpacing.xy(8, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyButton(
                     onPressed: () {
                    Get.toNamed('/about');
                  },
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  borderRadiusAll: AppStyle.buttonRadius.medium,
                  padding: MySpacing.xy(8, 4),
                  splashColor: theme.colorScheme.onBackground.withAlpha(20),
                  backgroundColor: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(
                        LucideIcons.info,
                        size: 14,
                        color: contentTheme.onBackground,
                      ),
                      MySpacing.width(8),
                      MyText.labelMedium(
                        "A propos",
                        fontWeight: 600,
                      )
                    ],
                  ),
                ),
                MySpacing.height(4),
                MyButton(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    Get.toNamed('/setting');
                  },
                  borderRadiusAll: AppStyle.buttonRadius.medium,
                  padding: MySpacing.xy(8, 4),
                  splashColor: theme.colorScheme.onBackground.withAlpha(20),
                  backgroundColor: Colors.transparent,
                  child: Row(
                    children: [
                      Icon(
                        LucideIcons.settings,
                        size: 14,
                        color: contentTheme.onBackground,
                      ),
                      MySpacing.width(8),
                      MyText.labelMedium(
                        "Paramètre",
                        fontWeight: 600,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: MySpacing.xy(8, 8),
            child: MyButton(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
             onPressed: () => _showExitConfirmationDialog(),
              borderRadiusAll: AppStyle.buttonRadius.medium,
              padding: MySpacing.xy(8, 4),
              splashColor: contentTheme.danger.withAlpha(28),
              backgroundColor: Colors.transparent,
              child: Row(
                children: [
                  Icon(
                    LucideIcons.logOut,
                    size: 14,
                    color: contentTheme.danger,
                  ),
                  MySpacing.width(8),
                  MyText.labelMedium(
                    "Quiter",
                    fontWeight: 600,
                    color: contentTheme.danger,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

   void _showExitConfirmationDialog() {
    Get.dialog(
      AlertDialog(
        title: Text("Confirmation"),
        content: Text("Voulez-vous vraiment quitter l'application ?"),
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); 
            },
            child: Text("Annuler"),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop(); 
            },
            child: Text("Oui"),
          ),
        ],
      ),
    );
  }
}
