import 'package:flutter/material.dart';
import 'package:test_ap/components/appbar.dart';
import 'package:test_ap/components/card_user_info.dart';
import 'package:test_ap/components/follow_or_unfollow.dart';
import 'package:test_ap/components/items.dart';
import 'package:test_ap/components/profile.dart';

class HomePage extends StatefulWidget {
  final VoidCallback isDark;
  const HomePage({super.key, required this.isDark});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarCode(isDark: widget.isDark),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile
            Profile(),

            SizedBox(height: 20.0),

            // Items
            Items(),

            SizedBox(height: 20.0),

            // Card user info like email and phone number
            CardUserInfo(),

            SizedBox(height: 20.0),

            // Following or unfollowing
            FollowOrUnfollow(),
          ],
        ),
      ),
    );
  }
}
