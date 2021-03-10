import 'package:bwakos/model/city.dart';
import 'package:bwakos/model/space.dart';
import 'package:bwakos/model/tips.dart';
import 'package:bwakos/theme.dart';
import 'package:bwakos/widget/bottom_nav_bar.dart';
import 'package:bwakos/widget/city_card.dart';
import 'package:bwakos/widget/space_card.dart';
import 'package:bwakos/widget/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
            //note: TITLE/HEADER
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //note: popular cities
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCardWidget(
                    city: CityModel(
                        id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCardWidget(
                    city: CityModel(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCardWidget(
                    city: CityModel(
                        id: 2, name: 'Surabaya', imageUrl: 'assets/city3.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //note: recommended space
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SpaceCard(
                    space: SpaceModel(
                        id: 1,
                        city: 'Serang',
                        country: 'Indonesia',
                        name: 'Kost Bu Siyam',
                        price: 20,
                        rating: 4,
                        imageUrl: 'assets/space1.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: SpaceModel(
                        id: 2,
                        city: 'Jakarta',
                        country: 'Indonesia',
                        name: 'Kost Bu Nono',
                        price: 40,
                        rating: 4,
                        imageUrl: 'assets/space2.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: SpaceModel(
                        id: 3,
                        city: 'Bandung',
                        country: 'Indonesia',
                        name: 'Kost Bu Neneng',
                        price: 45.4,
                        rating: 3,
                        imageUrl: 'assets/space3.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //note: tips and guidance
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TipsCard(
                    tips: TipsModel(
                      id: 1,
                      title: 'City Guidlines',
                      imageUrl: 'assets/tips1.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: TipsModel(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '11 Dec',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 74 // 50 + 24,
            ),
          ],
        ),
      ),
      //note: bottom navbar
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * 24),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBar(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavBar(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavBar(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavBar(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
