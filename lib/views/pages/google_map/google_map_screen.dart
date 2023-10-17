import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  static const LatLng _pGooglePlex = LatLng(28.4212, 70.2989);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: _pGooglePlex, zoom: 13)),
    );
  }
}
