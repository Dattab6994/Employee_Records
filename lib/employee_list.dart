import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';
import 'package:employee_details/employee_details.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class EmployeeListViewPage extends StatefulWidget {
  const EmployeeListViewPage({Key? key}) : super(key: key);

  @override
  State<EmployeeListViewPage> createState() => _EmployeeListViewPageState();
}

class _EmployeeListViewPageState extends State<EmployeeListViewPage> {
  List data = [];

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/employees.json');
    setState(() => data = json.decode(jsonText));
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        title: const Text(
          'Employees List',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: AlphabetScrollView(
              list: data.map((e) => AlphaModel('firstName')).toList(),
              isAlphabetsFiltered: true,
              alignment: LetterAlignment.right,
              itemExtent: 50,
              unselectedTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
              selectedTextStyle: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
              itemBuilder: (_, index, string) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ListTile(
                      title: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmployeeDetailsPage(
                                        list: data,
                                        index: index,
                                      )),
                            );
                          },
                          child: Text(data[index]['firstName'] +
                              ' ' +
                              data[index]['lastName'])),
                      leading: Image.network(
                        data[index]['imageUrl'],
                        height: 30,
                        width: 50,
                      )),
                );
              },
            ),
          )
        ],
      ),

      // Padding(
      //   padding: const EdgeInsets.all(25),
      //   child: ListView.builder(
      //                 // ignore: unnecessary_null_comparison
      //                 itemCount: data == null ? 0 : data.length,
      //                 itemBuilder: (BuildContext context, int index) {
      //                   var name = data[index]['firstName'];
      //                   var email = data[index]['lastName'];
      //                   var img = data[index]['imageUrl'];

      //                   return Column(
      //                     children: <Widget>[
      //                       ListTile(
      //                         leading: CircleAvatar(child: Image.network(img)),
      //                         title: Text(name),
      //                         subtitle: Text(email),
      //                       ),
      //                       const Divider(),
      //                     ],
      //                   );
      //                 }),
      // ),
    );
  }
}
