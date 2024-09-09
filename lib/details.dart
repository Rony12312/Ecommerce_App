import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final data;

  const ItemDetails({super.key, this.data});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black,
            ),
            Text(
              " Ecommerce ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "App",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
              height: 300,
              width: 300,
              margin: const EdgeInsets.only(bottom: 45),
              child: Image.asset(widget.data['image'])),
          Container(
              child: Text(
            widget.data['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                widget.data['subtitle'],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
              )),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                widget.data['description'],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 25),
              child: Text(
                widget.data['price'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.orange.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Color: ",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              const Text("  Grey"),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const Text("  Black"),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            padding: const EdgeInsets.only(top: 25),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 15),
              color: Colors.black,
              onPressed: () {},
              child: const Text(
                "Add to cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
