import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../theme/index.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingIndicator(
        indicatorType: Indicator.ballScale,
        colors: _kDefaultRainbowColors,
        strokeWidth: 2.0,
        pathBackgroundColor: Colors.transparent,
      ),
    );
  }
}

List<Color> _kDefaultRainbowColors = [
  primary,
  primaryDark,
  primaryPale,
  accentDark,
];
