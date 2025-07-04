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

class MedicalExamsScreen extends StatefulWidget {
  const MedicalExamsScreen({super.key});

  @override
  State<MedicalExamsScreen> createState() => _MedicalExamsScreenState();
}

class _MedicalExamsScreenState extends State<MedicalExamsScreen>
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
                    MyBreadcrumbItem(name: 'Côté examens médicaux', active: true),
                  ],
                  backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Côté examens médicaux",
                  fontSize: 12,
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
                            _buildMedicalExamTip(1, "Le Dépistage du Taux de PSA",
                                "Le dépistage du taux de PSA (antigène prostatique spécifique) est un examen recommandé pour les hommes, en particulier à partir de 50 ans ou en présence de facteurs de risque. Ce test sanguin permet de détecter une élévation du PSA, qui peut être un signe précoce de cancer de la prostate. Un dépistage régulier aide à diagnostiquer le cancer à un stade précoce, offrant ainsi plus d'options de traitement et de meilleures perspectives de guérison. Prendre soin de sa santé, c'est aussi surveiller son taux de PSA pour prévenir efficacement le cancer de la prostate."),
                            _buildMedicalExamTip(2, "Le Dépistage du Cancer du Sein", "Le dépistage du cancer du sein est fortement recommandé pour toutes les femmes, en particulier celles de plus de 40 ans ou présentant des facteurs de risque. Ce dépistage, qui comprend souvent une mammographie, permet de détecter les signes de cancer à un stade précoce, augmentant ainsi les chances de guérison et de traitements moins invasifs. Prendre le temps de se faire dépister régulièrement est un acte de prévention essentiel pour préserver sa santé et bien-être."),
                            _buildMedicalExamTip(3, "L'Importance du Contrôle Régulier de la Tension Artérielle", "Surveiller sa tension artérielle de manière régulière est essentiel pour maintenir une bonne santé cardiovasculaire. Un contrôle ponctuel de la tension permet de détecter d'éventuelles fluctuations, d'anticiper les risques d’hypertension, et de prévenir les complications comme les accidents vasculaires ou les crises cardiaques. Adopter cette habitude est un moyen simple et efficace pour veiller sur son cœur et mieux gérer son bien-être au quotidien."),
                            _buildMedicalExamTip(4, "L'Importance du Dépistage du VIH/SIDA", "Faire le dépistage du VIH/SIDA est un geste essentiel pour préserver sa santé et celle des autres. Le dépistage permet de détecter le virus à un stade précoce, offrant ainsi la possibilité de suivre un traitement efficace qui peut améliorer la qualité de vie et réduire le risque de transmission. Accessible, rapide et confidentiel, le dépistage est une étape clé dans la lutte contre le VIH/SIDA. N’attendez pas, prenez soin de vous et des autres en optant pour un dépistage régulier."),
                            _buildMedicalExamTip(5, "Groupe sanguin", "Connaitre son groupe sanguin pour en tenir compte dans les habitudes de vie quotidienne"),
                            _buildMedicalExamTip(6, "N’attendez pas de tomber malade pour prendre soins de vous",
                                "Faites facilement recours aux remèdes naturels."),
                            _buildMedicalExamTip(7, "Protégez-vous avant tout rapport sexuel",
                                "Pour éviter les infections sexuellement transmissibles, vous avez aujourd’hui une panoplie des méthodes de contraception."),
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

  Widget _buildMedicalExamTip(int number, String title, String description) {
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
