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

class ActuceScreen extends StatefulWidget {
  const ActuceScreen({super.key});

  @override
  State<ActuceScreen> createState() => _ActuceScreenState();
}

class _ActuceScreenState extends State<ActuceScreen>
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
                    MyBreadcrumbItem(name: 'ASTUCE PRATIQUE', active: true),
                  ],
                   backRoute: '/precautions',
                ),
                MyText.titleMedium(
                  "ASTUCE PRATIQUE",
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText.titleSmall(
                              "La vieillesse :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Pour se rajeunir, boire constamment l’eau citronnée (1 litre matin). Consommer beaucoup de crudités le soir avant le repas.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "L’insomnie :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Au coucher, sucer lentement ½ de miel pur.",
                             
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "Le sommeil :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Il est absolument nécessaire de faire la sieste après le repas de midi et dormir tôt le soir, de préférence à 21 heures. Car le cerveau et son composant, le système nerveux perdent plus de 12 milliards de cellules par jour. Les causes sont nombreuses : les pensées, les problèmes de la vie sociale, la nervosité, le manque de sommeil.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "La santé des yeux :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Ne jamais lire près d’une lumière à 10cm. Eviter également de lire sous une lumière à éclairage faible, de peur que la rétine des yeux s’affaiblisse et que vous ayez de la peine pour mieux voir",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "Intoxication :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Mélanger du yaourt ou du lait non sucré plus trois cuillères de nescafé, et boire le tout ou le sucer.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "L’urine :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Ne forcer pas lorsque vous en avez l’envie, de peur d’endommager votre prostate qui s’usera au fil de l’âge.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "L’obésité :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Pendant 3 jours, à chacun des 3 repas, manger 2 côtelettes d’agneau sur gril et 2 grosses tranches d’ananas (rien d’autres).",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "La joie :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Un cœur joyeux est un bon remède pour la santé de l’être. C’est pourquoi, réjouissez-vous, soyez toujours joyeux. Aussi entourez-vous de bonnes personnes, des gens qui vous motivent, des gens qui vous donnent la force d’aller de l’avant.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "Moustique :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Pour chasser les moustiques de votre maison le soir, découpez en petit morceaux 3 gros oignons, puis éparpillez-les dans les 4 coins de la chambre et du lit. Aussitôt, fermez la chambre durant 05 à 20 minutes et vous verrez, une astuce très simple pour éviter le paludisme.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                             MyText.titleSmall(
                              "Le sport :",
                              fontWeight: 600,
                              color: contentTheme.primary,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Accorder une place assez importante au sport, pour le maintien de la forme. Organisez-vous-même si c’est une par semaine. Un conseil, sucer 4 cuillères à soupe de miel pur 1heure avant de faire le sport.",
                              
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(8),
                            
                          
                            
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
