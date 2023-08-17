import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.imageURL,
    required this.title,
    required this.onTap,
    required this.itemPrice,
    //required this.fav
  });

  //final String fav;
  final String imageURL;
  final String title;
  final VoidCallback onTap;
  final String itemPrice;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 124,
        decoration: BoxDecoration(
            color: const Color(0xFFFF2F08).withOpacity(0.05),
            borderRadius: const BorderRadius.all(Radius.circular(12))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageURL,
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(
              height: 9,
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 21,
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      itemPrice,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9B1A19),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Color(0xFF9B1A19),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}