import 'package:flutter/material.dart';
import 'package:lilac_task_2/screen/homepage.dart';

class FreaturedCource extends StatelessWidget {
  const FreaturedCource({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_sharp)),
        ],
        title: const Center(
          child: Text(
            "Featured Cources",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ));
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(color: Colors.yellow,),
    );
  }
}
