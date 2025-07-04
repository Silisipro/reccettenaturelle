import 'package:flutter/material.dart';
import 'package:reccettenaturelle/helpers/utils/my_shadow.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
//import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
//import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_card.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
//import 'package:reccettenaturelle/helpers/theme/theme_customizer.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';
import 'package:lucide_icons/lucide_icons.dart';


class AcceuilScreen extends StatefulWidget {
  const AcceuilScreen({super.key});

  @override
  State<AcceuilScreen> createState() => _AcceuilScreenState();
}

class _AcceuilScreenState extends State<AcceuilScreen> with SingleTickerProviderStateMixin, UIMixin {

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
                MyText.titleMedium(
                  "Menu",
                  fontSize: 18,
                  fontWeight: 600,
                ),
                // Breadcrumb or any other navigation item if needed
              ],
            ),
          ),
          MySpacing.height(flexSpacing),
          Padding(
            padding: MySpacing.x(flexSpacing / 2),
            child: MyFlex(
              children: [
                buildCategoryItem(
                  context,
                  LucideIcons.alertTriangle,
                  "Avertissement",
                  "",
                  '/avertissement',
                ),
                buildCategoryItem(
                  context,
                  LucideIcons.wheat,
                  "Remedes naturels",
                  "Plus de 100 recettes",
                  '/remedes',
                ),
                buildCategoryItem(
                  context,
                  LucideIcons.coffee,
                  "Thes médicinaux",
                  "5",
                  '/thes',
                ),
                buildCategoryItem(
                  context,
                  LucideIcons.shieldCheck,
                  "Précautions",
                  "25",
                  '/precautions',
                ),
                buildCategoryItem(
                  context,
                  LucideIcons.sprout,
                  "Les vertus",
                  "50",
                  '/vertus',
                ),
                buildCategoryItem(
                  context,
                  LucideIcons.brain,
                  "Conseils",
                  "100 conseils",
                  '/conseils',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  MyFlexItem buildCategoryItem(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    String route, {
    bool isHighlighted = false,
  }) {
    return MyFlexItem(
      sizes: "lg-3",
      child: MyCard(
        shadow: MyShadow(elevation: 1),
        color: isHighlighted ? Colors.amber : Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Padding(
            padding: MySpacing.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: isHighlighted ? Colors.white : Colors.black,
                ),
                const SizedBox(height: 16),
                MyText(
                  title,
                  fontSize: 16,
                  fontWeight: 600,
                  color: isHighlighted ? Colors.white : Colors.black,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                MyText(
                  subtitle,
                  fontSize: 14,
                  color: isHighlighted ? Colors.white70 : Colors.grey,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
