import 'package:bwakos/model/tips.dart';
import 'package:bwakos/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final TipsModel tips;

  const TipsCard({this.tips});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
            size: 24,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
