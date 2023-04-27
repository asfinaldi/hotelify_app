import 'package:flutter/material.dart';
import 'package:hotelify_app/config/app_asset.dart';

class CoomingSoon extends StatelessWidget {
  const CoomingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppAsset.iconComingSoon,
            fit: BoxFit.fitHeight,
            height: 120,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Coming Soon',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
          height: 8.0,
          ),
                    const Text(
            'We are developing this page\nfor new great features',
            style: TextStyle(
              
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
