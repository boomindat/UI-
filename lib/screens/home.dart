import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

import "../widgets/listview.dart";

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productDetails = [
    "King size bed",
    "King size sofa",
    "Wooden chair"
  ];
  List<int> price = [3000, 2500, 1860];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Custom Widget"),
      ),
      body: ListView(
        children: [
          ListTileWidget(
            title: "Mouse",
            subtitle: "Click me",
            iconColor: Colors.blue,
            listTileColor: Colors.black12,
            leadingIcon: Icons.mouse_outlined,
            trailingIcon: Icons.shopping_cart_checkout,
          ),
          ListTileWidget(
            title: "TV",
            subtitle: "HD TV",
            iconColor: Colors.yellowAccent,
            listTileColor: Colors.black26,
            leadingIcon: Icons.tv_sharp,
            trailingIcon: Icons.shopping_cart_checkout,
          ),
          ListTileWidget(
            title: "Mouse",
            subtitle: "Click me",
            iconColor: Colors.blue,
            listTileColor: Colors.black12,
            leadingIcon: Icons.mouse_outlined,
            trailingIcon: Icons.shopping_cart_checkout,
          ),
          //custom widget with a class
          //listTileWidget(), //custom widget with a function
          // ListTileWidget(),
        ],
      ),
    );
    // Scaffold(
    //     appBar: AppBar(
    //       title: Text("Stack"),
    //       centerTitle: true,
    //       backgroundColor: Colors.amber.shade400,
    //     ),
    //     backgroundColor: Colors.grey.shade800,
    //     body: Center(
    //         child: Container(
    //       child: Stack(
    //         children: [
    //           Positioned(
    //               top: 0,
    //               child: Text(
    //                 "Editor's Choice",
    //                 style: TextStyle(color: Colors.black26, fontSize: 18),
    //               )),
    //           Positioned(
    //               top: 20,
    //               child: Text(
    //                 "Art of making coffee",
    //                 style: TextStyle(color: Colors.black26, fontSize: 22),
    //               )),
    //           Positioned(
    //               right: 0,
    //               bottom: 20,
    //               child: Text(
    //                 "Learn To Make The Perfect Coffee",
    //                 style: TextStyle(color: Colors.black26, fontSize: 16),
    //               )),
    //           Positioned(
    //             bottom: 0,
    //             right: 0,
    //             child: Text(
    //               "Coding With Tea",
    //               style: TextStyle(color: Colors.black26, fontSize: 16),
    //             ),
    //           ),
    //         ],
    //       ),
    //       padding: const EdgeInsets.all(16),
    //       constraints: const BoxConstraints.expand(
    //         width: 330,
    //         height: 450,
    //       ),
    //       decoration: const BoxDecoration(
    //         boxShadow: [
    //           BoxShadow(
    //               color: Colors.white24,
    //               offset: Offset(0, 2),
    //               spreadRadius: 5,
    //               blurRadius: 10),
    //         ],
    //         image: DecorationImage(
    //           image: AssetImage("images/thumbsup.png"),
    //           fit: BoxFit.cover,
    //         ),
    //         borderRadius: BorderRadius.all(Radius.circular(20.0)),
    //       ),
    //     )));
    // Scaffold(
    //   bottomNavigationBar: BottomAppBar(
    //     notchMargin: 2.5,
    //     shape: CircularNotchedRectangle(),
    //     color: Color(0xff3b3605),
    //     child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         mainAxisSize: MainAxisSize.max,
    //         children: [
    //           Padding(
    //               padding: EdgeInsets.only(left: 8.0),
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: [
    //                   Icon(
    //                     Icons.home_rounded,
    //                     color: Colors.white,
    //                   ),
    //                   Text(
    //                     "Home",
    //                     style: TextStyle(color: Colors.white),
    //                   )
    //                 ],
    //               )),
    //           Padding(
    //               padding: EdgeInsets.only(left: 10.0),
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: [
    //                   Icon(
    //                     Icons.shopping_cart,
    //                     color: Colors.white,
    //                   ),
    //                   Text(
    //                     "Shop",
    //                     style: TextStyle(color: Colors.white),
    //                   )
    //                 ],
    //               )),
    //           Padding(
    //               padding: EdgeInsets.only(left: 10.0),
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: [
    //                   Icon(
    //                     Icons.favorite,
    //                     color: Colors.white,
    //                   ),
    //                   Text(
    //                     "Fav",
    //                     style: TextStyle(color: Colors.white),
    //                   )
    //                 ],
    //               )),
    //           Padding(
    //               padding: EdgeInsets.only(left: 10.0),
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: [
    //                   Icon(
    //                     Icons.settings,
    //                     color: Colors.white,
    //                   ),
    //                   Text(
    //                     "Settings",
    //                     style: TextStyle(color: Colors.white),
    //                   )
    //                 ],
    //               )),
    //         ]),
    //   ),
    //   appBar: AppBar(
    //     leading: Icon(Icons.menu_book),
    //     title: Text("AppBar"),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   floatingActionButton: FloatingActionButton(
    //       //mini: true,
    //       child: Icon(Icons.add),
    //       onPressed: () {},
    //       backgroundColor: Colors.black87,
    //       foregroundColor: Colors.yellow,
    //       elevation: 30.0,
    //       shape: RoundedRectangleBorder(
    //           side: BorderSide(color: Colors.red, width: 1.5),
    //           borderRadius: BorderRadius.circular(
    //             30,
    //           ))),
    // );
    // Scaffold(
    //     appBar: AppBar(title: Text("Navigation Drawer")),
    //     drawer: Drawer(
    //         elevation: 120.0,
    //         child: ListView(
    //           children: [
    //             // DrawerHeader(
    //             //     padding: EdgeInsets.zero,
    //             //     child: Container(
    //             //         color: Colors.blue,
    //             //         child: Column(
    //             //           children: [
    //             //             Text("Hi"),
    //             //           ],
    //             //         ))),
    //             UserAccountsDrawerHeader(
    //               currentAccountPicture: CircleAvatar(
    //                   foregroundImage: AssetImage("images/thumbsup.png")),
    //               currentAccountPictureSize: Size.fromRadius(30.0),
    //               accountName: Text("Boomin dat way"),
    //               accountEmail: Text("boomindatway@gmail.com"),
    //               otherAccountsPictures: [
    //                 CircleAvatar(
    //                     foregroundImage: AssetImage("images/thumbsup.png")),
    //                 CircleAvatar(
    //                     foregroundImage: AssetImage("images/thumbsup.png"))
    //               ],
    //             ),

    //             ListTile(
    //               leading: Icon(Icons.home_filled),
    //               title: Text("Home"),
    //               onTap: () {},
    //             ),
    //             ListTile(
    //               leading: Icon(Icons.shopping_cart),
    //               title: Text("Shop"),
    //               onTap: () {},
    //             ),
    //             ListTile(
    //               leading: Icon(Icons.favorite),
    //               title: Text("Favorite"),
    //               onTap: () {},
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Text("Labels"),
    //             ),
    //             ListTile(
    //               leading: Icon(Icons.label),
    //               title: Text("Red"),
    //               onTap: () {},
    //             ),
    //             ListTile(
    //               leading: Icon(Icons.label),
    //               title: Text("Green"),
    //               onTap: () {},
    //             ),
    //             ListTile(
    //               leading: Icon(Icons.label),
    //               title: Text("Blue"),
    //               onTap: () {},
    //             ),
    //           ],
    //         )),
    //     body: Container(
    //         child: ListView.builder(
    //       itemCount: products.length,
    //       itemBuilder: (context, index) {
    //         return ListTile(
    //           leading: CircleAvatar(child: Text(products[index][0])),
    //           title: Text(products[index]),
    //           subtitle: Text(productDetails[index]),
    //           trailing: Text(price[index].toString()),
    //         );
    //       },
    //     )));
    // Scaffold(
    //     body: Container(
    //         //provide ability to scroll horz. or vert.
    //         child: ListView(
    //   //reverse:true,
    //   //it starts from the bottom for vertical scroll and right for horz.
    //   //scrollDirection: Axis.horizontal,
    //   itemExtent: 90.0,
    //   children: [
    //     ListTile(
    //       leading: CircleAvatar(
    //         child: Icon(Icons.alarm_on_sharp),
    //         backgroundColor: Colors.yellow,
    //       ),
    //       title: Text("Sales"),
    //       subtitle: Text("Sales of the week"),
    //       trailing: Icon(Icons.add),
    //       onTap: () {},
    //       tileColor: Colors.redAccent.shade400,
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.alarm_on_sharp),
    //       title: Text("Customers"),
    //       subtitle: Text("Total customers visited"),
    //       trailing: Icon(Icons.add),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.alarm_on_sharp),
    //       title: Text("Sales"),
    //       subtitle: Text("Sales of the week"),
    //       trailing: Icon(Icons.add),
    //     ),
    //   ],
    // )));
    // Scaffold(
    //     appBar: AppBar(
    //       title: Text("Rows and Colummns"),
    //       centerTitle: true,
    //     ),
    //     body: Container(
    //         color: Colors.purpleAccent,
    //         child: Column(
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
    //               children: [
    //                 Expanded(
    //                     child: Image(
    //                         image: AssetImage("images/thumbsup.png"),
    //                         height: 150.0,
    //                         width: 150.0)),
    //                 Expanded(
    //                     flex: 2,
    //                     child: Image(
    //                         image: AssetImage("images/thumbsup.png"),
    //                         height: 150.0,
    //                         width: 150.0)),
    //                 Expanded(
    //                     child: Image(
    //                         image: AssetImage("images/thumbsup.png"),
    //                         height: 150.0,
    //                         width: 150.0)),
    //               ],
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Icon(Icons.star),
    //                 Icon(Icons.star),
    //                 Icon(Icons.star),
    //                 Icon(Icons.star),
    //                 Icon(
    //                   Icons.star,
    //                 ),
    //               ],
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Column(
    //                   children: [
    //                     Icon(Icons.phone, size: 35.0),
    //                   ],
    //                 ),
    //                 Column(
    //                   children: [
    //                     Icon(Icons.alt_route_outlined, size: 35.0),
    //                   ],
    //                 ),
    //                 Column(
    //                   children: [
    //                     Icon(Icons.share, size: 35.0),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ],
    //         )));
    // Scaffold(
    //     //extendBodyBehindAppBar: true,
    //     appBar: AppBar(
    //       leading: IconButton(
    //         icon: Icon(Icons.menu),
    //         onPressed: () {},
    //       ),
    //       title: Text("Home"),
    //       actions: [
    //         IconButton(
    //           icon: Icon(Icons.shopping_cart),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.search),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.menu_book_outlined),
    //           onPressed: () {},
    //         )
    //       ],
    //       elevation: 5.0,
    //       titleSpacing: 60.0,
    //       //centerTitle: true,
    //       backgroundColor: Colors.purple.withOpacity(0.6),
    //       shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
    //       flexibleSpace: Image(
    //         image: AssetImage("images/thumbsup.png"),
    //         fit: BoxFit.fitHeight,
    //       ),
    //     ),
    //     body: Center(
    //       child: Text("AppBar Tutorial"),
    //     ));
    // Scaffold(
    //     body: Center(
    //         child: ElevatedButton.icon(
    //   //in elevated button icon comes first followed by
    //   //label text we can wrap it under directionality
    //   //widget then give textDirection as rtl
    //   //or change it back to Elevated button widget
    //   //create a row widget and put text in first
    //   //inside the children field
    //   //child: Text("Let's Begin"),
    //   icon: Icon(Icons.shopping_cart_checkout),
    //   label: Text("Let's Start"),
    //   onPressed: () {}, //to disable a button we can pass null to onPressed
    //   style: ElevatedButton.styleFrom(
    //     padding: EdgeInsets.all(20.0),
    //     fixedSize: Size(300, 80),
    //     textStyle: TextStyle(
    //       fontSize: 25,
    //       fontWeight: FontWeight.bold,
    //     ),
    //     primary: Colors.blueAccent,
    //     onPrimary: Colors.black87,
    //     elevation: 15,
    //     shadowColor: Colors.limeAccent,
    //     side: BorderSide(color: Colors.black87, width: 2),
    //     alignment: Alignment.center,
    //     shape: StadiumBorder(),
    //   ),
    // )));
  }
}
