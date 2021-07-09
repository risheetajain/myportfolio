import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class GoogleMaps extends StatefulWidget {
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  GoogleMapController mapController;
  static final LatLng _center = const LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;
  final geoLocator = Geolocator();

  Position position;

  Future<Position> _determinePosition() async {
    position = await Geolocator.getCurrentPosition();
    setState(() {});
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    _determinePosition();
    getCurrentLocation();
    super.initState();
  }

  void getCurrentLocation() async {
    print(_determinePosition());
    position = await _determinePosition();
//     final coordinates = new Coordinates(position.latitude, position.longitude);
//  var addres = await Geocoder.local.findAddressesFromCoordinates(coordinates);
// address= addres.first;
// print("${address.featureName} : ${address.addressLine}");

    setState(() {
      print(position.latitude);
    });
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_currentMapPosition.toString()),
        position: LatLng(position.latitude, position.longitude),
        infoWindow: InfoWindow(
            title: "address.featureName", snippet: "address.addressLine"),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _currentMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            position == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(position.latitude, position.longitude),
                      zoom: 10.0,
                    ),
                    markers: _markers,
                    onCameraMove: _onCameraMove),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: _onAddMarkerButtonPressed,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.map, size: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
