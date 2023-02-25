import 'package:flutter/material.dart';
import 'package:kost_app_flutter/models/city2.dart';
import 'package:kost_app_flutter/theme.dart';
import 'package:intl/intl.dart';

final value = NumberFormat("#,##0", "en_US");

class CityCard2 extends StatelessWidget {
  final City2 city2;

  const CityCard2(this.city2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                width: 130,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          city2.imageUrl,
                          width: 130,
                          height: 102,
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                            child: Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                color: primaryColor,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Image.asset(
                                    'assets/icons/main/starActive.png',
                                    width: 16,
                                    height: 16,
                                    color: const Color(0xffF66D6D),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${city2.rating}/5',
                                    style: textWhite.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  city2.name,
                  style: textBlack.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      'IDR ${value.format(city2.price)}',
                      style: textPrimary.copyWith(fontSize: 14),
                    ),
                    Text(
                      ' / Month',
                      style: textGrey.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  city2.address,
                  style: textGrey.copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
