import 'package:camp_final_project/models/car.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  final Car car;
  const InformationPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          child: Column(
            children: [
              Text("lvj jwrjb wornbw"),
              // Text(
              //   car.id.toString(),
              // ),
              const SizedBox(height: 12),
              Image.network(car.image.toString()),
              const SizedBox(height: 12),
              Text(
                car.make!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
