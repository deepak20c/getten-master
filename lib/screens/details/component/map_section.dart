import 'package:flutter/material.dart';
import 'package:getten/screens/home/component/row_heading.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSection extends StatefulWidget {
  const MapSection({super.key});

  @override
  State<MapSection> createState() => _MapSectionState();
}

class _MapSectionState extends State<MapSection> {
  GoogleMapController? _controller;

  @override
  void dispose() {
    _controller
        ?.dispose(); // Dispose the controller when it's no longer needed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RowHeadings(
            startText: 'Get Direction',
            endText: 'See on Map',
            onTapped: () {},
          ),
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          SizedBox(
            height: dimensions.getScreenHeight * 0.2,
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(40.7128, -74.0060),
                zoom: 14.0,
              ),
              onMapCreated: (controller) {
                _controller =
                    controller; // Assign the controller when it's created.
              },
            ),
          ),
        ],
      ),
    );
  }
}
