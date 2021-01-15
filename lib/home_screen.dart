import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    Text('Locate Us'),
    Text('Product List'),
    Text('Contact Us'),
    Text('Special Discounts')
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),

                  ),
                  Text('Shubham Chavan', style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                    textAlign: TextAlign.center,

                  ),
                  Text('shubhamac18@gmail.com', style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),
                    textAlign: TextAlign.center,

                  ),
                ],
              ),

              decoration: BoxDecoration(
                color: Colors.blue,
              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.wallet_membership),
              title: Text("My Wallet"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.redeem),
              title: Text("Redeem"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text("Offers"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.free_breakfast),
              title: Text("10 + 1 Plan"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.golf_course),
              title: Text("My Goldmine"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("FAQ"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () {

              },
            )

          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Locate Us', icon: Icon(Icons.location_city),
          ),
          BottomNavigationBarItem(
              label: 'Product List', icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
              label: 'Contact Us', icon: Icon(Icons.contact_mail),
          ),
          BottomNavigationBarItem(
              label: 'Discounts', icon: Icon(Icons.local_offer),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
