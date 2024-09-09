import 'package:flutter/material.dart';
import 'package:untitled7/details.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = [
    {"iconname": Icons.laptop_rounded, "title": "Laptop"},
    {"iconname": Icons.phone_android_rounded, "title": "Phone"},
    {"iconname": Icons.watch_rounded, "title": "Smart Watch"},
    {"iconname": Icons.tablet_rounded, "title": "Tablet"},
    {"iconname": Icons.headset_mic_rounded, "title": "Headset"},
  ];
  List items = [
    {
      "image": "images/unnamed.jpg",
      "title": "Logitech G733",
      "subtitle": "Headset",
      "price": "119\$",
      "description":
          '''Logitech G733 Lightspeed Wireless Gaming Headset with Suspension Headband, Lightsync RGB, Blue VO!CE mic technology and PRO-G audio drivers - Black '''
    },
    {
      "image": "images/asus.jpg",
      "title": "ROG Zephyrus G16",
      "subtitle": "Laptop",
      "price": "1349\$",
      "description":
          '''ASUS ROG Zephyrus G16 Gaming Laptop, 16" WUXGA 165Hz, Intel 13th Gen 10-Core i7-13620H Up to 4.9 Ghz, GeForce RTX 4060, 16GB RAM, 1TB PCI 4.0, RGB, WiFi 6E, TB 4, USB-C, RJ45, HDMI, Win11 Pro '''
    },
    {
      "image": "images/galaxy tablet.jpg",
      "title": "Galaxy Tab S8",
      "subtitle": "Tablet",
      "price": "700\$",
      "description":
          '''Samsung Galaxy Tab S8 Ultra | Super AMOLED, 120Hz, HDR10+ 14.6" Screen | 512GB 16GB RAM '''
    },
    {
      "image": "images/watch.jpg",
      "title": "Apple Watch Ultra 2",
      "subtitle": "Smart Watch",
      "price": "799\$",
      "description":
          '''Apple Watch Ultra 2 [GPS + Cellular 49mm] Smartwatch with Rugged Titanium Case & Orange/Beige Trail Loop M/L. Fitness Tracker, Precision GPS, Action Button, Extra-Long Battery Life, Carbon Neutral'''
    },
    {
      "image": "images/galaxy.jpg",
      "title": "Galaxy S24 Ultra",
      "subtitle": "Phone",
      "price": "799\$",
      "description":
          '''SAMSUNG Galaxy S24 Ultra Cell Phone, 256GB AI Smartphone, Unlocked Android, 200MP, 100x Zoom Cameras, Long Battery Life, S Pen, US Version, 2024, Titanium Black'''
    },
  ];

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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintFadeDuration: const Duration(milliseconds: 400),
                        border: InputBorder.none,
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        prefixIcon: const Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.menu_rounded,
                      size: 40,
                    ),
                  )
                ],
              ),
              Container(
                height: 30,
              ),
              const Text(
                "Categories",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // Center all children vertically
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // Center all children horizontally
                        children: [
                          Container(
                            height: 20, // Optional spacing above
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Icon(
                              categories[index]["iconname"],
                              size: 40,
                            ),
                          ),
                          Container(
                            height:
                                20, // Optional spacing between icon and text
                          ),
                          SizedBox(
                            width: 90, // Set width to control text layout
                            child: Text(
                              categories[index]["title"],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                              textAlign: TextAlign.center,
                              // Center the text within its container
                              maxLines: 1,
                              // Limit to one line
                              overflow: TextOverflow
                                  .ellipsis, // Add ellipsis if text overflows
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              GridView.builder(
                  itemCount: items.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    // Add spacing between columns
                    mainAxisSpacing: 10,
                    mainAxisExtent: 230,
                    // Add spacing between rows
                    childAspectRatio: 1, // Make the grid items square
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ItemDetails(
                                  data: items[index],
                                )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.antiAlias,
                        // Clip the image to the card's border radius
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              width: 300,
                              color: Colors.grey.shade200,
                              child: Image.asset(
                                items[index]["image"],
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              items[index]["title"],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 2,
                            ),
                            Text(
                              items[index]["subtitle"],
                              style: TextStyle(color: Colors.grey.shade800),
                            ),
                            Container(
                              height: 6,
                            ),
                            Text(
                              items[index]["price"],
                              style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
