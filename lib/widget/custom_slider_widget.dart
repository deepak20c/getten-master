import 'package:flutter/material.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomCarouselSlider extends StatefulWidget {
  final List<String> imagesURL;
  final double height;
  final double viewportFraction;
  const CustomCarouselSlider(
      {super.key,
      required this.imagesURL,
      required this.height,
      required this.viewportFraction});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider>
    with TickerProviderStateMixin {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SizedBox(
      height: dimensions.getScreenHeight * 0.2,
      child: PageView.builder(
        itemCount: widget.imagesURL.length,
        physics: const BouncingScrollPhysics(),
        controller: PageController(
          initialPage: 2,
          viewportFraction: widget.viewportFraction,
        ),
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  widget.imagesURL[index],
                ),
              ),
              borderRadius: BorderRadius.circular(
                dimensions.getScreenWidth * 0.025,
              ),
            ),
          );
        },
      ),
    );
  }
}
