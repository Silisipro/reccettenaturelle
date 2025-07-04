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

class HypertensionScreen extends StatefulWidget {
  const HypertensionScreen({super.key});

  @override
  State<HypertensionScreen> createState() => _HypertensionScreenState();
}

class _HypertensionScreenState extends State<HypertensionScreen>
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
                    MyBreadcrumbItem(name: 'HYPERTENSION', active: true),
                  ],
                   backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "HYPERTENSION",
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
                                  "Avocatier + Ail",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Faire la décoction des feuilles d’avocatier + 2 gousses d’ail dans 1 litre d’eau
                              pendant 20 min boire. Boire 1 verre matin et soir pendant 15 jour dans le
                              mois.""",
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
                                  "Anacardier",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Faire l’infusion, de 2 cuillerées à soupe de poudre de l’écorce d’anacardier
                                dans 1 verre d’eau pendant 10 min. Boire 1 verre matin et soir pendant 15
                                jours dans le mois.""",
                              overflow: TextOverflow.ellipsis,
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),

                             Row(
                              children: [
                                MyText.titleSmall(
                                  "Remède 3 : ",
                                  fontWeight: 600,
                                   fontSize: 15,
                                  color: contentTheme.success,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Ail",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Mettre dans une bouteille, 1 litre d’eau plus une gousse d’ail découpée et boire
                              cette eau 3 fois par jour pendant 3 jours. Aussi mâcher de temps en temps un
                              morceau d’ail dans la bouche.""",
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
