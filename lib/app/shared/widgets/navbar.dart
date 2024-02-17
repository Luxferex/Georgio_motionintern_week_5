import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NavbarItem(iconData: Icons.home),
        NavbarItem(iconData: Icons.search),
        NavbarItem(iconData: Icons.video_camera_back),
        NavbarItem(iconData: Icons.local_mall),
        NavbarProfile(), // Menggunakan widget NavbarProfile untuk ikon profil
      ],
    );
  }
}

class NavbarItem extends StatelessWidget {
  final IconData iconData;

  NavbarItem({required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Icon(
        iconData,
        size: 34,
      ),
    );
  }
}

class NavbarProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gantilah dengan logika atau sumber gambar profil yang sesuai
    String profileImageUrl = 'assets/images/foto_profile.png';

    return Container(
      padding: EdgeInsets.all(10),
      child: CircleAvatar(
        radius: 17,
        backgroundImage: AssetImage(profileImageUrl),
      ),
    );
  }
}
