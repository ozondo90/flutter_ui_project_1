import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter_application_3/views/home.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedPos;
  final double bottomNavBarHeight;
  final List<TabItem> tabItems;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedPos,
    required this.bottomNavBarHeight,
    required this.tabItems,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>
    with TickerProviderStateMixin {
  late CircularBottomNavigationController navigationController;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    navigationController =
        CircularBottomNavigationController(widget.selectedPos);
    tabController = TabController(
      initialIndex: widget.selectedPos,
      length: widget.tabItems.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: widget.tabItems.map((item) {
          return _buildTabItemContent(item);
        }).toList(),
      ),
      bottomNavigationBar: CircularBottomNavigation(
        widget.tabItems,
        controller: navigationController,
        selectedPos: widget.selectedPos,
        barHeight: widget.bottomNavBarHeight,
        barBackgroundColor: Colors.white,
        backgroundBoxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black45, blurRadius: 10.0),
        ],
        animationDuration: const Duration(milliseconds: 300),
        selectedCallback: (int? selectedPos) {
          setState(() {
            tabController.animateTo(selectedPos!);
          });
        },
      ),
    );
  }

  Widget _buildTabItemContent(TabItem item) {
    switch (item.icon) {
      case Icons.home:
        return const Home(); // Replace HomePage with your actual home page widget
      default:
        return Container(); // Return an empty container as a fallback
    }
  }

  @override
  void dispose() {
    navigationController.dispose();
    tabController.dispose();
    super.dispose();
  }
}
