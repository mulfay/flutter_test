import 'package:flutter/material.dart';
import './find_products_screen.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 130, left: 70, right: 80),
            height: size.height / 3,
            child: const Image(
              image: AssetImage("images/correct.png"),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 40, bottom: 5),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Your Order has been \naccepted",
                  style: TextStyle(fontSize: 26),
                ),
              )),
          const Text(
            textAlign: TextAlign.center,
            "Your items has been placcd and is on \nit’s way to being processed",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Container(
            width: size.width * 0.8,
            height: size.width * 0.15,
            margin: EdgeInsets.only(top: size.width * 0.15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () {},
                child: const Text("Track Order",
                    style: TextStyle(color: Colors.white, fontSize: 20))),
          ),
          SizedBox(
              width: size.width * 0.8,
              height: size.width * 0.15,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FindProductsScreen()));
                  },
                  child: const Text("Back to home",
                      style: TextStyle(fontSize: 17))))
        ],
      ),
    );
  }
}
