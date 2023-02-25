import 'package:flutter/material.dart';
import 'package:kost_app_flutter/theme.dart';
import 'package:kost_app_flutter/widgets/city_card.dart';

import '../../models/city.dart';
import '../../models/city2.dart';
import '../../widgets/city_card2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
        ),
        child: ListView(
          children: [
            // NOTE: HOME TITLE
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Explore Now',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Mencari kosan yang cozy',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff82868E),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: textBlack.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // NOTE: POPULAR CITIES
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  CityCard(
                    City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/mainMenu/city1.png',
                        isPopular: true),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/mainMenu/city2.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Bandung',
                      imageUrl: 'assets/images/mainMenu/city3.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Semarang',
                      imageUrl: 'assets/images/mainMenu/city1.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Yogyakarta',
                      imageUrl: 'assets/images/mainMenu/city2.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 5,
                      name: 'Malang',
                      imageUrl: 'assets/images/mainMenu/city3.png',
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            // NOTE : RECOMMENDED SPACE
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Recommended Space',
                style: textBlack.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // NOTE : RECOMMENDED SPACE LIST
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CityCard2(
                    City2(
                        id: 1,
                        rating: 4.toString(),
                        imageUrl: 'assets/images/mainMenu/house1.png',
                        name: 'Kurotakeso Hut',
                        price: 530000,
                        address: 'Malang, Indoensia'),
                  ),
                  const SizedBox(height: 30),
                  CityCard2(
                    City2(
                        id: 2,
                        rating: 4.5.toString(),
                        imageUrl: 'assets/images/mainMenu/house2.png',
                        name: 'Kost Pak Haji Dedi',
                        price: 650000,
                        address: 'Bandung, Indonesia'),
                  ),
                  const SizedBox(height: 30),
                  CityCard2(
                    City2(
                        id: 3,
                        rating: 4.6.toString(),
                        imageUrl: 'assets/images/mainMenu/house1.png',
                        name: 'Roemah Kakek',
                        price: 575000,
                        address: 'Jakarta, Indonesia'),
                  ),
                  const SizedBox(height: 30),
                  CityCard2(
                    City2(
                        id: 4,
                        rating: 4.2.toString(),
                        imageUrl: 'assets/images/mainMenu/house1.png',
                        name: 'Kost Malioboro',
                        price: 425000,
                        address: 'Yogyakarta, Indonesia'),
                  ),
                  const SizedBox(height: 30),
                  CityCard2(
                    City2(
                        id: 4,
                        rating: 4.2.toString(),
                        imageUrl: 'assets/images/mainMenu/house1.png',
                        name: 'Kost Kebo Ijen',
                        price: 750000,
                        address: 'Semarang, Indonesia'),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
