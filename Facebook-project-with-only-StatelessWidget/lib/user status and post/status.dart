import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        /// * User-ka iyo sidoo kale users-ka kale aad friends-ka la ah
        /// user-ka si row ah inay u socdan status-kooda
        /// */
        children: <Widget>[
          // Waa user/isticmalaha mesha uu ka dhigi lahay post status ah
          Container(
            width: 150.0,
            height: 270.0,
            padding: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UserAddStatus(
              userPathImageProfile:
                  "assets/profile_images/user_profile_image/user_status.jpg",
              userPathImageStatus:
                  "assets/profile_images/user_profile_image/user_profile.jpeg",
            ),
          ),

          SizedBox(width: 5.0),

          /// * Meeshana waa others users oo uu user/isticmalaha ka arki laay asxaptiisa
          /// wax yaabahana aay soo dhigeeyn ee status/story-gooda
          /// */
          /// ========
          /// User 1
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Hamdi Ahmed",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_1.jpg",
            ),
          ),

          SizedBox(width: 5.0),

          /// ========
          /// User 2
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Faduma Abdi",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_2.jpg",
            ),
          ),

          SizedBox(width: 5.0),

          /// ========
          /// User 3
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Hafso Dahir",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_3.jpg",
            ),
          ),

          SizedBox(width: 5.0),

          /// ========
          /// User 4
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Ruqiyo Farah",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_4.jpg",
            ),
          ),

          SizedBox(width: 5.0),

          /// ========
          /// User 5
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Muno Yusuf",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_5.jpg",
            ),
          ),

          SizedBox(width: 5.0),

          /// ========
          /// User 6
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Zeynab Omar",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_6.jpg",
            ),
          ),

          SizedBox(width: 5.0),

          /// ========
          /// User 7
          /// =========
          Container(
            width: 150.0,
            height: 270.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xFFC7C7C7)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: UsersStatus(
              userName: "Fardowsa Mohamed",
              userPathImage:
                  "assets/profile_images/users_profile_images/users_profile_7.jpg",
            ),
          ),
        ],
      ),
    );
  }
}

// ==================================================
// Waa users ka kale ee soo dhigayan status-kooda
// ==================================================
class UserAddStatus extends StatelessWidget {
  final String userPathImageProfile;
  final String userPathImageStatus;
  const UserAddStatus({
    super.key,
    required this.userPathImageProfile,
    required this.userPathImageStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // User Status post
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: Image.asset(
            "$userPathImageProfile",
            width: double.infinity,
            height: 190.0,
            fit: BoxFit.cover,
          ),
        ),

        // User profile
        Positioned(
          top: 8.0,
          left: 8.0,
          child: Container(
            width: 50.0,
            height: 50.0,
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(width: 3.0, color: Color(0xFF030FFF)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset("$userPathImageStatus", fit: BoxFit.cover),
            ),
          ),
        ),

        // Add/+ icon
        Positioned(
          left: 50.0,
          bottom: 50.0,
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0xFF030FFF),
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(width: 3.0, color: Colors.white),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Text for - Create story
        Positioned(
          left: 5.0,
          bottom: -12.0,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Create story",
              style: GoogleFonts.openSans(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ==================================================
// Waa users ka kale ee soo dhigayan status-kooda
// ==================================================
class UsersStatus extends StatelessWidget {
  final String userPathImage;
  final String userName;
  const UsersStatus({
    super.key,
    required this.userPathImage,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // User Status post
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            "$userPathImage",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        // User profile
        Positioned(
          top: 8.0,
          left: 8.0,
          child: Container(
            width: 50.0,
            height: 50.0,
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(width: 3.0, color: Color(0xFF030FFF)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset("$userPathImage", fit: BoxFit.cover),
            ),
          ),
        ),

        // Text for - Create story
        Positioned(
          left: 5.0,
          bottom: 0.0,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "$userName",
              style: GoogleFonts.openSans(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
