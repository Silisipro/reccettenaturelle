import 'package:flutter/material.dart';
import 'package:reccettenaturelle/controller/home_controller.dart';
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
//import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, UIMixin {
  late HomeController controller;

  @override
  void initState() {
    controller = Get.put(HomeController());
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
                    MyText.titleMedium(
                      "Avertissement",
                      fontSize: 18,
                      fontWeight: 600,
                    ),
                    MyBreadcrumb(
                      children: [
                        MyBreadcrumbItem(name: 'Avertissement', active: true),
                      ],
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
                      // sizes: 'lg-4',
                      child: buildPremiumContainer(),
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

  Widget buildDashboardAD() {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      alignment: Alignment.topLeft,
      children: [
        MyContainer(
          height: 280,
          color: contentTheme.primary.withAlpha(40),
        ),
        
        Positioned(
          right: 20,
          width: 100,
          top: 20,
          child: MyContainer.rounded(
            height: 100,
            color: contentTheme.light.withAlpha(100),
          ),
        ),
        Positioned(
          right: 80,
          width: 100,
          top: 20,
          child: MyContainer.rounded(
            height: 100,
            color: contentTheme.light.withAlpha(100),
          ),
        ),
        
      ],
    );
  }

  Widget buildPremiumContainer() {
    return Container(
      //height: 280,
      padding: MySpacing.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.decal,
          colors: [
            Colors.red.withAlpha(100),
            Colors.pink.withAlpha(100),
            Colors.redAccent.withAlpha(100),
            Colors.purple.withAlpha(100),
          ],
        ),
        color: contentTheme.danger.withAlpha(36),
        // borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           MyText.bodyLarge(
      "Les informations contenues dans cet application ne peuvent en aucun cas faire l'objet d'une documentation de référence en matière de santé ou médicale.",
      fontSize: 11,
       fontWeight: 600,
      overflow: TextOverflow.ellipsis,
      muted: true,
      maxLines: 5,
      textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "De ce fait, elles ne peuvent pas se substituer aux traitements et aux soins médicaux sans la recommandation particulière d'un médecin assermenté.",
      fontSize: 11,
       fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "En effet, ne négligez jamais le fait que toute maladie ou blessure requière l'intervention d'un docteur en médecine ou d'un praticien en médecine alternative.",
      fontSize: 11,
        fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Les informations présentes dans cet application proviennent de diverses sources comme des recettes maisons de grand-mère, livres spécialisés, de thérapeutes en médecine naturelle, des encyclopédies médicales reconnues, de divers médecins, spécialistes et experts dans leur domaine de santé.",
      fontSize: 11,
       fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
     MyText.bodyLarge(
      "Cependant, de nombreuses questions d'ordre médicales ou de santé peuvent être sujettes à controverse, du fait que différentes personnes qualifiées peuvent avoir différentes opinions.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Vous devez utiliser ces informations comme référence et non comme un guide médical ou un manuel d'auto traitement. Si vous pensez avoir un problème médical assez pointu, consultez votre médecin.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "L'information présentée ici a pour but de vous aider à faire des choix éclairés concernant votre santé. Vous ne devez pas vous en servir pour remplacer un traitement prescrit par un médecin.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Les femmes enceintes et les personnes suivies médicalement ne devraient pas entreprendre des traitements maisons sans d'abord consulter leur médecin. Avant de faire un exercice, prendre un complément alimentaire ou suivre un remède maison, il est important d'en parler d'abord à votre médecin.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Les conseils donnés dans cet application ne sont pas destinés à remplacer un avis médical.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Chaque personne est différente et peut réagir différemment à un remède, un exercice ou autres. SVP, n'appliquez aucun conseil sans en avoir parlé au préalable à votre médecin !",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Tenez compte que certaines plantes ou remèdes peuvent provoquer des réactions allergiques ou voire même être toxiques. Certains aliments peuvent également vous être déconseillés personnellement par votre médecin, suivez ses prescriptions.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
    MyText.bodyLarge(
      "Nous ne pouvons pas être tenus pour responsables d'une quelconque incompréhension ou d'une mauvaise interprétation du contenu de cet application, ni d'aucune erreur ou omission qui serait totalement involontaire de notre part.",
      fontSize: 11,
      fontWeight: 600,
      muted: true,
     textAlign: TextAlign.justify,
    ),
          // MyButton.block(
          //     borderRadiusAll: 12,
          //     elevation: 0,
          //     backgroundColor: contentTheme.danger.withAlpha(100),
          //     onPressed: () {},
          //     child: MyText.bodyMedium(
          //       'ok!',
          //       // color: contentTheme.danger,
          //       fontWeight: 600,
          //     ))
        ],
      ),
    );
  }
}
