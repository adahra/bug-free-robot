import 'package:flutter/material.dart';
import 'package:newdemo/detail_page.dart';

class Page3 extends StatefulWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Page3State createState() => Page3State();
}

class Page3State extends State<Page3> {
  Widget bottonContainer(
      {@required String image, @required int price, @required String name}) {
    return Container(
      height: 270,
      width: 220,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black87, blurRadius: 5.0),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image.asset(image),
            // backgroundImage: AssetImage(image),
          ),
          ListTile(
            leading: Text(
              name,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Text(
              "Rs.$price",
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailPage()));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Container(height: 0.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Food",
                    hintStyle: const TextStyle(color: Colors.black),
                    // border: OutlineInputBorder(),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    filled: true,
                    // contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     borderSide: BorderSide(color: Colors.white, width: 3.0)),
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)))),
          ),
          // Container(
          //   height: 270,
          //   width: 220,
          //   decoration: BoxDecoration(
          //       color: Color(0xff3a3a3e),
          //       borderRadius: BorderRadius.circular(20)),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       CircleAvatar(
          //         backgroundImage: AssetImage('assets/img1.png'),
          //       ),
          //       ListTile(
          //         leading: Text(
          //           "Burger",
          //           style: TextStyle(fontSize: 20, color: Colors.white),
          //         ),
          //         trailing: Text(
          //           "Rs.300",
          //           style: TextStyle(fontSize: 20, color: Colors.white),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 570,
            child: GridView.count(
              shrinkWrap: false,
              primary: false,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                bottonContainer(
                  image: 'assets/chicktik.png',
                  name: 'Chicken\nTikka',
                  price: 130,
                ),
                bottonContainer(
                  image: 'assets/pantik.png',
                  name: 'Paneer\nTikka',
                  price: 300,
                ),
                bottonContainer(
                  image: 'assets/vegb.png',
                  name: 'Veg\nBiryani',
                  price: 400,
                ),
                bottonContainer(
                  image: 'assets/biryani.png',
                  name: 'NonVeg\nBiryani',
                  price: 500,
                ),
                bottonContainer(
                  image: 'assets/daal.png',
                  name: 'Dal\nFry',
                  price: 600,
                ),
                bottonContainer(
                  image: 'assets/bhindim.png',
                  name: 'Bhindi\nmasala',
                  price: 200,
                ),
              ],
            ),
          )
        ],
      ),
//       body: Container(
//         child: ListView(
//           children: <Widget>[
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img4.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '      Chicken Breast \n      Bonless(500gms) \n      (2+ pieces) \n       ₹. 170.00'),
//                 subtitle: Text(
//                   '        Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(
//                     Icons.add_shopping_cart,
//                     color: Colors.red,
//                     size: 40,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         new MaterialPageRoute(
//                             builder: (context) => new OrdersPage()));
//                   },
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       new MaterialPageRoute(
//                           builder: (context) => new DetailPage()));
//                 },
//               ),
//             ),

//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img33.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '      Marinated Hariyali \n      Kabab \n      (500gms) \n      ₹. 240.00'),
//                 subtitle: Text(
//                   '       Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img2.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 //                          leading: ConstrainedBox(
//                 //   constraints: BoxConstraints(
//                 //     minWidth: 44,
//                 //     minHeight: 44,
//                 //     maxWidth: 44,
//                 //     maxHeight: 44,
//                 //   ),
//                 //   child: Image.asset('assets/img1.png', fit: BoxFit.cover),
//                 // ),
//                 title: Text(
//                     '     Marinated Malai \n     Kabab \n     (500gms) \n      ₹. 300.00'),
//                 subtitle: Text(
//                   '       Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img1.png"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Chicken Burger Patty \n     (250gms)\n      ₹. 145.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img33.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ₹. 240.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img4.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ₹. 240.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                   // textAlign: TextAlign.center
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img1.png"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                     '     Marinated Hariyali \n     Kabab \n     (500gms) \n     ₹. 240.00'),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(Icons.add_shopping_cart, color: Colors.red),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                       "assets/img2.jpg"), // no matter how big it is, it won't overflow
//                 ),
//                 title: Text(
//                   '     Marinated Malai \n     Kabab \n     (500gms) \n     ₹. 300.00',
//                 ),
//                 subtitle: Text(
//                   '      Details',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 trailing: Icon(
//                   Icons.add_shopping_cart,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
// //
//           ],
//         ),
//       ),
    );
  }
}
