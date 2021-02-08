import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 160.0),
                child: FlatButton(
                  onPressed: null,
                  child: Text(
                    "more info",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 257,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 8.0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Burger King\n",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                          TextSpan(text: "⭐⭐⭐⭐"),
                          TextSpan(
                              text: "4.3",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                              text: "(23.4K Reviews)\n",
                              style: TextStyle(color: Colors.grey)),
                          TextSpan(
                              text: "Burger, FastFood, Beverages",
                              style: TextStyle(color: Colors.grey))
                        ]),
                      ),
                    ),
                    Row(
                      children: [
                        FlatButton(
                            onPressed: null,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timelapse_rounded,
                                  size: 15,
                                ),
                                Text(
                                  "  20-30 mins",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.directions_outlined,
                                  size: 15,
                                ),
                                Text(
                                  "  live tracking",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ))
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.arrow_circle_up_rounded,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            "34400+ people ordered from here since lockdown",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.shield,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.circle_notifications,
                            color: Colors.blueGrey,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blue,
                            onPressed: null,
                            splashColor: Colors.blue,
                            child: Text("40% OFF")),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
              child: Container(
                color: Colors.grey[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
