import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/logo-black.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: Text(
                  "Category Name",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 40,
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 25,
            color: Colors.black45,
            indent: 20,
            endIndent: 20,
            thickness: 3,
          );
        },
        itemCount: 10);
  }
}
