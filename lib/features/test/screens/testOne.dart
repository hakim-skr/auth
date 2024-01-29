import 'package:auth_app/features/test/controllers/testOneController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TestOne extends GetView<TestOneController> {
  const TestOne({super.key});
  // TestOneController controller = Get.put(TestOneController(), permanent: true);
  // final TestOneController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("${controller.title}"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    controller.increment();
                  }),
              GetBuilder<TestOneController>(
                builder: (controller) => Text("${controller.counter}"),
              ),
              IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    controller.decrement();
                  }),
            ]),
          ]),
        ),
      ),
    );
  }
}
