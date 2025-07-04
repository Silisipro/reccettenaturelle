import 'package:flutter/material.dart';
import 'package:reccettenaturelle/controller/conseils_controller.dart';
import 'package:reccettenaturelle/helpers/utils/ui_mixins.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb.dart';
import 'package:reccettenaturelle/helpers/widgets/my_breadcrumb_item.dart';
//import 'package:reccettenaturelle/helpers/widgets/my_button.dart';
import 'package:reccettenaturelle/helpers/widgets/my_container.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex.dart';
import 'package:reccettenaturelle/helpers/widgets/my_flex_item.dart';
import 'package:reccettenaturelle/helpers/widgets/my_spacing.dart';
import 'package:reccettenaturelle/helpers/widgets/my_text.dart';
import 'package:reccettenaturelle/helpers/widgets/responsive.dart';
import 'package:reccettenaturelle/views/layout/layout.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ConseilsScreen extends StatefulWidget {
  const ConseilsScreen({super.key});

  @override
  State<ConseilsScreen> createState() => _ConseilsScreenState();
}

class _ConseilsScreenState extends State<ConseilsScreen>
    with SingleTickerProviderStateMixin, UIMixin {
  late ConseilsController controller;

  @override
  void initState() {
    controller = Get.put(ConseilsController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: GetBuilder(
        init: controller,
        builder: (controller) {
          return Column(
            children: [
              Padding(
                padding: MySpacing.x(flexSpacing),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyBreadcrumb(
                      children: [
                        MyBreadcrumbItem(name: '100 conseils', active: true),
                      ],
                      backRoute: '/acceuil',
                    ),
                    MyText.titleMedium(
                      "CONSEILS DE GRAND-MERE POUR VIVRE LONGTEMPS",
                      fontSize: 12,
                      fontWeight: 600,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            itemCount: controller.conseils['List'].length,
                            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              mainAxisExtent: 50, 
                              maxCrossAxisExtent: 500, 
                              childAspectRatio: 0.6,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                            ),
                            itemBuilder: (context, index) {
                            
                              return GestureDetector(
                              onTap: () {
                                    final route = controller.conseils['List'][index]['link'];
                                    Get.toNamed(route);
                                  },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: MyContainer(
                                    paddingAll: 8,
                                    child: Row(
                                      children: [
                                        MyContainer(
                                          borderRadiusAll: 20,
                                          paddingAll: 6,
                                          color: contentTheme.success.withAlpha(10),
                                          child: MyText.bodySmall(
                                            controller.conseils['List'][index]['libelle'],
                                            fontWeight: 600,
                                            color: contentTheme.success,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(
                                          LucideIcons.chevronRight,
                                          color: contentTheme.primary,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
