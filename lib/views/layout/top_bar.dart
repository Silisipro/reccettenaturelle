import 'package:flutter/material.dart';
//import 'package:reccettenaturelle/helpers/localizations/language.dart';
//import 'package:reccettenaturelle/helpers/theme/app_notifire.dart';
import 'package:reccettenaturelle/helpers/theme/app_style.dart';
import 'package:reccettenaturelle/helpers/theme/app_themes.dart';
import 'package:reccettenaturelle/helpers/theme/theme_customizer.dart';
import 'package:reccettenaturelle/helpers/utils/my_shadow.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_button.dart';
import 'package:reccettenaturelle/helpers/widgets/my_card.dart';
import 'package:reccettenaturelle/helpers/widgets/my_container.dart';
//import 'package:reccettenaturelle/helpers/widgets/my_dashed_divider.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text_style.dart';
import 'package:reccettenaturelle/images.dart';
import 'package:reccettenaturelle/views/auth/login_screen.dart';
import 'package:reccettenaturelle/widgets/custom_pop_menu.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
//import 'package:provider/provider.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar>
    with SingleTickerProviderStateMixin, UIMixin {
  Function? languageHideFn;

  @override
  Widget build(BuildContext context) {
    return MyCard(
      shadow: MyShadow(position: MyShadowPosition.bottomRight, elevation: 0.5),
      height: 60,
      borderRadiusAll: 0,
      padding: MySpacing.x(24),
      color: topBarTheme.background.withAlpha(246),
      child: Row(
        children: [
          Row(
            children: [
              InkWell(
                  splashColor: theme.colorScheme.onBackground,
                  highlightColor: theme.colorScheme.onBackground,
                  onTap: () {
                    ThemeCustomizer.toggleLeftBarCondensed();
                  },
                  child: Icon(
                    LucideIcons.menu,
                    color: topBarTheme.onBackground,
                  )),
              MySpacing.width(24),
              SizedBox(
                width: 200,
                child: TextFormField(
                  maxLines: 1,
                  style: MyTextStyle.bodyMedium(),
                  decoration: InputDecoration(
                      hintText: "Recherche",
                      hintStyle: MyTextStyle.bodySmall(xMuted: true),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            LucideIcons.search,
                            size: 14,
                          )),
                      prefixIconConstraints: const BoxConstraints(
                          minWidth: 36,
                          maxWidth: 36,
                          minHeight: 32,
                          maxHeight: 32),
                      contentPadding: MySpacing.xy(16, 12),
                      isCollapsed: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    ThemeCustomizer.setTheme(
                        ThemeCustomizer.instance.theme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark);
                  },
                  child: Icon(
                    ThemeCustomizer.instance.theme == ThemeMode.dark
                        ? LucideIcons.sun
                        : LucideIcons.moon,
                    size: 18,
                    color: topBarTheme.onBackground,
                  ),
                ),
                MySpacing.width(12),
                // CustomPopupMenu(
                //   backdrop: true,
                //   hideFn: (_) => languageHideFn = _,
                //   onChange: (_) {},
                //   offsetX: -36,
                //   menu: Padding(
                //     padding: MySpacing.xy(8, 8),
                //     child: Center(
                //       child: ClipRRect(
                //         clipBehavior: Clip.antiAliasWithSaveLayer,
                //         borderRadius: BorderRadius.circular(2),
                //         child: Image.asset(
                //           "assets/lang/${ThemeCustomizer.instance.currentLanguage.locale.languageCode}.jpg",
                //           width: 24,
                //           height: 18,
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //   ),
                //   menuBuilder: (_) => buildLanguageSelector(),
                // ),
                MySpacing.width(4),
                CustomPopupMenu(
                  backdrop: true,
                  onChange: (_) {},
                  offsetX: -60,
                  offsetY: 8,
                  menu: Padding(
                    padding: MySpacing.xy(8, 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyContainer.rounded(
                            paddingAll: 0,
                            child: Image.asset(
                              Images.avatars[0],
                              height: 28,
                              width: 28,
                              fit: BoxFit.cover,
                            )),
                        MySpacing.width(8),
                        MyText.labelLarge("Sylvestre")
                      ],
                    ),
                  ),
                  menuBuilder: (_) => buildAccountMenu(),
                  hideFn: (_) => languageHideFn = _,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget buildLanguageSelector() {
  //   return MyContainer.bordered(
  //     padding: MySpacing.xy(8, 8),
  //     width: 125,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: Language.languages
  //           .map((language) => MyButton.text(
  //                 padding: MySpacing.xy(8, 4),
  //                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  //                 splashColor: contentTheme.onBackground.withAlpha(20),
  //                 onPressed: () async {
  //                   languageHideFn?.call();
  //                   // Language.changeLanguage(language);
  //                   await Provider.of<AppNotifier>(context, listen: false)
  //                       .changeLanguage(language, notify: true);
  //                   ThemeCustomizer.notify();
  //                   setState(() {});
  //                 },
  //                 child: Row(
  //                   children: [
  //                     ClipRRect(
  //                         clipBehavior: Clip.antiAliasWithSaveLayer,
  //                         borderRadius: BorderRadius.circular(2),
  //                         child: Image.asset(
  //                           "assets/lang/${language.locale.languageCode}.jpg",
  //                           width: 18,
  //                           height: 14,
  //                           fit: BoxFit.cover,
  //                         )),
  //                     MySpacing.width(8),
  //                     MyText.labelMedium(language.languageName)
  //                   ],
  //                 ),
  //               ))
  //           .toList(),
  //     ),
  //   );
  // }


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
                    Get.toNamed('/setting');
                    setState(() {});
                  },
                  // onPressed: () =>
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
                    setState(() {});
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
          const Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: MySpacing.xy(8, 8),
            child: MyButton(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {
                languageHideFn?.call();
                Get.offAll(LoginScreen());
              },
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
}
