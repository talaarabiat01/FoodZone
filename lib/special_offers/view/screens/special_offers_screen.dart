
import 'package:flutter/material.dart';
import 'package:food_zoon/special_offers/controller/special_offers_controller.dart';
import 'package:food_zoon/special_offers/view/widgets/special_offers_item.dart';
import 'package:provider/provider.dart';


class SpecialScreen extends StatefulWidget {
  const SpecialScreen({super.key});

  @override
  State<SpecialScreen> createState() => _SpecialScreenState();
}

class _SpecialScreenState extends State<SpecialScreen> {

  void initState(){
    super.initState();
    Provider.of<SpecialOffersController>(context, listen:false).getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<SpecialOffersController>(
          builder: (BuildContext context,provider,Widget? child) {
            if (provider.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 16),
              itemCount: provider.specialOffersDataList?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return SpecialOffersItem(
                  imageURL: provider.specialOffersDataList?[index].imageURL,
                  per: provider.specialOffersDataList?[index].per,
                  des: provider.specialOffersDataList?[index].des,
                  colors: [Color(0xFF000000), Color(0xFFB31312)],
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return SpecialScreen();
                        }));
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 16,
                );
              },
            );
          },
        ));
  }
}