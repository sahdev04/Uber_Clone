import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/models/driver_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController _mapController;
  List<DriverModel> _drivers = [];
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadDrivers();
  }

  _loadDrivers() async {
    final drivers = await DriverService().getDrivers();
    setState(() {
      _drivers = drivers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uber Clone'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              _mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194),
              zoom: 12,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 300,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              width: 300,
              child: ListView.builder(
                itemCount: _drivers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_drivers[index].name),
                    subtitle: Text(_drivers[index].carModel),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DriverService() {
}