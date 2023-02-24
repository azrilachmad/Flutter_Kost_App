import 'package:flutter/material.dart';
import 'package:kost_app_flutter/pages/homePage/home_page.dart';
import 'package:kost_app_flutter/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/splash/splash-image.png',
                  width: double.infinity),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/splash/logo.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text('Find Cozy House\nto Stay and Happy',
                      style: textBlack.copyWith(fontSize: 24)),
                  const SizedBox(height: 10),
                  Text(
                      'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                      style: textGrey.copyWith(fontSize: 16)),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                      child: Text(
                        'Explore Now',
                        style: textWhite.copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: 23)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
