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

class SupplementsScreen extends StatefulWidget {
  const SupplementsScreen({super.key});

  @override
  State<SupplementsScreen> createState() => _SupplementsScreenState();
}

class _SupplementsScreenState extends State<SupplementsScreen>
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
                    MyBreadcrumbItem(name: 'Côté compléments alimentaires', active: true),
                  ],
                   backRoute: '/conseils',
                ),
                MyText.titleMedium(
                  "Côté compléments alimentaires",
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
                            _buildSupplementTip(1, "Veuillez à votre apport en vitamine D",
                                "Un tiers environ de la population serait carencé en vitamine D. Cette vitamine est très importante car elle offre une protection naturelle contre certains cancers, et les maladies cardiaques. Elle booste également le système immunitaire et le fonctionnement vasculaire."),
                            _buildSupplementTip(2, "Privilégiez les antioxydants",
                                "Vous pouvez consommer quotidiennement des aliments riches en antioxydants naturels, comme la fraise, le thym, le cacao…"),
                            _buildSupplementTip(3, "Ne négligez ni le magnésium ni le chrome",
                                "On devient de plus en plus carencé en magnésium (légumes vert, céréales, fruits oléagineux) et en chrome (brocolis, haricots vert, pommes de terre) au fur et à mesure qu’on avance en âge. Pourtant, ces deux minéraux sont indispensables au bon fonctionnement du cœur. Le magnésium est également indispensable pour la bonne santé des os et est beaucoup mieux assimilé que le calcium."),
                            _buildSupplementTip(4, "Prenez des probiotiques",
                                "Pour prendre soin de vos intestins, faites régulièrement des cures de probiotiques de bonnes qualité."),
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

  Widget _buildSupplementTip(int number, String title, String description) {
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
