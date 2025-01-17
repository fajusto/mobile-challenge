import 'package:flutter/material.dart';
import 'package:mobile_challenge/app/core/pages/fav_users_page.dart';
import 'package:mobile_challenge/app/modules/search/presentation/search/search_page.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          FavUsersPage(),
          SearchPage(),
        ],
      ),
    );
  }
}
