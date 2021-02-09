import 'package:flutter/material.dart';
import 'package:mozatoApp/Hoteldetails.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(
                Icons.location_pin,
              ),
              Text(
                "Khar, West",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ]),
          ),
          searchBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: quickButtons()),
          ),
          Divider(
            height: 8,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height, child: foodCard()),
        ],
      ),
    ));
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        elevation: 5,
        child: Container(
          height: 50,
          child: TextField(
              decoration: InputDecoration(
                  focusColor: Colors.grey,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search here",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))))),
        ),
      ),
    );
  }

  Widget quickButtons() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FlatButton(
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            onPressed: null,
            child: Text("Filter"),
          ),
        );
      },
    );
  }

  Widget foodCard() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => HotelDetails())),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              elevation: 3,
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0)),
                            child: Image(
                              image: AssetImage("assets/food.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(
                                text: "Burger King \n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Buger, Fast Food, Beverages",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10)),
                                ],
                              )),
                              RichText(
                                  textAlign: TextAlign.right,
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: " ⭐	4.1 ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: "/5 \n",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                    TextSpan(
                                        text: "₹ 150 for one",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10))
                                  ]))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.grey,
                              ),
                              Text(
                                  "Follows all Max safety features to ensure \nthat your food is safe"),
                              Icon(
                                Icons.arrow_circle_up_sharp,
                                color: Colors.purple,
                              ),
                              Icon(Icons.shield, color: Colors.lightBlue)
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.bookmark_rounded,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 90.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "  40% OFF  ",
                                      style: TextStyle(
                                          backgroundColor: Colors.blue,
                                          letterSpacing: 1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        "20-30 mins",
                                        style: TextStyle(
                                            backgroundColor: Colors.white,
                                            color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
