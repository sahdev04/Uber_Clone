import 'package:flutter/material.dart';
import 'package:uber_clone/models/driver_model.dart';

class DriverListScreen extends StatelessWidget {
  final List<DriverModel> drivers;

  DriverListScreen({required this.drivers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver List'),
      ),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) => ListTile( // or { ... } for a more complex widget
          title: Text(drivers[index].name), // assuming DriverModel has a 'name' property
        ),
      ),
    );
  }
}