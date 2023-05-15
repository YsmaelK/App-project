import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_nprice;
  final product_detail_oprice;
  final product_detail_picture;
  final product_location;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_nprice,
      this.product_detail_oprice,
      this.product_detail_picture,
      this.product_location});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('App'),
        actions: [
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.location_on_rounded, color: Colors.white),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));},
          ),

        ],
      ),
      body: new ListView(
        children: [
          new Container(
              height: 300.0,
              child: GridTile(
                  child: Container(
                      color: Colors.white70,
                      child: Image.asset(widget.product_detail_picture)),
                  footer: new Container(
                      color: Colors.white70,
                      child: ListTile(
                        leading: new Text(
                          widget.product_detail_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        title: new Row(
                          children: [
                            Expanded(
                              child: new Text(
                                  "\$${widget.product_detail_oprice}",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough)),
                            ),
                            Expanded(
                                child: new Text(
                                    "\$${widget.product_detail_nprice}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)))
                          ],
                        ),
                      )))),

          // ======================= THE FIRST BUTTONS =======================
          Row(
              children: [
                // =================== THE SIZE BUTTON =========================
               /* Expanded(
                    child:MaterialButton(onPressed: (){},
                      color: Colors.white,
                      textColor: Colors.grey,
                        elevation: 0.2,
                      child: Row(
                        children: [
                          Expanded(
                              child: new Text("size"),
                          ),
                          Expanded(
                            child: new Icon(Icons.arrow_drop_down),
                          )
                        ],
                      )
                    )
                ),*/

              ],
            ),
      // OPTIONS BUTTON
      Row(
        children: [
          Expanded(
          child: new ListTile(
              title: new Text("John Smith"),
            //subtitle: new Text(""),

          )
          ),
          Expanded(
              child:MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: new Text("\$85\n4 m."),

                      ),
                      Expanded(
                        child: new Icon(Icons.shopping_cart_checkout_outlined),
                      )
                    ],
                  )
              )
          ),


  ]
      ),
          Row(
              children: [
                Expanded(
                    child: new ListTile(
                      title: new Text("Casey Hernandez"),
                      //subtitle: new Text(""),

                    )
                ),
                Expanded(
                    child:MaterialButton(onPressed: (){},
                        color: Colors.white,
                        textColor: Colors.grey,
                        elevation: 0.2,
                        child: Row(
                          children: [
                            Expanded(
                              child: new Text("\$95\n9 m."),

                            ),
                            Expanded(
                              child: new Icon(Icons.shopping_cart_checkout_outlined),
                            )
                          ],
                        )
                    )
                ),


              ]
          ),

        ],

      ),
    );
  }
}
