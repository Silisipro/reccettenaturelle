import 'package:flutter/material.dart';
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

class AlimentationScreen extends StatefulWidget {
  const AlimentationScreen({super.key});

  @override
  State<AlimentationScreen> createState() => _AlimentationScreenState();
}

class _AlimentationScreenState extends State<AlimentationScreen>
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
                    MyBreadcrumbItem(name: 'CONTROLER SON ALIMENTATION', active: true),
                  ],
                   backRoute: '/precautions',
                ),
                MyText.titleMedium(
                  "CONTROLER SON ALIMENTATION",
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
                              "La bonne alimentation",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "L’aliment, c’est le premier médicament de l’homme. La santé de l’organisme dépend d’une bonne alimentation. Ce qu’il faut, ce n’est pas la quantité du repas, mais plutôt, un aliment de qualité comportant les substances diverses indispensable pour son bien-être. En effet, comme on le dit souvent l’on ne vit pas pour manger mais manger pour vivre. Et si telle est la condition de l’homme à l’égard du manger et du boire, pourquoi donc ne pas s’en informer davantage.",
                              
                            
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                             MyText.bodyMedium(
                              "Le repas journalier",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            Row(
                              children: [
                                MyText.titleSmall(
                                  "1 -",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                 Expanded( 
                                    child: MyText.bodySmall(
                                  "Manger suffisamment à midi et consommer peu au repas du soir. Faire juste après chaque repas, 5 minutes de marche pour faciliter la digestion",                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                              ],
                            ),
                            MySpacing.height(12),
                            Row(
                                children: [
                                  MyText.titleSmall(
                                    "2 -",
                                    fontWeight: 600,
                                  ),
                                  MySpacing.width(8),
                                  Expanded( 
                                    child: MyText.bodySmall(
                                      "Eviter de manger à 21 heures, l’estomac réclamant le repos, fonctionne difficilement à de telles heures. L’idéal pour le repas du soir, c’est de manger de 18h à 19h 00",
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "NB : Concernant le dessert, toute crudité se prend avant et non après le repas. Il convient avant de manger, de prendre, des fruits d’une même espèce et non à la foi, une papaye et un avocat le même jour à table.",
                                  maxLines: 4,
                                  
                                  muted: true,
                                  textAlign: TextAlign.justify,
                                ),

                            MySpacing.height(12),
                             MyText.bodyMedium(
                              "La mauvaise alimentation",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),

                             MySpacing.height(12),
                             MyText.bodySmall(
                                  "Les excès de table appelés gloutonnerie ou gourmandise sont une cause réelle de maladie. Cette cause ayant double nature peut être appelée toxémie et affaiblissement. Toute maladie presque sans exception peut être rapportée à cette cause. En effet, toute alimentation crée et pourvue par Dieu aux normes est bonne, mais c’est l’excès dans l’usage qui cause des troubles à l’appareil digestif et tient pour victime l’organisme qui subit les conséquences. Nous devons savoir que 90% de nos maladies sont causées par l’alimentation.",
                                  maxLines: 4,
                                  
                                  muted: true,
                                  textAlign: TextAlign.justify,
                                ),
                             MySpacing.height(12),
                             MyText.bodyMedium(
                              "Les dangers de la viande",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "Manger de la viande n’est pas mauvaise, mais l’abus dans sa consommation trouble l’organisme et l’expose à des maux tels que ; (Les vers, les vertiges, le rhumatisme, la constipation, l’hémorroïde, la nervosité, maux de rein…)",
                                  maxLines: 4,
                                  
                                  muted: true,
                                  textAlign: TextAlign.justify,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "NB : Evitez de consommer de la viande mélangée au poisson dans un même repas.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                                MySpacing.height(12),
                             MyText.bodyMedium(
                              "Protéine et santé",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),

                            MyText.bodySmall(
                                  "Certaines familles, pour affirmer leur aisance sociale, consommes beaucoup de protéines, sauce très riche en protéine (viandes, crabes, poissons, escargots…) Mais attention, de telles pratiques entrainent des accidents nutritionnels :",
                                  maxLines: 4,
                                  
                                  muted: true,
                                  textAlign: TextAlign.justify,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "- Allongement de l’intestin",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),

                                 MyText.bodySmall(
                                  "- Fatigue du foie",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),

                                MyText.bodySmall(
                                  "La viande blanche : est une viande maigre, facile à digérer. Ce sont : le veau, le poulet, le foie de lapin, et la cervelle. La viande demie grasse : très difficile, ce sont : l’oie,",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),

                                 MyText.bodySmall(
                                  "NB : Soulignons que la viande de porc est la plus indigeste. Par conséquent, l’on devrait la consommer avec assez de précaution selon le besoin de l’organisme, ou même la supprimer totalement de son alimentation.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),
                             MyText.bodyMedium(
                              "Les dangers du sucre",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                                  "La nature nous donne les gammes de sucres rangées parmi les glucides.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                             MyText.bodySmall(
                                  "a- Les sucres simples : fruits et miel",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "b- Les sucres composés : condensation de 2 sucres simples : le lait et la canne à sucre.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "c- Les amidons : condensation de sucre composé : céréales, tubercules et autres.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "Seuls les sucres simples sont directement assimilés par l’organisme et utile pour l’alimentation du muscle et de l’effort. Les sucres doivent d’abord être transformés par l’organisme avant d’être utilisé par les cellules. Le sucre congestionne le foie, Sumène le pancréas et irrite la muqueuse gastrique, excite le système nerveux, favorise l’agitation, l’insomnie, l’éréthisme cardiaque, décalcifie les collets dentaires et occasionne l’installation des caries dentaires.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "Nb : Eviter de mélanger le sucre au lait sucré pour boire le café, c’est dangereux.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
                                ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                                  "Evitez de l’eau glacée après le café.",
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  
                                  muted: true,
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
