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
                              "Bienfait de la Betterave",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                             MyText.bodySmall(
                              "Elle fait mincir – est purifiant – soigne l’anémie – améliore la digestion – lutte contre le cancer – prévient l’inflammation – évite la rétention d’eau – diminue le vieillissement – élimine les radicaux libres – réduit les problèmes cardiaques.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait de la carotte",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Elle réduit l’anémie – stimule l’appétit – améliore l’humeur – renforce les cheveux – aide les convalescents – Elle diminue le cholestérol – elle est digeste et diurétique – lutte contre la constipation – elle soulage les problèmes respiratoires – améliore la qualité du lait maternel.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait de l’oignon",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Il régule la tension – Améliore la respiration – favorise le transit- est anticancer - stimule la libido – combat l’anémie – à un pouvoir antioxydant – aiderait en cas de diabète – aide à réguler le cholestérol – soulage en cas d’infection urinaire.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait du brocoli",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Il protège la peau – protège le cœur – réduit le cholestérol – un puissant antioxydant – améliore la santé osseuse – améliore la santé visuelle – prévient et contrôle le diabète – stimule le système immunitaire – aide à prévenir le cancer du sein – réduit l’inflammation et les allergies.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "L’ail",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Régularise la tension artérielle – à mâcher, il soigne également : l’asthmecoqueluche-toux et vers. C’est aussi un équilibrant glandulaire. C’est une diététique à ne pas négliger, une anti-infection, un anti rhumatismal, un vermifuge, un aphrodisiaque, un hypoglycémiant procurant une santé durable.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Le piment",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "C’est un vermifuge, mais l’excès de sa consommation est un danger pour le foie.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "L’arachide",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Contient beaucoup de matière grasse des éléments nutritifs et énergétique. L’arachide soigne l’asthénie, le surmenage. Consommer l’arachide grillée en sauce, comme en pâte prendre la quantité naturelle.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "La carotte",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "La carotte cicatrise les plaies de l’appareil digestif (Ulcères). Et régularise la vision floue. Elle augmente le nombre de globule rouge dans le sang, renouvelle les cellules de l’épiderme, stimule le foie, embellit la peau, soigne la bronchite, toutes sortes de constipation, de diarrhée, et les dartres. A consommer crue avant chaque repas uniquement le soir.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Le chou",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "C’est l’un des meilleures recettes soignant la bronchite, la fatigue générale, la toux, diarrhée chronique, furoncle, plaie interne, règle douloureuse, colique, gastrites, ulcère chronique, rhumatisme, hémorroïdes. Mode d’emploi : faire bouillir ¼ de chou dans une tasse d’eau pendant 10 minutes. Boire 2 fois par jour (matin et soir). Consommer aussi en crudité avant chaque repas.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Le maïs",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "C’est un restituant énergétique, un régulateur thyroïdien. L’huile de maïs pressé s’oppose à l’excès de cholestérol, prendre 2 cuillères à soupe au lever et avant le repas du soir",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Le champignon",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Contient des protides en grande quantité. C’est de la viande végétale. Stimulant organique et cérébral, il soigne : l’anémie, la fatigue générale. Il peut être consommé à la place de la viande dans un régime sans viande.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Bienfait du concombre",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Il hydrate – illumine le teint – réduit les cernes – resserre les pores – réduit la cellulite – améliore les articulations – réduit le risque de cancer – soulage les coups de soleil – contrôle la pression artérielle – favorise l’élimination des toxines.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Concombre",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Il nettoie les toxines et les déchets dans les cellules, à consommer cru.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "Laitue  (feuille de salade)",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Elle nettoie les toxines et les déchets dans le sang.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                            MySpacing.height(12),
                            MyText.bodyMedium(
                              "La tomate",
                              fontSize: 15,
                              color: contentTheme.success,
                            ),
                            MySpacing.height(12),
                            MyText.bodySmall(
                              "Elle soigne les plies du canal digestif et évite une éventuelle diarrhée. A consommer cru, sauf en vinaigre.",
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
