import 'package:flutter/material.dart';
import 'package:reccettenaturelle/helpers/theme/app_style.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_button.dart';
import 'package:reccettenaturelle/helpers/widgets/my_container.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
//import 'package:reccettenaturelle/helpers/widgets/my_star_rating.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';
//import 'package:lucide_icons/lucide_icons.dart';

class RemedeDetailScreen extends StatefulWidget {
  const RemedeDetailScreen({super.key});

  @override
  State<RemedeDetailScreen> createState() => _RemedeDetailScreenState();
}

class _RemedeDetailScreenState extends State<RemedeDetailScreen>
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
                MyBreadcrumb(
                  children: [
                    MyBreadcrumbItem(name: 'RECETTE'),
                    MyBreadcrumbItem(name: 'LE PALUDISME', active: true),
                  ],
                   backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "LE PALUDISME",
                  fontSize: 16,
                  fontWeight: 600,
                ),
                
                
              ],
            ),
          ),
          MySpacing.height(flexSpacing),
          Padding(
            padding: MySpacing.x(flexSpacing / 2),
            child: Column(
              children: [
                MyFlex(
                  wrapAlignment: WrapAlignment.start,
                  wrapCrossAlignment: WrapCrossAlignment.start,
                  children: [
                    MyFlexItem(
                      sizes: "lg-8 md-12",
                      child: MyContainer(
                        //height: 450,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyText.bodyMedium(
                              "A titre préventif :",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Pour prévenir le paludisme, il n’y a pas de recette miracle,il faut simplement éviter au maximum les piqures de moustiques, pour selon il est conseillé de dormir sous moustiquaire imprégnée. En outre cette méthode il faut prendre du jus de citron mûr chaque jour dans de l’eau sucrée au miel, très efficace et protège votre organisme.",
                              overflow: TextOverflow.ellipsis,
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            
                            MySpacing.height(12),
                            MyText.titleSmall(
                              "Stock : 15kg",
                              fontWeight: 600,
                            ),
                            MySpacing.height(12),
                            MyText.titleSmall(
                              "Description :",
                              fontWeight: 600,
                            ),
                            MySpacing.height(8),
                            MyText.bodySmall(
                              "ok.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              muted: true,
                            ),
                            MySpacing.height(12),
                            Row(
                              children: [
                                MyText.titleLarge(
                                  "32626 :",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleLarge(
                                  "222",
                                  fontWeight: 600,
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                MyButton(
                                  onPressed: () {},
                                  elevation: 0,
                                  borderColor: contentTheme.primary,
                                  backgroundColor: contentTheme.primary
                                      .withOpacity(0.12),
                                  splashColor: contentTheme.primary
                                      .withOpacity(0.2),
                                  borderRadiusAll:
                                      AppStyle.buttonRadius.medium,
                                  child: MyText.bodySmall(
                                    'Remede 1',
                                    fontWeight: 600,
                                    color: contentTheme.primary,
                                  ),
                                ),
                                MySpacing.width(12),
                                MyButton(
                                  onPressed: () {},
                                  elevation: 0,
                                  borderColor: contentTheme.danger,
                                  backgroundColor:
                                      contentTheme.danger.withOpacity(0.12),
                                  splashColor:
                                      contentTheme.danger.withOpacity(0.2),
                                  borderRadiusAll:
                                      AppStyle.buttonRadius.medium,
                                  child: MyText.bodySmall(
                                    'Remede 2',
                                    fontWeight: 600,
                                    color: contentTheme.danger,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
