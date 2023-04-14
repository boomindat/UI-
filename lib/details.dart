import 'package:clickcounter/model/product_model.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({Key? key, required this.productDetails}) : super(key: key);
  ProductDetails productDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                ),
                leading: IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    productDetails.isTopProduct
                        ? const Chip(
                            label: Text("Top Product"),
                            backgroundColor: Colors.deepPurpleAccent,
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          )
                        : const Text(""),
                    Text(productDetails.productName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                    Text(productDetails.productDetails),
                    Row(children: [
                      OutlinedButton(
                          onPressed: () {},
                          child: Text(productDetails.productSize)),
                      SizedBox(
                        width: 10.0,
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          child: Text(productDetails.productType.name))
                    ])
                  ],
                ),
              )
            ],
          )),
    );
  }
}
