// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmployeeDetailsPage extends StatefulWidget {
  final List list;
  final int index;
  const EmployeeDetailsPage({
    Key? key,
    required this.list,
    required this.index,
  }) : super(key: key);

  @override
  State<EmployeeDetailsPage> createState() => _EmployeeDetailsStatePage();
}

class _EmployeeDetailsStatePage extends State<EmployeeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Details'),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Colors.blue.shade50,
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      widget.list[widget.index]['imageUrl'],
                      height: 70,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          'ID : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['id'].toString(),
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Name : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            widget.list[widget.index]['firstName'] +
                                '  ' +
                                widget.list[widget.index]['lastName'],
                            style: const TextStyle(fontSize: 16.0)),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Age : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['age'].toString(),
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Salary : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['salary'].toString(),
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Date of Birth : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['dob'].toString(),
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Mobile no : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['contactNumber'],
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Email : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['email'],
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Address : ',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.list[widget.index]['address'],
                          style: const TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
