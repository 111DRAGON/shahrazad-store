import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahrazad_app/models/default%20button.dart';
import 'package:shahrazad_app/pages/homePageScreen.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Item Name",
          style: TextStyle(fontSize: 30),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(HomePageScreen());
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/logo-black.png"),
                    fit: BoxFit.cover,
                  ),),
            ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(children: [
                 Row(
                   children: const [
                     Text(
                       " Name :-",
                       style: TextStyle(fontSize: 30),
                     ),
                     SizedBox(width: 20,),
                     Text("Item Name",
                       style: TextStyle(
                           fontSize: 30
                       ),),
                   ],
                 ),
                 const SizedBox(height: 20,),
                 Row(
                   children: const [
                     Text(
                       " prise :-",
                       style: TextStyle(fontSize: 30),
                     ),
                     SizedBox(width: 20,),
                     Text("20",
                       style: TextStyle(
                           fontSize: 30
                       ),),
                   ],
                 ),
                 const SizedBox(height: 20,),
                 Row(
                   children: const [
                     Text(
                       " Available piece :-",
                       style: TextStyle(fontSize: 30),
                     ),
                     SizedBox(width: 20,),
                     Text("20",
                       style: TextStyle(
                           fontSize: 30
                       ),),
                   ],
                 ),
                 const SizedBox(height: 20,),
                
               ],),
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DefaultButton(icon: CupertinoIcons.cart_fill,
                  text: "Add To Cart",
                  color: Get.isDarkMode
                      ? const Color.fromRGBO(40, 103, 137, 1.0)
                      : const Color.fromRGBO(
                      39, 104, 139, 1.0) ,
                  onPressed: (){}),
            )

          ],
        ),
      ),
    );
  }
}
