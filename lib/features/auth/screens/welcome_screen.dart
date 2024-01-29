import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: const AssetImage(MyImages.onpoardImg),
          width: MySizes.screenWidth * 0.8,
          height: MySizes.screenHeight * 0.6,
        ),
        ElevatedButton(onPressed: () {}, child: const Text("hiiii")),
        OutlinedButton(onPressed: () {}, child: const Text("hiiii")),
        Text(
          "title",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "subTitle",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        MaterialButton(
          onPressed: () {},
          child: const Text("texxxxxxxxt"),
        )
      ],
    ));
  }
}
