import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/IllnessDetail');
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name of Illness", style: Theme.of(context).textTheme.displayMedium,),
                  Text("#1515", style: Theme.of(context).textTheme.displayMedium,),
                  SizedBox(height: 20,),
                  Text("Mualice basladi", style: Theme.of(context).textTheme.displayMedium,),
                  Text("Mualice Bitdi", style: Theme.of(context).textTheme.displayMedium,),
                ],
              ),
              Image.asset('images/ali_hasanli.png', height: 100, width: 100,)
            ],
          ),
        ),
      );
    },
      itemCount: 5,
      scrollDirection: Axis.vertical,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );

  }
}