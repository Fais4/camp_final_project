import 'package:camp_final_project/data/global_data.dart';
import 'package:camp_final_project/extension/push.dart';
import 'package:camp_final_project/pages/information_page.dart';
import 'package:camp_final_project/services/api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder(
            future: Api().getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: allCars.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      context.push(InformationPage(car: allCars[index]));
                    },
                    child: Card(
                      color: Colors.blue.shade100,
                      child: Column(
                        children: [
                          Text(allCars[index].id.toString()),
                          const SizedBox(height: 12),
                          Text(allCars[index].make!),
                          Text(allCars[index].model!),
                          Text(allCars[index].price.toString()),
                          Image.network(allCars[index].image.toString()),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const Text("No data");
              }
            }),
      ),
    );
  }
}
