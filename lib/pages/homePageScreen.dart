import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahrazad_app/controller/Home%20page%20controller.dart';
import 'package:shahrazad_app/pages/welcome%20screen.dart';
import '../models/default BottomNavBar.dart';
import '../models/default Drawer.dart';
import '../theme/theme services.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomePageController>(
        init: HomePageController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                actions: [
                  IconButton(
                    onPressed: () {
                      ThemeService().switchTheme();
                    },
                    icon: const Icon(Icons.brightness_4_outlined),
                  ),
                ],
              ),
              body: controller.screen[controller.currentIndex.value],
              drawer: DefaultDrawer(
                changeToArabicLanguage: () {},
                changeToEnglishLanguage: () {},
                complaints: () {},
                logOut: () {
                  Get.to(WelcomeScreen());
                },
                accountEmail: 'AhmedHelmy@gimail.com',
                accountName: 'Ahmed Helmy',
              ),
              bottomNavigationBar: DefaultBottomNavBar(
                onTap: (index) {
                  print(index);
                      controller.currentIndex.value = index!;
                },
                currentIndex: controller.currentIndex.value,
                iconOfItem1: CupertinoIcons.cart,
                iconOfItem2: Icons.home,
                iconOfItem3: Icons.menu,
                textOfItem1: "Cart",
                textOfItem2: "Purchases",
                textOfItem3: "Category",
              ));
        });
  }
}
