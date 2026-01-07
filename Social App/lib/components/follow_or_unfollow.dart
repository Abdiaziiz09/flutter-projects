import 'package:flutter/material.dart';

class FollowOrUnfollow extends StatefulWidget {
  const FollowOrUnfollow({super.key});

  @override
  State<FollowOrUnfollow> createState() => _FollowOrUnfollowState();
}

class _FollowOrUnfollowState extends State<FollowOrUnfollow> {
  var check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Follow text
        Text(check ? "Following" : "Follow"),

        SizedBox(height: 10.0),

        // Row
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Checkbox
            Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: check,
              onChanged: (value) {
                setState(() {
                  check = !check;
                });
              },
            ),

            // Follow me? text
            Text("Follow me?"),
          ],
        ),
      ],
    );
  }
}
