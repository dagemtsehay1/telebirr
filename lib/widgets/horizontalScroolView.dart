import 'package:flutter/material.dart';

class HorizontalScroolView extends StatelessWidget {
  const HorizontalScroolView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Icon(
                      Icons.wallet,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Main Account Transaction"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Gift Account Transaction"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
