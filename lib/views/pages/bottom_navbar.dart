import 'home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final _buttomNavbarController = PersistentTabController();

    List<Widget> _buildScreens() {
        return [
          const HomePage(),
          Container(),
          Container(),
          Container(),
          Container()
        ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.home),
                title: ("Home"),
                activeColorPrimary:const Color(0xFFDB3022),
                inactiveColorPrimary: CupertinoColors.systemGrey,
                
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.bag),
                title: ("Shop"),
              activeColorPrimary: const Color(0xFFDB3022),
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.shopping_cart),
                title: ("Cart"),
                activeColorPrimary: const Color(0xFFDB3022),
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(Icons.favorite_border),
                title: ("Cart"),
                activeColorPrimary: const Color(0xFFDB3022),
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.profile_circled),
                title: ("Profile"),
                activeColorPrimary: const Color(0xFFDB3022),
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
        ];
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PersistentTabView(
        context,
        controller: _buttomNavbarController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    )
    );
  }
}