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

class ObesiteScreen extends StatefulWidget {
  const ObesiteScreen({super.key});

  @override
  State<ObesiteScreen> createState() => _ObesiteScreenState();
}

class _ObesiteScreenState extends State<ObesiteScreen>
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
                    MyBreadcrumbItem(name: 'OBESITE', active: true),
                  ],
                   backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "OBESITE",
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
                              """L’obésité c’est l’excès d’embonpoint, accumulation excessive de graisse dans
                            l’organisme, pour finir avec ce mal vous devez en premier lieu faire beaucoup
                            de sport que ce soit la course, travaillez les abdos, si vous avez du mal à le
                            faire tout seul, faites-vous suivre par un coach sportif, vous aurez un meilleur
                            résultat. Néanmoins vous pouvez faire recourir aux remèdes naturels.""",
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
                                  "papayer + citrons",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Faire bouillir pendant 10 minutes avec de l’eau les racines de
                              papayer + 7 Citrons (couper chaque citron en deux). Boire un verre à bière
                              deux fois par jour loin des repas.""",
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
                                  "fruits",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Une technique recommandée contre toute forme d’obésité sans privation de
                              nourriture, consiste à ne manger 2 ou 3 jours dans la semaine uniquement
                              que des fruits les jours de diète hydrique seront choisis selon vos préférences,
                              mais pas forcément des jours successifs""",
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
                                  "pamplemousse + citron + miel",
                                 fontWeight: 600,
                                
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              """Prendre 5 citrons et 4 Pamplemousses, bien lavé et haché, les faire bouillir
                              dans 1 litre d’eau pendant 15 min, ajouter 2 cuillerées à soupe de miel et faire
                              rebouillir pendant 5 min, filtrer et boire 1 verre, 1 heure avant les repas (1
                              mois de traitement).""",
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
