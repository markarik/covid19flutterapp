
import 'package:covid19flutterapp/model/CovidData.dart';
import 'package:covid19flutterapp/model/api.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<CovidData> listCovidData;

  bool isLoading = false;

  Future _fetchCovidData() async {
    setState(() {
      isLoading = true;
    });
    listCovidData = await getCovidData();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    _fetchCovidData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : 
            ListView.separated(
                itemBuilder: (context, index) {
                  CovidData covidData = listCovidData[index];
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Text('Total Confirmed : ' +
                          covidData.totalConfirmed.toString()),
                      subtitle: Text('Total Recovered' +
                          covidData.totalRecovered.toString()),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  color: Colors.green,
                  height: 1,
                ),
                itemCount: listCovidData.length,
              )
              );
  }
}