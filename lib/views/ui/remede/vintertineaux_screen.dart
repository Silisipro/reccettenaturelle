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

class VersIntestinauxScreen extends StatefulWidget {
  const VersIntestinauxScreen({super.key});

  @override
  State<VersIntestinauxScreen> createState() => _VersIntestinauxScreenState();
}

class _VersIntestinauxScreenState extends State<VersIntestinauxScreen>
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
                    MyBreadcrumbItem(name: 'VERS INTESTINAUX', active: true),
                  ],
                   backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "VERS INTESTINAUX",
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
                             MyText.bodySmall(
                              """On attrape les vers en mangeant des fruits et légumes non lavés, par le dépôt
                              des mouches sur les repas, en marchant pieds nus un peu partout, dans la
                              boue et les marigots, en mangeant sans se laver les mains, dans les wc
                              malpropres et par les besoins de terre.""",
                              overflow: TextOverflow.ellipsis,
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),

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
                                  "Pépins de papaye + miel",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "En cas de mauvaise digestion, presser un citron mure dans ½ Verre tiède puis boire après le repas. A ne pas prendre après 18h.",
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
                                  "Ail + miel ou sucre",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Faire bouillir 3 gousses d’ail haché ou écraser en présence de sucre ou sans
                              sucre. Sinon le   mélanger au miel pur et boire cette recette une fois par jour à
                              jeun et sur 2 jours.""",
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
                                  "Citron + miel",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Ecraser 2 citrons murs en patte plus 1 verre d’eau tiède, laisser macérer 10
                                minutes, ajouter deux cuillères à soupe de miel pur, tamiser et boire le tout à
                                jeun pendant 2 jour..""",
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
