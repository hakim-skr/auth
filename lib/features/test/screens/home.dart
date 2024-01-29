import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // final controller = Get.lazyPut(() => TestOneController(), fenix: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MaterialButton(
              onPressed: () {
                Get.toNamed("/testOne", arguments: {"title": "TestOne"});
              },
              child: const Text('TestOne'),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed("/testTow");
                // Get.to(() => TestTow());
              },
              child: const Text('TestTow'),
            ),
          ]),
        ),
      ),
    );
  }
}
