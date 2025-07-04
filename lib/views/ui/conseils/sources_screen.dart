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

class LifeSourceScreen extends StatefulWidget {
  const LifeSourceScreen({super.key});

  @override
  State<LifeSourceScreen> createState() => _LifeSourceScreenState();
}

class _LifeSourceScreenState extends State<LifeSourceScreen>
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
                    MyBreadcrumbItem(name: "Source de vie", active: true),
                  ],
                  backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Connaître la véritable source de vie",
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
                          _buildLifeTip(1, "Consommer beaucoup de fruits", "pomme, ananas, agrumes"),
                          _buildLifeTip(2, "Manger beaucoup de crudités", "les plats de légumes crus comme de la salade verte, chou vert ou rouge, le persil…"),
                          _buildLifeTip(3, "Connaître le secret du bonheur", "vous en êtes le seul responsable"),
                          _buildLifeTip(4, "Pour être heureux, faites appel à votre subconscient", "si vous voulez être déjà heureux, projetez dans votre tête la situation où vous êtes en joie"),
                          _buildLifeTip(5, "Devenez l'artisan de votre propre bonheur", "avec des pensées tristes, vous devenez malheureux. Votre mal-être s'accroît lorsque vous êtes plein de rancunes, avec des pensées néfastes"),
                          _buildLifeTip(6, "S’initier à la cure contre le malheur", "l’habitude du bonheur s’acquiert tout simplement en pensant positivement"),
                          _buildLifeTip(7, "Chasser la négativité", "Chasser toute négativité de votre esprit"),
                          _buildLifeTip(8, "Arrêter de se plaindre et profiter de la vie", "ceux qui gémissent et se lamentent tout le temps rendent la vie impossible à leur entourage et à eux-mêmes, l’hypertension et beaucoup d’autres maladies les guettent"),
                          _buildLifeTip(9, "User de la modération", "User de la modération en tout"),
                          _buildLifeTip(10, "Trouver le plaisir dans la vie", "Avoir beaucoup de plaisir et de joie"),
                          _buildLifeTip(11, "Cesser de se comparer aux autres", "Arrêter de vous comparer aux autres"),
                          _buildLifeTip(12, "Rire souvent", "Rire souvent à gorge déployée"),
                          _buildLifeTip(13, "Pleurer parfois", "Pleurer quelques fois à chaudes larmes"),
                          _buildLifeTip(14, "Faire l'amour régulièrement", "Faire l'amour plus souvent"),
                          _buildLifeTip(15, "Pratiquer du saut à la corde", "ça travaille tous les muscles du corps, en particulier le cœur et le diaphragme. Sa pratique quotidienne de cinq minutes réduit les risques de maladies cardiaques de 30%"),
                          _buildLifeTip(16, "Aller aux spectacles", "Aller aux spectacles, au cinéma, au concert aide à vivre mieux"),
                          _buildLifeTip(17, "Se faire des amis au travail", "Faites-vous des amis, communiquez, en vous donnant de bons conseils ; en effet, ça aide à bannir les problèmes cardiovasculaires"),
                          _buildLifeTip(18, "Se marier pour vivre longtemps", "selon certaines études, l’espérance de vie des gens vivant en couple est plus longue que celle des célibataires"),
                          _buildLifeTip(19, "Bien se marier pour une vie agréable", "choisissez minutieusement la personne avec qui passer le restant de vos jours, en fonction des paramètres que vous jugez importants. Pouvoir se comprendre est la clé du bonheur en couple"),
                          _buildLifeTip(20, "Vivre près de la nature", "Notez que les personnes vivant en zone rurale ont une espérance de vie plus élevée que les citadins, car ils vivent en marge de la pollution de la ville"),
                          _buildLifeTip(21, "Faire souvent de l’humour", "une bonne plaisanterie permet de secréter une hormone de bien-être qui illumine notre vie"),
                          _buildLifeTip(22, "Devenir mère pour augmenter l'espérance de vie", "Devenir mère augmente l'espérance de vie"),
                          _buildLifeTip(23, "Écouter les conseils des aînés", "Écouter les conseils des personnes âgées"),
                          _buildLifeTip(24, "Se laver les mains régulièrement", "Se laver les mains plusieurs fois par jour"),
                          _buildLifeTip(25, "Se laver à grande eau", "Se laver à grande eau au moins une fois par jour"),
                          _buildLifeTip(26, "Prendre des bains de mer", "Prendre souvent des bains de mer"),
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

  Widget _buildLifeTip(int number, String? title, String content) {
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
            if (title != null)
              MyText.titleSmall(
                title,
                fontWeight: 600,
                fontSize: 12,
                color: contentTheme.primary,
              ),
          ],
        ),
        if (title != null) ...[
          MySpacing.height(8),
          MyText.bodySmall(
            content,
          
            muted: true,
            textAlign: TextAlign.justify,
          ),
        ] else ...[
          MyText.titleSmall(
            content,
            fontWeight: 600,
            fontSize: 12,
            color: contentTheme.primary,
          ),
        ],
        MySpacing.height(12),
      ],
    );
  }

}
