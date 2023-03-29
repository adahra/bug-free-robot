import 'package:flutter/material.dart';
import 'package:newdemo/home_page.dart';
import 'package:newdemo/login_page.dart';
import 'package:newdemo/orders_page.dart';
import 'package:newdemo/Pages/page_0.dart';
import 'package:newdemo/privacy_page.dart';
import 'package:newdemo/setting_page.dart';
import 'package:newdemo/terms_page.dart';
import 'package:newdemo/Pages/page_1.dart';
import 'package:newdemo/Pages/page_2.dart';
import 'package:newdemo/Pages/page_3.dart';
import 'package:newdemo/Pages/page_4.dart';
import 'package:newdemo/screen/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Sush Kitchen';

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: const WelcomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SettingPage()));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OrdersPage()));
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
                          ))),
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
                        child: Text("Offers"),
                      ),
                    ),
                  ]),
              // bottom: TabBar(
              //   tabs: [
              //     Tab(icon: Icon(Icons.fastfood)),
              //     Tab(icon: Icon(Icons.cake)),
              //     Tab(icon: Icon(Icons.fastfood)),
              //     Tab(icon: Icon(Icons.add_shopping_cart)),
              //   ],
              // ),
              title: Text(title)),
          body: const TabBarView(
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
              Page0(),
            ],
          ),
//
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  // child: Text('FOGO FOOD'),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    image: DecorationImage(
                        image: AssetImage("assets/drw.jpg"), fit: BoxFit.cover),
                  ),
                  child: null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.restore,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Orders'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OrdersPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Account'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_play,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Privacy Policy'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PrivacyPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.event,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Terms And Conditions'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const TermsPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Share Our Love'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.red.shade400,
                  ),
                  title: const Text('Settings'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SettingPage()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 130.0,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
