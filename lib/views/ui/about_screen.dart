import 'package:flutter/material.dart';
import 'package:reccettenaturelle/helpers/utils/my_shadow.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_card.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
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
                MyText.titleMedium(
                  "A propos",
                  fontSize: 18,
                  fontWeight: 600,
                ),
                MyBreadcrumb(
                  children: [
                    MyBreadcrumbItem(name: ''),
                    MyBreadcrumbItem(name: 'A propos', active: true),
                  ],
                  backRoute: '/',
                ),
              ],
            ),
          ),
          MySpacing.height(flexSpacing),
          Padding(
            padding: MySpacing.x(flexSpacing / 2),
            child: MyFlex(
              children: [
                MyFlexItem(
                  sizes: "lg-6",
                  child: MyCard(
                    shadow: MyShadow(elevation: 0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Row(
                            children: [
                              MyText.titleSmall(
                                "Developpée par :",
                                fontWeight: 600,
                                  fontSize: 12,
                                color: contentTheme.primary,
                              ),
                              MySpacing.width(8),
                              MyText.bodySmall(
                                "HONFO Bodourin Sylvestre",
                                maxLines: 4,
                                fontWeight: 600,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              
                              ),
                            ],
                            ),
                            MySpacing.height(15),
                            Row(
                            children: [
                              MyText.titleSmall(
                                "Contact :",
                                fontWeight: 600,
                                fontSize: 12,
                                color: contentTheme.primary,
                              ),
                              MySpacing.width(8),
                              MyText.bodySmall(
                                "(+229) 67 92 23 79",
                                maxLines: 4,
                                fontWeight: 600,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              
                              ),
                            ],
                            ),
                             MySpacing.height(15),
                            Row(
                            children: [
                              MyText.titleSmall(
                                "Email :",
                                fontWeight: 600,
                                fontSize: 12,
                                color: contentTheme.primary,
                              ),
                              MySpacing.width(8),
                              MyText.bodySmall(
                                "sylvesthonfo4@gmail.com",
                                maxLines: 4,
                                fontWeight: 600,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              
                              ),
                            ],
                            ),
                             MySpacing.height(15),
                            Row(
                            children: [
                              MyText.titleSmall(
                                "Adresse :",
                                fontWeight: 600,
                                fontSize: 12,
                                color: contentTheme.primary,
                              ),
                              MySpacing.width(8),
                              MyText.bodySmall(
                                "Cotonou/Bénin",
                                maxLines: 4,
                                fontWeight: 600,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              
                              ),
                            ],
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

