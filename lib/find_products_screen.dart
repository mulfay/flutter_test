import 'package:flutter/material.dart';
import './order_accepted.dart';
import './beverages_screen.dart';

class FindProductsScreen extends StatefulWidget {
  const FindProductsScreen({super.key});

  @override
  State<FindProductsScreen> createState() => _FindProductsScreenState();
}

class _FindProductsScreenState extends State<FindProductsScreen> {
  int index = 2;
  List<String> names = [
    "Frash Fruits\n& Vegetable",
    "Cooking Oil\n& Ghee",
    "Meat & Fish",
    "Bakery & Snacks",
    "Dairy & Eggs",
    "Beverages"
  ];
  List<Color> colors = [
    const Color.fromARGB(255, 240, 246, 204),
    const Color.fromARGB(255, 249, 241, 170),
    const Color.fromARGB(255, 248, 182, 169),
    const Color.fromARGB(255, 232, 195, 244),
    const Color.fromARGB(255, 248, 235, 198),
    const Color.fromARGB(255, 211, 234, 245),
    const Color.fromRGBO(215, 214, 234, 1),
    const Color.fromRGBO(237, 169, 195, 1),
  ];
  List<String> cartnames = [
    "Bell Pepper Red",
    "Egg Chicken Red",
    "Organic Bananas",
    "Ginger"
  ];
  List<String> priceunits = [
    "1kg, Price",
    "4pcs, Price",
    "12kg, Price",
    "250gm, Price"
  ];
  List<double> price = [4.99, 1.99, 3.00, 2.99];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(index == 1 ? "Find Products" : "My Cart",
            style: TextStyle(fontSize: size.width * 0.06)),
        centerTitle: true,
      ),
      body: index == 1
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (index == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BeveragesScreen()));
                  }
                },
                child: Card(
                  color: colors[index],
                  child: FittedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Image(
                            image: AssetImage(
                                "images/${index + 1 <= 6 ? index + 1 : 1}.png"),
                          ),
                        ),
                        Text(
                          names[index < 6 ? index : 0],
                          style: TextStyle(
                              fontSize: size.width * 0.05,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: 8,
            )
          : Stack(
              children: [
                const Divider(),
                ListView.builder(
                  itemBuilder: (context, index) {
                    Text(
                      textAlign: TextAlign.start,
                      priceunits[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 50),
                    );
                    return Column(
                      children: [
                        Container(
                          height: size.height / 5,
                          margin: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Image(
                                  image: AssetImage(
                                    "images/cart$index.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Container(
                                width: size.width / 2.4,
                                height: size.height / 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartnames[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          priceunits[index],
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          IconButton(
                                            style: IconButton.styleFrom(
                                              elevation: 3,
                                              iconSize: 25,
                                              side: const BorderSide(
                                                  color: Colors.grey),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                            ),
                                            onPressed: () {},
                                            icon: const Icon(Icons.remove),
                                            iconSize: size.width * 0.1,
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: const Text(
                                              "1",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          IconButton(
                                            style: IconButton.styleFrom(
                                              elevation: 3,
                                              iconSize: 25,
                                              side: const BorderSide(
                                                  color: Colors.grey),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                            ),
                                            onPressed: () {},
                                            icon: const Icon(Icons.add),
                                            iconSize: size.width * 0.1,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.close),
                                      iconSize: 30,
                                    ),
                                    Text(
                                      "${price[index]}\$",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          indent: 20,
                          endIndent: 20,
                        )
                      ],
                    );
                  },
                  itemCount: 4,
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  right: 20,
                  height: size.height / 12,
                  child: Stack(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () => showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return ListView(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Text("Checkout",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Delivery",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      MenuItemButton(
                                        trailingIcon: Icon(
                                          color: Colors.black,
                                          Icons.keyboard_arrow_right,
                                          size: 30,
                                        ),
                                        child: Text(
                                          "Select Method",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  indent: 25,
                                  endIndent: 25,
                                  thickness: 1,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Pament",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      MenuItemButton(
                                          trailingIcon: Icon(
                                            color: Colors.black,
                                            Icons.keyboard_arrow_right,
                                            size: 30,
                                          ),
                                          child: Icon(Icons.payments))
                                    ],
                                  ),
                                ),
                                const Divider(
                                  indent: 25,
                                  endIndent: 25,
                                  thickness: 1,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Total Cost",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      MenuItemButton(
                                        trailingIcon: Icon(
                                          color: Colors.black,
                                          Icons.keyboard_arrow_right,
                                          size: 30,
                                        ),
                                        child: Text(
                                          "\$13.97",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  indent: 25,
                                  endIndent: 25,
                                  thickness: 1,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: const Text(
                                      "By placing an order you agree to our\nTerms And Conditions"),
                                ),
                                Container(
                                  height: 50,
                                  margin: const EdgeInsets.all(8),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  const OrderAcceptedScreen())),
                                      child: const Text(
                                        "Place Order",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                )
                              ],
                            );
                          },
                        ),
                        child: const Center(
                          child: Text(
                            "Go to Checkout",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                      const Positioned(
                          right: 20,
                          top: 20,
                          child: Text(
                            "\$12.96",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
      bottomNavigationBar: NavigationBar(
        height: size.height / 10,
        selectedIndex: index,
        indicatorColor: Colors.green,
        onDestinationSelected: (value) {
          if (value == 1 || value == 2) {
            setState(() {
              index = value;
            });
          }
        },
        destinations: const [
          NavigationDestination(
              icon: Image(
                image: AssetImage("images/shop.png"),
              ),
              label: "shop"),
          NavigationDestination(
              icon: Image(
                image: AssetImage("images/explore.png"),
                color: Colors.black,
              ),
              label: "Explore"),
          NavigationDestination(
              icon: Image(image: AssetImage("images/cart.png")), label: "Cart"),
          NavigationDestination(
              icon: Image(image: AssetImage("images/favorite.png")),
              label: "Favorite"),
          NavigationDestination(
              icon: Image(
                image: AssetImage("images/profile.png"),
                color: Colors.black,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
