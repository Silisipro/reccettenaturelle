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

class ThesScreen extends StatefulWidget {
  const ThesScreen({super.key});

  @override
  State<ThesScreen> createState() => _ThesScreenState();
}

class _ThesScreenState extends State<ThesScreen>
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
                    MyBreadcrumbItem(name: 'DES THES MEDICINAUX SIMPLE ET EFFICACE', active: true),
                  ],
                   backRoute: '/acceuil',
                ),
                MyText.titleMedium(
                  "DES THES MEDICINAUX SIMPLE ET EFFICACE",
                  fontSize: 12,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             MyText.bodySmall(
                              "Vous avez ici une liste de Thés médicinaux que vous pouvez concocter facilement, juste avec des ingrédients maisons, pour combattre quelques malaises du quotidien.",
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                            Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé à la camomille :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.bodySmall(
                                  "contre l’insomnie",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                
                                ),
                              ],
                            ),
                              MySpacing.height(8),
                              Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé de gingembre et curcuma :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                 Expanded( 
                                    child: MyText.bodySmall(
                                  "contre l’infection sinusale",
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                              ],
                            ),
                            MySpacing.height(8),
                              Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé au basilic :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.bodySmall(
                                  "contre l’anxiété",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(8),
                              Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé au gingembre :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.bodySmall(
                                  "contre maux de tête",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(8),
                              Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé vert :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.bodySmall(
                                  "contre l’acné",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(8),
                              Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé à la cannelle :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.bodySmall(
                                  "contre les maux de gorge",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(8),
                              Row(
                              children: [
                                MyText.titleSmall(
                                  "- Thé au miel et au citron :",
                                  fontWeight: 600,
                                   fontSize: 12,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.bodySmall(
                                  "contre le rhume",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                
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
