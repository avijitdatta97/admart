import 'package:admart/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogo extends StatefulWidget {
  const AppLogo({
    super.key,
  });

  @override
  State<AppLogo> createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetsPath.appLogoSvg, width: 100,);
  }
}