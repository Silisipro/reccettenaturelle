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

class AlimentScreen extends StatefulWidget {
  const AlimentScreen({super.key});

  @override
  State<AlimentScreen> createState() => _AlimentScreenState();
}

class _AlimentScreenState extends State<AlimentScreen>
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
                    MyBreadcrumbItem(name: 'A'),
                    MyBreadcrumbItem(name: 'Côté alimentation', active: true),
                  ],
                   backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Côté alimentation",
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
                          Row(
                              children: [
                                MyText.titleSmall(
                                  "1 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Cuisinez des produits frais",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "Eviter au maximum les aliments transformés, les conserves, produits fris, déchargés de substance chimique, raffinés ou quoi peuvent avoir été altérés de n’importe quelle façon que ce soit..",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "2 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Mangez des aliments bio, locaux",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "Les pesticides ont été impliqués dans l’apparition de nombreuses maladies, comme la stérilité, le cancer, les malformations à la naissance, les irritations cutanées, l’impuissance.",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "3 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Mangez un « super petit-déjeuner »",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "Ceux qui privilégient un bon apport calorique le matin mangent généralement moins aux autres repas, ce qui contribue à se préserver de l’obésité. Qui plus est, sauter le petit déjeuner accroît vos risques d’attaque cardiaque, d’hypertension et de diabète.",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "4 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Consommation en graisses",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "Ne limitez pas votre consommation en graisses saturées et ne consommez jamais de produits allégés en matière grasse ou comportant des matières grasses hydrogénées",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "5 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Ne comptez pas vos calories",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "On peut trouver dans notre eau près de 350 substances chimiques toxiques, des micro-organismes porteurs de maladies, du chlore, du fluor pour certains pays, et les résidus de près de 100 médicaments.",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "6 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Ne buvez pas l’eau du robinet",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "On peut trouver dans notre eau près de 350 substances chimiques toxiques, des micro-organismes porteurs de maladies, du chlore, du fluor pour certains pays, et les résidus de près de 100 médicaments.",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "7 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Équilibrez votre ration d’oméga 3(noix...) et d’oméga 6(œuf...) ",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "Evitez les déséquilibres entre les omégas 3 et les omégas 6, ces acides gras essentiels qui interviennent dans les principales fonctions de l’organisme. Une déficience en de tels acides gras peut conduire à de nombreuses maladies dégénératives.",
                            
                              muted: true,
                              textAlign: TextAlign.justify,
                            ),
                             MySpacing.height(12),
                             Row(
                              children: [
                                MyText.titleSmall(
                                  "8 - ",
                                  fontWeight: 600,
                                ),
                                MySpacing.width(8),
                                MyText.titleSmall(
                                  "Mangez du poisson avec parcimonie",
                                 fontWeight: 600,
                                 fontSize: 12,
                                  color: contentTheme.primary,
                                
                                ),
                              ],
                            ),
                             MySpacing.height(8),
                             MyText.bodySmall(
                              "Les poissons sauvages sont pour beaucoup contaminés par les effluents industriels et les métaux lourds comme le mercure.",
                            
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
