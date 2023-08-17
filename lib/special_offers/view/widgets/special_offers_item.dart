import 'package:flutter/material.dart';

class SpecialOffersItem extends StatelessWidget {
  const SpecialOffersItem({
    super.key,
    this.imageURL,
    this.per,
    this.des,
    this.colors,
    required this.onTap});

  final String? imageURL;
  final double? per;
  final String? des;
  final List<Color>? colors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient:
            LinearGradient(colors: colors ?? [Color(0xFFFF2F08),Color(0xFFED2B2A)])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 22,right: 8),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '$per',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 125,
                        child: Text(
                          '$des',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: Image.network(
                      '$imageURL',
                      width: 120,
                      height: 120,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}