import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahrazad_app/models/default%20Item%20.dart';
import 'package:shahrazad_app/pages/Item%20page.dart';

class GoodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 7,
          childAspectRatio: .7,
        ),
        itemBuilder: (context, index) {
          return DefaultItem(
            itemOnPressed: () {Get.to(ItemPage());},
            iconOnPressed: () {},
            isExpires: true,
            image: 'images/logo-black.png',
            title: 'item name',
            prise: '20',
          );
        },
      ),
    );
  }
}
