import 'package:flutter/material.dart';
import './find_products_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Onboarding_cover.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 2,
              width: double.infinity,
            ),
            const Center(
              child: Image(
                image: AssetImage("images/logo.png"),
              ),
            ),
            SizedBox(
              height: size.height / 6,
              width: size.width - size.width / 4,
              child: const FittedBox(
                child: Text(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  "Welcome\nto our store",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: size.width - size.width / 3,
              child: const FittedBox(
                child: Text(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  "Ger your groceries in as fast as one hour",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 24,
            ),
            SizedBox(
              width: size.width - size.width / 3,
              height: size.height / 15,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FindProductsScreen())),
                child: const FittedBox(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
