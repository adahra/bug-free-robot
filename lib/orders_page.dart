import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Your Cart Items"),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/mis.png"), // no matter how big it is, it won't overflow
              ),
              title: Text('     Misal pav'),
              subtitle: Text(
                '          ₹. 60.00',
                style: TextStyle(color: Colors.red),
                // textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.add_box, color: Colors.red),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/chicktik.png"), // no matter how big it is, it won't overflow
              ),
              title: Text('     Chicken Tikka \n     '),
              subtitle: Text(
                '        ₹. 130.00',
                style: TextStyle(color: Colors.red),
              ),
              trailing: Icon(Icons.add_box, color: Colors.red),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/mangda.png"), // no matter how big it is, it won't overflow
              ),
              title: Text(
                '     Mango Daiquiri \n    ',
              ),
              subtitle: Text(
                '        ₹. 140.00',
                style: TextStyle(color: Colors.red),
              ),
              trailing: Icon(
                Icons.add_box,
                color: Colors.red,
              ),
            ),
          ),
//
          Text(
            "  \n \n\n\n  \n \n \n  \n\n  \n \n \n \n\n  \n \n \n \n\n  \n \n \n \n \n  Your Order= 1 Misal Pav + 1 Chicken Tikka + 1 Mango \n                                                                                      Daiquiri  ",
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\n      Total =    ₹. 330.00",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
