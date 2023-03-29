import 'package:flutter/material.dart';
import 'package:newdemo/orders_page.dart';
import 'package:newdemo/setting_page.dart';
import 'package:newdemo/Pages/page_1.dart';
import 'package:newdemo/Pages/page_2.dart';
import 'package:newdemo/Pages/page_3.dart';
import 'package:newdemo/Pages/page_4.dart';
import 'package:newdemo/Pages/page_0.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrdersPage(),
                  ),
                );
              },
            ),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.yellowAccent,
              indicatorPadding: const EdgeInsets.only(left: 30, right: 30),
              indicator: ShapeDecoration(
                color: Colors.redAccent,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.redAccent,
                  ),
                ),
              ),
              tabs: const [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("All"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Break fast"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Dinner"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Cold Drinks"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Offer"),
                  ),
                ),
              ]),
          title: const Text("Home Page"),
        ),
        body: const TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page0(),
          ],
        ),
      ),
    );
  }
}
