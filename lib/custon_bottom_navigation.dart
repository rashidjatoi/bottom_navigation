import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndexitem = 0;

  void _ontapped(int index) {
    setState(() {
      _selectedIndexitem = index;
    });
  }

  List<Widget> _pages = [
    Text('Home'),
    Text('Favourite'),
    Text('Setting'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndexitem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndexitem,
        onTap: _ontapped,
      ),
    );
  }
}




// Index Stack use in bottom navigationBar to Not to lose state data

// IndexedStack(
//   index:_selectedIndex,
//   children:[
//     TextField(),
//     Text('Favourite'),
//     Text('Setting'),
//   ]
// )


