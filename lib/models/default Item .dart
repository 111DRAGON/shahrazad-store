import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultItem extends StatelessWidget {
  const DefaultItem(
      {Key? key,
      required this.image,
      required this.title,
      this.isExpires = false,
      required this.prise,
      this.iconOnPressed,
      this.itemOnPressed})
      : super(key: key);
  final String image;
  final String title;
  final String prise;
  final bool isExpires;
  final Function()? iconOnPressed;
  final Function()? itemOnPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemOnPressed,
      child: Card(
        elevation: 8,
        color: context.theme.accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  height: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Prise",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              prise,
                              style: const TextStyle(
                                fontSize: 16,
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: iconOnPressed, icon: Icon(Icons.favorite))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
