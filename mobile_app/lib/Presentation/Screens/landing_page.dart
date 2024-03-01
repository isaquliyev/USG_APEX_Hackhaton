import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/Bussiness%20Logic/LandingPage%20Bloc/landing_page_bloc.dart';
import 'package:mobile_app/Presentation/Screens/BottomNavWidgets/home.dart';
import 'package:mobile_app/Presentation/Screens/BottomNavWidgets/profile.dart';

List<BottomNavigationBarItem> bottomNavItems = const [
  BottomNavigationBarItem(
    icon: Icon(
      Icons.home,
      color: Colors.blue,
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.person,
      color: Colors.blue,
    ),
    label: "Profile",
  ),
];

const List<Widget> bottomNavScreen = [
  HomePage(),
  ProfilePage(),
];

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
              items: bottomNavItems,
              currentIndex: state.tabIndex,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                BlocProvider.of<LandingPageBloc>(context)
                    .add(TabChange(tabIndex: index));
              }
          ),
        );
      },
    );
  }
}