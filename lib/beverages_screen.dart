import 'package:flutter/material.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  List<String> names = [
    "Diet Coke",
    "Sprite Can",
    "Apple & Grape uice",
    "Orenge Juice",
    "Coca Cola Can",
    "Pepsi Can "
  ];
  List<String> priceunits = [
    "355ml, Price",
    "325ml, Price",
    "2L, Price",
    "2L, Price",
    "325ml, Price",
    "330ml, Price"
  ];
  List<String> price = [
    "\$1.99",
    "\$1.50",
    "\$5.99",
    "\$8.99",
    "\$4.99",
    "\$4.99"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ListView(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                const Expanded(
                                  child: Text("Add",
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
                            margin: const EdgeInsets.all(12),
                            child: const Expanded(
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            indent: 25,
                            endIndent: 25,
                            thickness: 1,
                          ),
                          Container(
                            margin: const EdgeInsets.all(12),
                            child: const Expanded(
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            indent: 25,
                            endIndent: 25,
                            thickness: 1,
                          ),
                          Container(
                            margin: const EdgeInsets.all(12),
                            child: const Expanded(
                              child: Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            indent: 25,
                            endIndent: 25,
                            thickness: 1,
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Image",
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
                                    "",
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
                            height: 50,
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Add Item",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                          )
                        ],
                      );
                    },
                  ),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.white,
        title: Text(
          "Beverages",
          style: TextStyle(fontSize: size.width * 0.06),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.66),
        itemBuilder: (context, index) => Card(
          color: Colors.white,
          elevation: 2,
          borderOnForeground: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 130,
                  width: 60,
                  margin: const EdgeInsets.all(20),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage("images/beverages$index.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  names[index],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  priceunits[index],
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      price[index],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      height: 45,
                      width: 45,
                      child: IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0))),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
