import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:scb_app/src/pages/locate_us/locate_us_controller.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/spacer_widget.dart';

class LocateUsPage extends StatefulWidget {
  const LocateUsPage({super.key});

  @override
  State<LocateUsPage> createState() => _LocateUsPageState();
}

class _LocateUsPageState extends State<LocateUsPage>
    with SingleTickerProviderStateMixin {
  final LocateUsController _con = LocateUsController();
  late TabController _tabController;
  CameraPosition? initialPosition =
      const CameraPosition(target: LatLng(-16.495692, -68.1340794), zoom: 17.0);
  final Completer<GoogleMapController> _mapController = Completer();
  Set<Marker> markers = {};
  BitmapDescriptor? markerDriver;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<BitmapDescriptor> createMarkerImageFromAsset(String path) async {
    ImageConfiguration configuration =
        const ImageConfiguration(size: Size(10, 10));
    BitmapDescriptor bitmapDescriptor =
        await BitmapDescriptor.fromAssetImage(configuration, path);
    return bitmapDescriptor;
  }

  Future<List<Marker>> fetchMarkers() async {
    markerDriver =
        await createMarkerImageFromAsset('assets/images/ic_location.png');
    return [
      Marker(
        markerId: const MarkerId('Marker1'),
        position: const LatLng(-16.495692, -68.1340794),
        infoWindow: const InfoWindow(title: 'Ubicación 1'),
        icon: markerDriver!,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Marker>>(
      future: fetchMarkers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.5,
              title: const Text(""),
              backgroundColor: AppTheme.kLightColor,
              foregroundColor: AppTheme.kPrimaryColor,
            ),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ubícanos",
                          textAlign: TextAlign.start,
                          style: AppTheme.headText3Secondary,
                        ),
                        const SpacerWidget(),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: AppTheme.kLightColor),
                          child: TextFormField(
                            controller: _con.userDocumentController,
                            style: TextStyle(color: AppTheme.kDarkColor),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              hintText: 'Ingresa una dirección',
                              labelStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3)),
                              hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        const SpacerWidget(),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: TabBar(
                            controller: _tabController,
                            tabs: [
                              Tab(text: 'Oficinas'),
                              Tab(text: 'Agentes'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SpacerWidget(),
                  Expanded(
                    child: Center(
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: initialPosition!,
                        onMapCreated: onMapCreated,
                        myLocationEnabled: true,
                        myLocationButtonEnabled: true,
                        markers: Set<Marker>.of(snapshot.data!),
                        onCameraMove: (position) {},
                        onCameraIdle: () async {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  void onMapCreated(GoogleMapController controller) {
    _mapController.complete(controller);
  }

  Widget _googleMapsWidget() {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: initialPosition!,
      onMapCreated: onMapCreated,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      markers: markers,
      onCameraMove: (position) {},
      onCameraIdle: () async {},
    );
  }
}
