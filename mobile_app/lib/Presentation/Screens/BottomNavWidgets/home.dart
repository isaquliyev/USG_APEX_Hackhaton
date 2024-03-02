import 'package:flutter/material.dart';
import 'package:mobile_app/Data/Diagnos.dart';

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
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(diagnosis[index].organName, style: TextStyle(color: Colors.white),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: diagnosis[index].organColor,
                    ),
                  ),
                  Text(diagnosis[index].illness, style: Theme.of(context).textTheme.displayMedium,),
                  Text(diagnosis[index].illnessId, style: Theme.of(context).textTheme.displayMedium,),
                  SizedBox(height: 20,),
                  Text("19.02.2024", style: Theme.of(context).textTheme.displayMedium,),
                ],
              ),
              Column(
                children: [
                  Image.asset(diagnosis[index].imagePath, height: 100, width: 120, fit: BoxFit.fill,),
                  Text(diagnosis[index].doctorName)
                ],
              )
            ],
          ),
        ),
      );
    },
      itemCount: diagnosis.length,
      scrollDirection: Axis.vertical,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );

  }
}