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
                    MyBreadcrumbItem(name: 'Les fruits', active: true),
                  ],
                   backRoute: '/precautions',
                ),
                MyText.titleMedium(
                  "Les fruits",
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
                            MyText.bodyMedium(
                              "Bienfait du pamplemousse",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Elle aide à faire baisser le cholestérol – aide à la perte de poids – fort pouvoir antioxydants – aide à diminuer la progression d’un cancer – elle est antifatigue- concentré d’énergie – protège les os – aide à lutter contre les maladies pulmonaires et les infections.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait de la papaye",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Stimule la digestion – grande alliée pour mincir – protège la santé visuelle – lutte contre le cholestérol – lutte contre la constipation – stimule la pousse des cheveux – renforce le système immunitaire – élimine les parasites intestinaux – maintient la peau en bonne santé – elle diminue les douleurs menstruelles.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait de la banane",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Elle lutte contre les ulcères – contrôle les nerfs – soulage l’acidité – protège le cœur – réduit le stress – améliore la vision – évite la dépression – aide à perdre du poids – elle pourrait prévenir le cancer – lutte contre la constipation.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait de l’ananas",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Il conserve une bonne santé oculaire – renforce le système immunitaire – réduit les risques d’hypertension – lutte contre les radicaux libres – améliore la santé de la peau – améliore la digestion – assainit les dents – protège le cœur – renforce les os – aide à maigrir.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                            MyText.bodySmall(
                              "Il soigne les troubles digestifs, l’obésité, l’anémie, il contribue à l’amaigrissement et à la croissance. C’est aussi un produit qui désintoxique. A consommer de préférence, le fruit mur.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "L’avocat ",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Aliment presque complet : c’est un digestif et un équilibrant nerveux. Il contribue au renouvellement de la peau, à la croissance, à la convalescence, la grossesse et guérit quelques maladies de l’appareil digestif. A consommer avant chaque repas, de préférence cru.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Coco sec",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Pour le développement de l’intelligence boire du lait de coco mélangé à une cuillère à café de miel pure, chaque matin et le soir au coucher pendant une semaine. Ensuite, consommer pour la semaine suivante, uniquement du lait non sucré.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "La banane douce",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Recommandé pour le travail de force, elle est très nutritive et très digeste.Elle guérit l’asthénie intellectuelle et contribue à la croissance. Elle se consomme mûr.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Le citron",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Le citron possède des vertus très appréciées en médecine naturelle ; il contient la vitamine A, B, C, D, B2, B3, B3, PP. Consommer de préférence le citron mur car il nettoie tout l’organisme de la fatigue quotidienne et lui apporte l’énergie. Il soigne, plaies infectées-rhume du cerveau-sinusiteangine-saignement de nez-rides-verrues-engorgement du foie-mains rugueuse-vers. Le citron mûr soigne aussi le pancréas et éloigne les reptiles.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "L’orange",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "On pourra subdiviser l’orange en quatre éléments, la peau, la fibre (comme une éponge), le jus et les pulpes. Après avoir bu le jus, de préférence manger entièrement la fibre de l’orange en laissant seulement la peau, car la fibre est riche en cellulose favorise une bonne digestion et permet d’éviter la constipation.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                          
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
