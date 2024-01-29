import 'package:auth_app/features/test/controllers/testOneController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TestTow extends StatelessWidget {
  TestTow({super.key});
  TestOneController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  controller.increment();
                }),
            GetBuilder<TestOneController>(
              builder: (controller) => Text("${controller.counter.value}"),
            ),
            IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  controller.decrement();
                }),
          ]),
        ),
      ),
    );
  }
}
