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

class HealthyLifeScreen extends StatefulWidget {
  const HealthyLifeScreen({super.key});

  @override
  State<HealthyLifeScreen> createState() => _HealthyLifeScreenState();
}

class _HealthyLifeScreenState extends State<HealthyLifeScreen>
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
                    MyBreadcrumbItem(name: 'Côté vie saine', active: true),
                  ],
                  backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Côté vie saine",
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
                            _buildLifeTip(1, "Soyez toujours enclin à l’empathie et au pardon",
                                "L’un des meilleurs antidotes au stress est la sensation de pardon et d’empathie. Apprendre à pardonner peut aider à surmonter la dépression et le stress. La gratitude et la générosité sont également deux puissants moteurs de changement pour le meilleur."),
                            _buildLifeTip(2, "Aimez votre travail, il vous le rendra",
                                "Trouvez un travail qui vous plait, et faites-le avec cœur. Les personnes qui sont en accord avec leur vie privée et leur vie professionnelle vivent plus vieux que celles qui sont en guerre contre le monde entier. L’un des travaux les plus gratifiants est d’être au service des autres."),
                            _buildLifeTip(3, "Dormez dans le noir",
                                "Trop de lumière la nuit gène la production de mélatonine, cette hormone responsable de la régulation de notre cycle veille/sommeil. Travailler la nuit ou dormir dans une pièce trop éclairée sont aussi liés à une augmentation des risques de cancer."),
                            _buildLifeTip(4, "Tenez-vous informé",
                                "Faites travailler votre esprit, restez curieux et fixez-vous des objectifs, même physiques. Non seulement vivre une vie routinière « ramollit » nos sens, mais cela peut nous rendre malade."),
                            _buildLifeTip(5, "Trouvez votre tribu",
                                "Plusieurs études ont montré que les racines émotionnelles du stress sont la sensation de solitude et d’impuissance. Pour les surmonter, la famille, une communauté bienveillante, la spiritualité sont d’une grande aide. Si vous trouvez un groupe d’amis qui vous entoure cette année, vous diviserez vos risques de mourir par deux. Se sentir entouré réduit également les risques de maladies cardiaques et d’attaques cérébrales. Si vous n’avez pas d’amis proches, inscrivez-vous dans des associations de loisirs. Il est important de rencontrer du monde et de partager de bons moments ensemble."),
                            _buildLifeTip(6, "Marchez",
                                "Le fait de marcher à un rythme modéré, à environ 5 km/h, procure les mêmes bénéfices que la course sur les maladies dégénératives et cardiovasculaires, et ce, particulièrement si vous êtes une femme. La marche sportive permet même de brûler plus de calories que lorsqu’on court à une vitesse similaire, sans pour autant risquer de se faire mal aux articulations."),
                            _buildLifeTip(7, "Veillez à bien respirer par votre nez",
                                "Le fait de mal respirer est une source d’asthme, de troubles de l’attention (déficit ou hyperactivité). Si vous ne respirez pas correctement, essayez d’apprendre la technique respiratoire profonde tout en contrôlant votre corps."),
                            _buildLifeTip(8, "Dormez 7 heures par nuit",
                                "Ces 7 heures de sommeil pourraient bien réduire de manière significative vos risques de cancer, selon des recherches très récentes. Un manque de sommeil affecte notre production d’insuline, ce qui provoque une prise de poids et peut être à l’origine de diabète. Sept heures semblent être le juste équilibre : neuf heures, par contre, c’est trop. Les femmes qui dorment trop ont de plus grands risques d’attaques cérébrales."),
                            _buildLifeTip(9, "Ne vous cachez pas des rayons du soleil",
                                "Le soleil est notre meilleure source de vitamine D. Cette vitamine nous protège contre de nombreuses maladies. La plupart d’entre nous en manquent. Il faut donc choisir de s’exposer chaque jour raisonnablement en étant responsable."),
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

  Widget _buildLifeTip(int number, String title, String description) {
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
        MySpacing.height(8),
        MyText.bodySmall(
          description,
        
          muted: true,
          textAlign: TextAlign.justify,
        ),
        MySpacing.height(12),
      ],
    );
  }
}
