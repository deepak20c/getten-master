import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BodyMapScreen extends StatefulWidget {
  const BodyMapScreen({super.key});

  @override
  State<BodyMapScreen> createState() => _BodyMapScreen();
}

class _BodyMapScreen extends State<BodyMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(45.521563, -122.677433);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType currentMapType = MapType.normal;

  void onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: const InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          mapType: currentMapType,
          markers: _markers,
          onCameraMove: _onCameraMove,
        ),
        Positioned(
          bottom: dimensions.getScreenHeight * 0.02,
          child: SizedBox(
            width: dimensions.getScreenWidth * 0.8,
            child: CustomLongButtonWidget(
              height: dimensions.getScreenHeight * 0.065,
              text: 'Done',
              textFontSize: dimensions.getScreenWidth * 0.04,
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              onPressed: () {
                Get.offNamed(RoutesName.navigatorScreen);
              },
            ),
          ),
        ),
      ],
    );
  }
}
