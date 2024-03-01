import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Name of Illness"),
                Text("#1515"),
                SizedBox(height: 20,),
                Text("Mualice basladi"),
                Text("Mualice Bitdi"),
              ],
            ),
            Image.asset('images/ali_hasanli.png', height: 100, width: 100,)
          ],
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