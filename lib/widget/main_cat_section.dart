

import 'package:flutter/material.dart';
import 'package:food_zoon/widget/home_item.dart';

class MainCatSection extends StatelessWidget {
  const MainCatSection({
    super.key,
    required this.mainCatTitle,
    required this.onTapSeeAll,
    required this.itemsList});

  final String mainCatTitle;
  final VoidCallback onTapSeeAll;
  final List<Map<String,dynamic>> itemsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                mainCatTitle,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: onTapSeeAll,
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFF2F08),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 144,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemCount: itemsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index) {
              return HomeItem(
                  imageURL: itemsList[index]['image_url'],
                  title: itemsList[index]['title'],
                  onTap: () {
                    print(
                        '${itemsList[index]['title']} id = ${itemsList[index]['id']}');
                  },
                  itemPrice: itemsList[index]['itemPrice']
              );
            },
            separatorBuilder: (BuildContext context,int index){
              return const SizedBox(width: 18,);
            },
          ),
        ),
      ],
    );
  }
}