import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:robbin_hood_google_soln/utils/app_colors.dart';

class ShopMaps extends StatefulWidget {
  const ShopMaps({Key? key}) : super(key: key);

  @override
  _ShopMapsState createState() => _ShopMapsState();
}

class _ShopMapsState extends State<ShopMaps> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);
  static CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 10, tilt: 0, bearing: 0);
  late GoogleMapController _controller;
  Future<void> onMapCreated(GoogleMapController controller) async {
    _controller = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('mapStyle/map_style.json');
    _controller.setMapStyle(value);
  }

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), 'images/mapIcons/share_food.png')
        .then((icon) {
      setState(() {
        markerIcon = icon;
      });
    });
  }

  // Set<Marker> _createMarker() {
  //   return {
  //     Marker(
  //       markerId: MarkerId("Pets Barn"),
  //       position: LatLng(19.13902910622346, 72.82586458465644),
  //       infoWindow: InfoWindow(title: 'Pets Barn'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Air Pets Relocation"),
  //       position: LatLng(28.528694, 77.086746),
  //       infoWindow: InfoWindow(title: 'Air Pets Relocation'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Heavy Petting"),
  //       position: LatLng(12.909888005923161, 77.63836351534354),
  //       infoWindow: InfoWindow(title: 'Heavy Petting'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Tamed Pets"),
  //       position: LatLng(12.977240831594784, 80.2221304693129),
  //       infoWindow: InfoWindow(title: 'Tamed Pets'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Pets Arena"),
  //       position: LatLng(22.612304163979697, 88.385215),
  //       infoWindow: InfoWindow(title: 'Pets Arena'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Dogs & Pets"),
  //       position: LatLng(26.858083022427323, 81.00033369259515),
  //       infoWindow: InfoWindow(title: 'Dogs & Pets'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Tarzoo Pet Care"),
  //       position: LatLng(20.256627956210618, 85.82558588465646),
  //       infoWindow: InfoWindow(title: 'Tarzoo Pet Care'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Pets Life Style"),
  //       position: LatLng(23.21832981576014, 77.42824961534355),
  //       infoWindow: InfoWindow(title: 'Pets Life Style'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Aman Dog Kennel"),
  //       position: LatLng(23.358758871506613, 85.33764307671775),
  //       infoWindow: InfoWindow(title: 'Aman Dog Kennel'),
  //       icon: markerIcon,
  //     ),
  //     Marker(
  //       markerId: MarkerId("Pets Paradise"),
  //       position: LatLng(23.636820501798237, 86.1639867),
  //       infoWindow: InfoWindow(title: 'Pets Paradise'),
  //       icon: markerIcon,
  //     ),
  //   };
  // }

  //

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _controller
      //       .animateCamera(CameraUpdate.newCameraPosition(_kInitialPosition)),
      //   child: const Icon(Icons.center_focus_strong),
      // ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
            onMapCreated: onMapCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            // zoomControlsEnabled: true,
          ),
          Positioned(
            top: 75,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_outlined)),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: AppColors.backGroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Donating Address:",
                    style: TextStyle(
                        fontSize: 18, letterSpacing: 1, color: Colors.grey),
                  ),
                  const Text(
                    "503/A Thane, Mumbai",
                    style: TextStyle(fontSize: 18, letterSpacing: 1),
                  ),
                  const Divider(
                    color: Colors.black45,
                    thickness: 0.7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/portrait-happy-male-with-broad-smile_176532-8175.jpg?size=626&ext=jpg&uid=R48191266&ga=GA1.1.1399549575.1672332440&semt=sph"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rohan Sharma",
                            style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Volunteer",
                            style:
                                TextStyle(letterSpacing: 1, color: Colors.grey),
                          )
                        ],
                      ),
                      Container(
                        decoration: const ShapeDecoration(
                          color: Colors.green,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.message,
                            color: AppColors.backGroundColor,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const ShapeDecoration(
                          color: Colors.green,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.call,
                            color: AppColors.backGroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Live Tracking',
                        style: TextStyle(fontSize: 18, letterSpacing: 1),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Utils {
  static String mapStyles = '''[
  {
    "featureType": "poi.attraction",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.government",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.medical",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.place_of_worship",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.school",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.sports_complex",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "on"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.station.airport",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.station.bus",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.station.rail",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
]''';
}
