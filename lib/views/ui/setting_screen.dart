import 'package:flutter/material.dart';
import 'package:reccettenaturelle/helpers/utils/my_shadow.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_card.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/helpers/theme/theme_customizer.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>
    with SingleTickerProviderStateMixin, UIMixin {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        children: [
          Padding(
            padding: MySpacing.x(flexSpacing),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText.titleMedium(
                  "Paramètre",
                  fontSize: 18,
                  fontWeight: 600,
                ),
                MyBreadcrumb(
                  children: [
                    MyBreadcrumbItem(name: ''),
                    MyBreadcrumbItem(name: 'Paramètre', active: true),
                  ],
                  backRoute: '/',
                ),
              ],
            ),
          ),
          MySpacing.height(flexSpacing),
          Padding(
            padding: MySpacing.x(flexSpacing / 2),
            child: MyFlex(
              children: [
                MyFlexItem(
                  sizes: "lg-6",
                  child: MyCard(
                    shadow: MyShadow(elevation: 0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ThemeCustomizer.setTheme(
                                ThemeCustomizer.instance.theme == ThemeMode.dark
                                    ? ThemeMode.light
                                    : ThemeMode.dark,
                              );
                            });
                          },
                          child: Icon(
                            ThemeCustomizer.instance.theme == ThemeMode.dark
                                ? LucideIcons.sun
                                : LucideIcons.moon,
                            size: 18,
                            color: topBarTheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

