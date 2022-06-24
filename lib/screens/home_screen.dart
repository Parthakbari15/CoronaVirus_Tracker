import 'package:flutter/material.dart';
import '../utilities/const.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const url = "https://disease.sh/v3/covid-19/countries";
List _countries = [];

var confirmedCase,
    recoverdCase,
    death,
    totalCases,
    totalDeaths,
    totalRecoverd,
    activeCase,
    totalActive;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void fetchData() async {
    http.Response response = await http.get(Uri.parse(url));
    final countries = json.decode(response.body);
    setState(() {
      _countries = countries;
    });
    print(countries);
  }

  void getData(currentCountry) async {
    http.Response response =
        await http.get(Uri.parse(url + "/" + currentCountry));
    final data = json.decode(response.body);
    setState(() {
      confirmedCase = data['todayCases'];
      recoverdCase = data['todayRecovered'];
      death = data['todayDeaths'];
      totalCases = data['cases'];
      totalDeaths = data['deaths'];
      totalRecoverd = data['recovered'];
      totalActive = data['active'];
    });
  }

  void initState() {
    super.initState();
    fetchData();
  }

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
          _countries.isNotEmpty
              ? DropdownButton(
                  hint: Text("Select Country"),

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: _countries.map((value) {
                    return DropdownMenuItem(
                      value: value['country'],
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                value['countryInfo']['flag'].toString()),
                          ),
                          Text(
                            value['country'].toString(),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    getData(value);
                  },
                )
              : CircularProgressIndicator(),
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
                          confirmedCase.toString(),
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
                          recoverdCase.toString(),
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
                          death.toString(),
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
                          totalCases.toString(),
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
                          totalDeaths.toString(),
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
                          totalRecoverd.toString(),
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
                          totalActive.toString(),
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
