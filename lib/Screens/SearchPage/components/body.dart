// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:auth_oriza/Screens/SearchPage/components/dummy_data.dart';
import 'package:auth_oriza/Screens/SearchPage/components/searchwidget.dart';
import 'package:auth_oriza/Screens/SearchPage/components/value_data.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _Body1State();
}

class _Body1State extends State<Body> {
  late List<Data1> datas;
  String query = '';

  @override
  void initState() {
    super.initState();

    datas = allData;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          buildSearch(),
          Expanded(
            child: ListView.builder(
              itemCount: datas.length,
              itemBuilder: (BuildContext context, int index) {
                final data = datas[index];

                return buildData1(data);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: "Search...",
        onChanged: searchData,
      );

  Widget buildData1(Data1 data) => ListTile(
        leading: Image.asset(
          data.assetImage,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(data.name),
        subtitle: Text(data.price),
      );

  void searchData(String query) {
    final datas = allData.where((data) {
      final nameLower = data.name.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.datas = datas;
    });
  }
}
