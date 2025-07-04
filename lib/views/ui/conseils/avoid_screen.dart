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

class DiseasePreventionScreen extends StatefulWidget {
  const DiseasePreventionScreen({super.key});

  @override
  State<DiseasePreventionScreen> createState() => _DiseasePreventionScreenState();
}

class _DiseasePreventionScreenState extends State<DiseasePreventionScreen>
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
                    MyBreadcrumbItem(name: "Éviter les maladies", active: true),
                  ],
                  backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Éviter les maladies",
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDiseaseTip(1, "Prévention des Maladies", "Apprenez à adopter des habitudes saines pour réduire le risque de maladies."),
                            _buildDiseaseTip(2, "Prévenir la Constipation", "Suivez des conseils pour éviter la constipation et maintenir un bon transit intestinal."),
                            _buildDiseaseTip(3, "Hypertension : Causes et Risques", "Informez-vous sur les causes de l'hypertension et les impacts négatifs sur la santé."),
                            _buildDiseaseTip(4, "Lutter Contre l'Insomnie", "Découvrez des solutions naturelles pour améliorer la qualité du sommeil."),
                            _buildDiseaseTip(5, "Bienfaits du Jeûne Thérapeutique", "Le jeûne thérapeutique aide à traiter plusieurs maladies comme la goutte, le rhumatisme et l'hypertension, en permettant à l'organisme de puiser dans ses réserves."),
                            _buildDiseaseTip(6, "Effets Nocifs de l'Alcool", "L'alcool affaiblit l'organisme, déshydrate les muqueuses et entrave leurs fonctions naturelles."),
                            _buildDiseaseTip(7, "Dangers du Tabac", "Le tabac provoque des déséquilibres du système nerveux et affecte gravement la santé."),
                            _buildDiseaseTip(8, "Risques de Fumer", "Arrêter de fumer aide à préserver votre santé et à réduire de nombreux risques."),
                            _buildDiseaseTip(9, "Importance de l'Activité Physique", "Pratiquez régulièrement une activité physique pour maintenir un corps sain et fort."),
                            _buildDiseaseTip(10, "Modération du Café", "Une consommation excessive de café peut nuire au système nerveux, provoquer des palpitations et des troubles du sommeil."),
                        ]

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

  
  Widget _buildDiseaseTip(int number, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MyText.titleSmall(
              "$number - ",
              fontWeight: 600,
            ),
            MySpacing.width(8),
            MyText.titleSmall(
              title,
              fontWeight: 600,
              fontSize: 12,
              color: contentTheme.primary,
            ),
          ],
        ),
        if (description.isNotEmpty) ...[
          MySpacing.height(8),
          MyText.bodySmall(
            description,
          
            muted: true,
            textAlign: TextAlign.justify,
          ),
        ],
        MySpacing.height(12),
      ],
    );
  }
}
