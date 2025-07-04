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

class GrippeScreen extends StatefulWidget {
  const GrippeScreen({super.key});

  @override
  State<GrippeScreen> createState() => _GrippeScreenState();
}

class _GrippeScreenState extends State<GrippeScreen>
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
                    MyBreadcrumbItem(name: 'GRIPPE', active: true),
                  ],
                   backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "GRIPPE",
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
                                  "ail",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """ Pour prévenir la grippe, faire bouillir une tasse d’eau et ajouter le
                                mélange suivant 2 gousses d’ail et 1 cuillerée à soupe de pollen de fleur.
                                Enlever du feu, couvrir et laisser infuser pendant 3 min. Boire 1 tasse matin
                                et soir.""",
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
                                  "Oignon",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Faire bouillir durant 10min, 2 oignons dans 1 litre d’eau et boire 3 verres 3
                              fois par jour, loin des repas (pendant les soins, évitez de manger un repas
                              lourd)""",
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
