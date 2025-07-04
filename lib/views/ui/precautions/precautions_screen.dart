import 'package:flutter/material.dart';
import 'package:reccettenaturelle/controller/precautions_controller.dart';
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

class PrecautionsScreen extends StatefulWidget {
  const PrecautionsScreen({super.key});

  @override
  State<PrecautionsScreen> createState() => _PrecautionsScreenState();
}

class _PrecautionsScreenState extends State<PrecautionsScreen>
    with SingleTickerProviderStateMixin, UIMixin {
  late PrecautionsController controller;

  @override
  void initState() {
    controller = Get.put(PrecautionsController());
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
                        MyBreadcrumbItem(name: 'Précautions', active: true),
                      ],
                      backRoute: '/acceuil',
                    ),
                    MyText.titleMedium(
                      "PRECAUTIONS A PRENDRE POUR PREVENIR LA MALADIE",
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
                            itemCount: controller.precautions['List'].length,
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
                                    final route = controller.precautions['List'][index]['link'];
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
                                            controller.precautions['List'][index]['libelle'],
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

