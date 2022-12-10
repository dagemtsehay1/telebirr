import 'package:flutter/material.dart';
import 'package:telebirr/widgets/balanceCard.dart';
import 'package:telebirr/widgets/horizontalScroolView.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final myLists = [
      [Icons.more, "Deposite Cash"],
      [Icons.home, "Financial Service"]
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code_2_rounded,
                      color: Colors.black54,
                    )),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/img3.png"),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hello"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("👋"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Hiwot Bogale",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            BalanceCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Reward Balance",
                  style: TextStyle(
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Transactions Detail",
                  style: TextStyle(color: Colors.blue, letterSpacing: 1),
                ),
              ],
            ),
            HorizontalScroolView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Favourite Links"),
                  Text(
                    "See All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
                height: 200,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: Icon(Icons.menu),
                      title: Text("Deposite Cash"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.menu),
                      title: Text("Deposite Cash"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.menu),
                      title: Text("Deposite Cash"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.menu),
                      title: Text("Deposite Cash"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.orange,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
                color: Colors.blue,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.blue,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.blue,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: "home"),
        ],
      ),
    );
  }
}
