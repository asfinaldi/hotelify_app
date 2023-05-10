import 'package:flutter/material.dart';
import 'package:hotelify_app/config/app_asset.dart';
import 'package:hotelify_app/config/app_route.dart';
import 'package:hotelify_app/widget/button_custom.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          AppAsset.bgIntro,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 521.0,
              // ),
              const Text(
                'Your Great Life\nStarts Here',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'More than just a hotel',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ButtonCustom(
                label: 'Get Started',
                onTap: () {
                  Navigator.pushReplacementNamed(context, AppRoute.signin);
                },
                isExpand: true,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
