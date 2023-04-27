import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelify_app/config/app_color.dart';
import 'package:hotelify_app/config/app_route.dart';
import 'package:hotelify_app/config/session.dart';
import 'package:hotelify_app/firebase_options.dart';
import 'package:hotelify_app/page/checkout_page.dart';
import 'package:hotelify_app/page/checkout_success_page.dart';
import 'package:hotelify_app/page/detail_booking_page.dart';
import 'package:hotelify_app/page/detail_page.dart';
import 'package:hotelify_app/page/home_page.dart';
import 'package:hotelify_app/page/intro_page.dart';
import 'package:hotelify_app/page/signin_page.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'model/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initializeDateFormatting('en_US');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: AppColor.backgroundScaffold,
        primaryColor: AppColor.primary,
        colorScheme: const ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.primary,
        ),
        
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            future: Session.getUser(),
            builder: (context, AsyncSnapshot<User> snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return  IntroPage();
              } else {
                return HomePage();
              }
            },
          );
        },
        AppRoute.intro: (context) => IntroPage(),
        AppRoute.home: (context) => HomePage(),
        AppRoute.signin: (context) => SigninPage(),
        AppRoute.detail: (context) =>  DetailPage(),
        AppRoute.checkout: (context) =>  CheckoutPage(),
        //AppRoute.checkout: (context) =>  IntroPage(),
        AppRoute.checkoutSuccess: (context) => CheckoutSuccessPage(),
        AppRoute.detailBooking: (context) => DetailBookingPage(),
      },
    );
  }
}
