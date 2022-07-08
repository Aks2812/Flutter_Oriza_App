// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:auth_oriza/Screens/SearchPage/components/dummy_data.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final controller = TextEditingController();
  List<Data1> data = allData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black45),
                ),
              ),
              onChanged: (String query) {
                final suggestions = allData.where((Data1) {
                  final dataName = Data1.name.toLowerCase();
                  final input = query.toLowerCase();

                  return dataName.contains(input);
                }).toList();

                setState(() => data = suggestions);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final data = allData[index];

                  return ListTile(
                    leading: Image.asset(
                      data.assetImage,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(data.name),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
