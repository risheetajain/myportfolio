
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
//import 'package:flutter/services.dart';
//import 'package:geocoding/geocoding.dart';

class Maps extends StatefulWidget {

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Position position;
  final Map<String,Marker> _markr={};
  Address first;
  //List<Pla

  final Geolocator geolocator=Geolocator();

  GoogleMapController mapController;
  void _getCurrentLocation() async{
    position =await Geolocator.getCurrentPosition
      (desiredAccuracy: LocationAccuracy.high);
     setState(() {
       _markr.clear();
       final marker=Marker(
     markerId:MarkerId('CURRENT_LOC'),
     position: LatLng(position.latitude,position.longitude),
     infoWindow: InfoWindow(title: 'YOUR LOCATION')
       );
       _markr["CURRENT_LOCATION"]=marker;
     });
    print(position);

  }

 LatLng _latLng=LatLng(22.7196, 75.8577);
  void _onMapCreated(GoogleMapController _cntrl) async {
  mapController =  _cntrl;
}
  _getAddressFromLatLng() async {
    final  coordinates = new Coordinates(
        position.latitude, position.longitude);
    var addresses =
    await Geocoder.local.findAddressesFromCoordinates(coordinates);
    first = addresses.first;
    print(' ${first.locality}, ${first.adminArea},${first.subLocality}, ${first.subAdminArea},${first.addressLine}, ${first.featureName},${first.thoroughfare}, ${first.subThoroughfare}');
    print(first);
    return first;

  }

@override
void initState() {

    super.initState();
    _getCurrentLocation();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),),
bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(
      icon: IconButton(icon: Icon(Icons.location_on), onPressed: (){
       showDialog(
         context:context,
         builder:(BuildContext context){
           return AlertDialog(
             title: Text('Current Location'),
             content: Text(first.toString()),
             actions: [
               FlatButton(onPressed: (){
                 Navigator.pop(context);
               }, child: Text('ok'))
             ],
           );
         }
       );
      }),
      title: Text('location_on')
  ),BottomNavigationBarItem(
      icon: IconButton(icon: Icon(Icons.navigate_next), onPressed: (){
        _getAddressFromLatLng();
      },),
      title: Text('navigate_next')
  )]),
//
//      floatingActionButton: FloatingActionButton(
//  child: IconButton(icon: Icon(Icons.), onPressed: (){
//
//
//
//  Navigator.push(context,
////      MaterialPageRoute(builder: (context)=>Textfields(first)));
//  })
//    ,
//),
        body: Stack(children:[
                GoogleMap(
                  initialCameraPosition:
                  CameraPosition(target: _latLng, zoom: 5),
                  mapType: MapType.normal,
                  onMapCreated: _onMapCreated,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  zoomControlsEnabled: false,
                  markers: _markr.values.toSet(),
                ),

    ]
        )
              ,


        );
  }
}