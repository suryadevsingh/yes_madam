import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();

}
class _MyAppState extends State<Map>{
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.5215623, -122.677433);
  void _onMapCreated(GoogleMapController controller){
    mapController=controller;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Location"),
          backgroundColor: Colors.green[700],
      ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(icon: Icon(Icons.arrow_back,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

}