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

class BreathingArtScreen extends StatefulWidget {
  const BreathingArtScreen({super.key});

  @override
  State<BreathingArtScreen> createState() => _BreathingArtScreenState();
}

class _BreathingArtScreenState extends State<BreathingArtScreen>
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
                    MyBreadcrumbItem(name: "L’art de la respiration", active: true),
                  ],
                  backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "L’art de la respiration",
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
                            _buildBreathingTip(1,"Respiration", "Une bonne respiration est l’un des secrets de la longévité"),
                            _buildBreathingTip(2,"L’oxygène", "L’oxygène contenu dans l’air purifie le sang"),
                            _buildBreathingTip(3,"L'Énergie Vitale", "L'air que nous respirons contient une précieuse substance appelée 'énergie vitale' ou prana dans certaines cultures. Cette énergie, invisible mais essentielle, nourrit notre corps et notre esprit en favorisant la vitalité, l'équilibre, et le bien-être. Respirer profondément et consciemment permet d'absorber cette énergie, renforçant ainsi notre santé et notre capacité à faire face au stress quotidien."),
                            _buildBreathingTip(4,"Comment respirer", "Il faut apprendre à respirer lentement et profondément"),
                            _buildBreathingTip(5,"Les Déchets et le Gaz Carbonique", "Origines des Maladies du Sang et Respiratoires à Éviter"),
                            _buildBreathingTip(6,"l’oxygène fait de nous des centenaires", "Le sang décharge d’ions négatifs qui trainent derrière eux"),
                            _buildBreathingTip(7,"Manque d'Ions Négatifs et d'Oxygène dans le Sang", "Un niveau insuffisant d’ions négatifs et d'oxygène dans le sang peut avoir des conséquences graves pour la santé. Ces éléments jouent un rôle essentiel dans le maintien de notre bien-être. Sans eux, les cellules ne reçoivent pas l'énergie nécessaire pour fonctionner, ce qui peut conduire à un affaiblissement du système immunitaire, favoriser le stress oxydatif, et augmenter le risque de maladies chroniques."),
                            _buildBreathingTip(8,"Respiration profonde", "Adopter une bonne respiration peut vous protéger de nombreuses maladies.En effet, une respiration profonde et régulière aide à prévenir des affections variées telles que les maladies de l'appareil digestif, les troubles cardiovasculaires, les maladies du foie, et bien plus encore. Prendre soin de son souffle, c’est aussi prendre soin de son corps."),
                            _buildBreathingTip(9,"Pratiquer du yoga", "Une technique pratiquée par les centenaires en Asie"),
                            _buildBreathingTip(10,"Un repos perturbé", "Oublier vos soucis et laisser vous emporter par le sommeil"),
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

  Widget _buildBreathingTip(int number, String title, String description) {
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
