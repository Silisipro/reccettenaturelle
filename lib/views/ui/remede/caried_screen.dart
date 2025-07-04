import 'package:flutter/material.dart';
//import 'package:reccettenaturelle/helpers/theme/app_style.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_container.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';
//import 'package:lucide_icons/lucide_icons.dart';

class CarieDentaireScreen extends StatefulWidget {
  const CarieDentaireScreen({super.key});

  @override
  State<CarieDentaireScreen> createState() => _CarieDentaireScreenState();
}

class _CarieDentaireScreenState extends State<CarieDentaireScreen>
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
                    MyBreadcrumbItem(name: 'CARIE DENTAIRE', active: true),
                  ],
                   backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "CARIE DENTAIRE",
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
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "Remède 1 : ",
                                  fontWeight: 600,
                                   fontSize: 15,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Argile verte",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Se brosser les dents avec de l’argile verte diététique, 3 fois par jour, est une
                                garantie de l’hygiène bucco-dentaire.""",
                              overflow: TextOverflow.ellipsis,
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),

                             Row(
                              children: [
                                MyText.titleSmall(
                                  "Remède 2 : ",
                                  fontWeight: 600,
                                   fontSize: 15,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Déchets de soi-même",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Prélever un peu de déchets de soi-même avec du coton et l’introduire dans le
                              trou de la dent cariée (guérison assurée).""",
                              overflow: TextOverflow.ellipsis,
                              muted: true,
                              textAlign: TextAlign.justify,
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
