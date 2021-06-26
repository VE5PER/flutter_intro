import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class portrait extends StatelessWidget {
  const portrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue),
              )),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Text(
                            "Blue Black Nike Shoes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                "35%",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.green),
                              ),
                              Text(
                                "£75",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Available sizes",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttonGen("UK7"),
                        buttonGen("UK8"),
                        buttonGen("UK9"),
                        buttonGen("UK10"),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textGen(
                                  "Cash On Delivery option available, Only VISA and MASTERCARD."),
                              textGen(
                                  "Return the shipment within 30 days from purchase.")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Product Details",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                    textGen("Full-length BRS 1000 carbon fiber rubber Waffle outsole for durability and traction."),
                    textGen("Phylon forfoot provides a great toe-off, Low-top design for added mobility."),
                    textGen("Breathable mesh uppers with synthetic overlays provide ventilation and support."),
                  ],
                  
                ),
              ))
        ],
      ),
    );
  }
}

Widget buttonGen(String txt) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 3),
    child: TextButton(
      onPressed: () {},
      child: Text(txt),
      style: TextButton.styleFrom(
        primary: Colors.blue[800],
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
  );
}

Widget textGen(String str) {
  return RichText(
      text: TextSpan(children: [
    WidgetSpan(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
        child: Icon(
          Icons.circle,
          size: 12,
          color: Colors.blue[800],
        ),
      ),
    ),
    TextSpan(
        text: str,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        )),
  ]));
}
