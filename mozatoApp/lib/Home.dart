import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String quickbutton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: TextField(
            decoration: InputDecoration(
              hintText: "Search Loactaion here",
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    labelText: "Search here",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  )),
                  Row(
                    children: [
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blue,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {},
                        child: Text(
                          "Flat Button",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return foodCard();
              },
            ),
          ],
        ));
  }

  Widget quickButtons(String label, {icon}) {
    return RaisedButton.icon(
      onPressed: null,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.black)),
      label: Text(label),
      icon: icon,
    );
  }

  Widget foodCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 1,
      child: Container(
        height: 290,
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
                                  fontWeight: FontWeight.normal, fontSize: 10)),
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
                          "Follows all Max safety features to ensure that your\nfood is safe"),
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
                        child:
                            Icon(Icons.bookmark_rounded, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
