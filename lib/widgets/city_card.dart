import 'package:flutter/material.dart';
import 'package:kost_app_flutter/models/city.dart';
import 'package:kost_app_flutter/theme.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          ),
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: primaryColor,
                            ),
                            child: Image.asset(
                              'assets/icons/main/starActive.png',
                              scale: 2,
                              color: const Color(0xffF66D6D),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(height: 11),
            Text(
              city.name,
              style: textBlack.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
