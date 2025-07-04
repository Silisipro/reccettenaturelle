import 'package:flutter/material.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_container.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';

class MauxDeReinsScreen extends StatefulWidget {
  const MauxDeReinsScreen({super.key});

  @override
  State<MauxDeReinsScreen> createState() => _MauxDeReinsScreenState();
}

class _MauxDeReinsScreenState extends State<MauxDeReinsScreen> with UIMixin {
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
                    MyBreadcrumbItem(name: 'MAUX DE REINS', active: true),
                  ],
                  backRoute: '/remedes',
                ),
                MyText.titleMedium(
                  "MAUX DE REINS",
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
                                  "Oignon + miel",
                                  fontWeight: 600,
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              """
                              Faire bouillir pendant 10 minutes, 3 gros oignons découpés dans 1 litre et demi
                              d’eau, puis ajouter 2 cuillères à café de miel pur dans un verre et boire loin
                              des repas, matin, midi, soir.
                              """,
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
                                  "Mille pattes, beurre de karité",
                                  fontWeight: 600,
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              """
                              Brûler une mille-pattes puis l’écraser, mélanger la poudre obtenue avec du
                              beurre de karité et se masser avec du haut vers le bas.
                              """,
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
                                  "Poivre, racines du papayer mâle",
                                  fontWeight: 600,
                                ),
                              ],
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              """
                              Piler les racines du papayer mâle (ne produit jamais de fruits) avec un peu de
                              poivre, ajouter 1 verre d’eau et faire le lavement (purger) le soir au coucher
                              (1 semaine de traitement).
                              """,
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