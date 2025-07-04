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

class HomeEnvironmentScreen extends StatefulWidget {
  const HomeEnvironmentScreen({super.key});

  @override
  State<HomeEnvironmentScreen> createState() => _HomeEnvironmentScreenState();
}

class _HomeEnvironmentScreenState extends State<HomeEnvironmentScreen>
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
                    MyBreadcrumbItem(name: 'Côté maison', active: true),
                  ],
                  backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Côté maison",
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
                            _buildHomeTip(1, "Réduisez votre exposition aux ondes électromagnétiques",
                                "Pensez à mettre votre écran de télévision ou d’ordinateur à bonne distance. Veillez à ce que les lits et les chaises soient à plus de 2 mètres des sources d’ondes électromagnétiques comme les compteurs électriques ou les télévisions, et éloignez les appareils électriques à au moins 60 cm de votre tête, s’ils sont sur votre table de nuit. Pensez à couper les veilles des appareils électriques lorsque vous dormez, et aussi à débrancher tous les appareils électriques de votre chambre (télévision, téléphones, ordinateurs)."),
                            _buildHomeTip(2, "Vérifiez que tout le monde utilise correctement son ordinateur",
                                "Si vous êtes du sexe masculin, ne posez pas sur vos genoux une tablette ou un ordinateur connecté par Wi-Fi. Cela pourrait en effet altérer votre fertilité. Evitez autant que possible tous les systèmes sans fil, et connectez-vous à internet en utilisant le réseau électrique."),
                            _buildHomeTip(3, "Choisissez des cosmétiques plus sains",
                                "Il a été prouvé que les cosmétiques contenants du cadmium jouaient un rôle non négligeable dans le développement du cancer de sein."),
                            _buildHomeTip(4, "Limitez l’usage du téléphone portable",
                                "Plus de 200 études montrent du doigt les dangers pour la santé que représentent les téléphones portables : tumeurs au cerveau, stérilité."),
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

  Widget _buildHomeTip(int number, String title, String description) {
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
