import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/banner_slider.dart';
import 'package:flutter_application_3/widgets/category_widget.dart';
import 'package:flutter_application_3/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_application_3/widgets/product_widget.dart';
import 'package:flutter_application_3/widgets/search_input.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchInputWidget(),
            Expanded(
              child: BannerSlider(),
            ),
            SizedBox(height: 10),
            Expanded(
              child: CategoryWidget(),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ProductWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
