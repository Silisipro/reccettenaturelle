import 'package:flutter/material.dart';
import 'package:reccettenaturelle/helpers/theme/app_themes.dart';
import 'package:reccettenaturelle/helpers/theme/theme_customizer.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/widgets/custom_switch.dart';

class RightBar extends StatefulWidget {
  const RightBar({
    Key? key, // this.leftBarThemeType,
  }) : super(key: key);

  @override
  _RightBarState createState() => _RightBarState();
}

class _RightBarState extends State<RightBar>
    with SingleTickerProviderStateMixin, UIMixin {
  ThemeCustomizer customizer = ThemeCustomizer.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    customizer = ThemeCustomizer.instance;
    return Container(
      width: 280,
      color: theme.colorScheme.background,
      child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            padding: MySpacing.x(24),
            color: theme.colorScheme.primaryContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MyText.labelLarge(
                    "Paramètres",
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                    size: 18,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: MySpacing.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText.labelMedium("Couleur"),
                Divider(),
                MySpacing.height(8),
                Row(
                  children: [
                    CustomSwitch.small(
                      value: customizer.theme == ThemeMode.light,
                      onChanged: (value) {
                        ThemeCustomizer.setTheme(ThemeMode.light);
                      },
                    ),
                    MySpacing.width(12),
                    Text(
                      "Clair",
                    )
                  ],
                ),
                MySpacing.height(8),
                Row(
                  children: [
                    CustomSwitch.small(
                      value: customizer.theme == ThemeMode.dark,
                      onChanged: (value) {
                        ThemeCustomizer.setTheme(ThemeMode.dark);
                      },
                    ),
                    MySpacing.width(12),
                    Text(
                      "Sombre",
                    )
                  ],
                ),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.contentThemeType == ContentThemeType.dark,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onContentSchemeChange != null) {
                //           widget.onContentSchemeChange(ContentThemeType.dark);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Dark",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
                // Spacing.height(36),
                // Text("Left Bar",
                //     style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                //         color: rightBarTheme.onBackground, fontWeight: 600)),
                Divider(),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.leftBarThemeType == LeftBarThemeType.light,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onLeftBarColorSchemeChange != null) {
                //           widget.onLeftBarColorSchemeChange(LeftBarThemeType.light);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Light",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.leftBarThemeType == LeftBarThemeType.dark,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onLeftBarColorSchemeChange != null) {
                //           widget.onLeftBarColorSchemeChange(LeftBarThemeType.dark);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Dark",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
                // Spacing.height(36),
                Text("Haut de page"),
                Divider(),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.topBarThemeType == TopBarThemeType.light,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onTopBarColorSchemeChange != null) {
                //           widget.onTopBarColorSchemeChange(TopBarThemeType.light);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Light",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.topBarThemeType == TopBarThemeType.dark,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onTopBarColorSchemeChange != null) {
                //           widget.onTopBarColorSchemeChange(TopBarThemeType.dark);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Dark",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
                // Spacing.height(36),
                // Text("Right Bar",
                //     style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                //         color: rightBarTheme.onBackground, fontWeight: 600)),
                // Divider(),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.rightBarThemeType == RightBarThemeType.light,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onRightBarColorSchemeChange != null) {
                //           widget.onRightBarColorSchemeChange(RightBarThemeType.light);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Light",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
                // Spacing.height(8),
                // Row(
                //   children: [
                //     CustomSwitch.small(
                //       value: widget.rightBarThemeType == RightBarThemeType.dark,
                //       inactiveTrackColor: rightBarTheme.disabled,
                //       activeBorderColor: rightBarTheme.activeSwitchBorderColor,
                //       inactiveBorderColor: rightBarTheme.inactiveSwitchBorderColor,
                //       activeTrackColor: rightBarTheme.primary,
                //       inactiveThumbColor: rightBarTheme.onDisabled,
                //       activeThumbColor: rightBarTheme.onPrimary,
                //       onChanged: (value) {
                //         if (value && widget.onRightBarColorSchemeChange != null) {
                //           widget.onRightBarColorSchemeChange(RightBarThemeType.dark);
                //         }
                //       },
                //     ),
                //     Spacing.width(12),
                //     Text(
                //       "Dark",
                //       style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                //           color: rightBarTheme.onBackground),
                //     )
                //   ],
                // ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
