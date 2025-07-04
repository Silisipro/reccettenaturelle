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

class DigestionScreen extends StatefulWidget {
  const DigestionScreen({super.key});

  @override
  State<DigestionScreen> createState() => _DigestionScreenState();
}

class _DigestionScreenState extends State<DigestionScreen>
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
                    MyBreadcrumbItem(name: 'Côté digestion', active: true),
                  ],
                   backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Côté digestion",
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
                            _buildDigestionTip(1, "Diminuez votre Consommation ou évitez de manger du blé",
                                "Beaucoup de personnes ont du mal à digérer cette nourriture"),
                            _buildDigestionTip(2, "Bannissez les produits laitiers standardisés et allégés",
                                "Ceux qui consomment beaucoup de produits laitiers ont des taux plus importants dans leur sang du facteur 1 de croissance de type insuline, dont la présence est souvent liée à de nombreux types de cancers."),
                            _buildDigestionTip(3, "Chercher toutes les allergies ou intolérance alimentaire",
                                "En plus du blé, il y a sept autres aliments qui causent de nombreuses allergies comme le maïs, le soja, le sucre, les solanacées (pommes de terre, tomates, aubergines, poivrons et piments), la levure, les œufs, et les produits laitiers."),
                            _buildDigestionTip(4, "Manger des végétaux pour avoir du calcium",
                                "La prise quotidienne d’une portion de légume vert à feuille suffit à diminuer par deux le risque de fracture du col du fémur."),
                            _buildDigestionTip(5, "Vérifiez l’acidité votre estomac",
                                "Si vous souffrez de reflux gastroœsophagien ou de mauvaise digestion, testez l’acidité de votre estomac (demandez un test d’acidité stomacale à votre médecin)."),
                            _buildDigestionTip(6, "Déterminez si votre intestin est poreux",
                                "Si les parois de votre intestin grêle sont trop perméables, elles risquent alors de laisser passer des grosses molécules partiellement digérées. Cela va alors réduire l’assimilation des nutriments et peut également conduire à des symptômes allergiques. Prenez soin de votre intestin avec des probiotiques."),
                            _buildDigestionTip(7, "Abandonnez le sucre",
                                "Il cause des caries, du diabète, et il suffit d’en consommer 10 g (brun ou blanc) pour faire chuter temporairement les cellules responsables de l’immunité parmi la population de globules blancs La consommation du sucre est également liée aux maladies inflammatoires intestinales, aux calculs biliaires, aux calculs rénaux, à l’hypertension, aux cancers de l’estomac et de l’endomètre, et même à la myopie. Le sucre est juste mauvais pour vous, arrêtez-le."),
                            _buildDigestionTip(8, "Faites régulièrement des détoxifications",
                                "Virtuellement, nous côtoyons régulièrement environ 100 000 substances chimiques potentiellement dangereuses, présentes dans notre environnement, et susceptibles de se retrouver dans notre sang. Nous savons également maintenant que certaines s’accumulent dans notre organisme, et plus particulièrement dans notre graisse, causant toutes sortes de problèmes de santé. Pour les éliminer, allez régulièrement au sauna, faites de l’exercice, prenez des fibres en complément alimentaire ainsi que de la chlorella, de la spiruline, et de la coriandre. Tous ces éléments contribuent à éliminer les métaux lourds de notre corps."),
                            _buildDigestionTip(9, "Buvez modérément de l’alcool",
                                "Boire un verre d’alcool de temps en temps plutôt que boire beaucoup ou ne pas boire du tout semble être la meilleure façon de consommer des boissons alcoolisées. C’est par une consommation modérée et ponctuelle que les maladies cardiaques sont le mieux évitées."),
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

  Widget _buildDigestionTip(int number, String title, String description) {
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
