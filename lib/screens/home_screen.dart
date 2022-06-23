import 'package:flutter/material.dart';
import '../utilities/const.dart';
import 'package:lottie/lottie.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  var cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Corona Tracker"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: kTextFieldInputDecoration,
            onChanged: (value) {
              cityName = value;
              print(cityName);
            },
          ),
          FlatButton(
            color: Colors.lightGreen,
            onPressed: () {
              print(cityName);
            },
            child: Text(
              "Get Data",
              style: kTextStyle,
              softWrap: true,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Confirmed',
                          style: kTextStyle,
                        ),
                        Lottie.network(
                          'https://assets5.lottiefiles.com/packages/lf20_0cfzhvrk.json',
                          height: 100.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "12005",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Recovered',
                          style: kTextStyle,
                        ),
                        Lottie.network(
                          'https://assets6.lottiefiles.com/packages/lf20_3xgahwks.json',
                          height: 100.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "12005",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '   Death   ',
                          style: kTextStyle,
                        ),
                        Lottie.network(
                          'https://assets7.lottiefiles.com/packages/lf20_qbs9tis8.json',
                          height: 100.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "1200",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Overall Report",
            style: kTextStyle,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Lottie.network(
                          'https://assets6.lottiefiles.com/packages/lf20_tutvdkg0.json',
                          height: 110.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "Cases",
                          style: kTextStyle,
                        ),
                        Text(
                          "1890",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Lottie.network(
                          'https://assets4.lottiefiles.com/packages/lf20_k1bBqD.json',
                          height: 110.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "Deaths",
                          style: kTextStyle,
                        ),
                        Text(
                          "189025",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_bkmppjns.json',
                          height: 110.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "Recoverd",
                          style: kTextStyle,
                        ),
                        Text(
                          "1890",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Lottie.network(
                          'https://assets10.lottiefiles.com/datafiles/7U1rGDhr3RKjEj2/data.json',
                          height: 110.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                        Text(
                          "Active",
                          style: kTextStyle,
                        ),
                        Text(
                          "1890255544545",
                          style: kTextStyle,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
