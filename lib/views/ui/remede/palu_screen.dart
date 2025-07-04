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

class PaluScreen extends StatefulWidget {
  const PaluScreen({super.key});

  @override
  State<PaluScreen> createState() => _PaluScreenState();
}

class _PaluScreenState extends State<PaluScreen>
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
                              "A titre préventif",
                              fontSize: 15,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Pour prévenir le paludisme, il n’y a pas de recette miracle,il faut simplement éviter au maximum les piqures de moustiques, pour selon il est conseillé de dormir sous moustiquaire imprégnée. En outre cette méthode il faut prendre du jus de citron mûr chaque jour dans de l’eau sucrée au miel, très efficace et protège votre organisme.",
                             
                             muted: true,
                            maxLines: 5,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                             MyText.bodyMedium(
                              "A titre curatif",
                              fontSize: 15,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Il existe une multitude de remèdes naturels pour guérir le paludisme, nous allons donc citer quelques-uns",
                          
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             MyText.bodyMedium(
                              "Remède 1",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Faites le mélange de la feuille de cassia siemea, la feuille d’eucalyptus, le jus de citron et de la citronnelle. Bouillir le mélange, boire ¼ de litre 2 heures avant le repas.",
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             MyText.bodyMedium(
                              "Remède 2",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Faire une préparation des feuilles de Sénna occidentalis (kinkériba en fon), et boire matin et soir jusqu’à la guérison totale.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             MyText.bodyMedium(
                              "Remède 3",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Faites une préparation des feuilles de moringa et ajouter y quelques tranches de citron, boire la tisane obtenue matin et soir jusqu’à satisfaction.",
                              
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
