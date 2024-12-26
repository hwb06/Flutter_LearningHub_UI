import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:education_app_ui/app_screens/assignment_screens.dart';
import 'package:education_app_ui/app_screens/home_screen.dart';
import 'package:education_app_ui/app_screens/profile_screen.dart';

class WishlistScreen extends StatefulWidget {

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF674AEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "WishList",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade500),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/Flutter.png',
                  fit: BoxFit.cover,
                ),
                title: Text('Flutter Crash Course', style: TextStyle(color: Colors.white),),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/C#.png',
                  fit: BoxFit.cover,
                ),
                title: Text('C# Sharp Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/Python.png',
                  fit: BoxFit.cover,
                ),
                title: Text('Python Complete Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/React Native.png',
                  fit: BoxFit.cover,
                ),
                title: Text('React Native Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),

            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade500),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/Flutter.png',
                  fit: BoxFit.cover,
                ),
                title: Text('Flutter Crash Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/C#.png',
                  fit: BoxFit.cover,
                ),
                title: Text('C# Sharp Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/Python.png',
                  fit: BoxFit.cover,
                ),
                title: Text('Python Complete Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF674AEF).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                selected: true,
                leading: Image.asset(
                  'assets/images/React Native.png',
                  fit: BoxFit.cover,
                ),
                title: Text('React Native Course'),
                trailing: FavoriteButton(
                  isFavorite: false,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextScreen()));
                },
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 17,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        onTap: (int index) {
          // Handle navigation logic here
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AssignmentScreen()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WishlistScreen()),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
        },
      ),
    );
  }
}


class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.only(top: 170),
      child: Center(
          child: Column(children: [
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Color(0xFF674AEF),
              child: SizedBox(
                width: 310,
                height: 400,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 150.00,
                          height: 150.00,
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: ExactAssetImage('assets/images/books.png'),
                              fit: BoxFit.contain,
                            ),
                            shape: BoxShape.rectangle,
                          )),

                      SizedBox(
                        height: 15,
                      ),

                      Text(
                        'Learning Management System',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Text(
                        'An LMS (Learning Management System) is software for managing courses, users, and learning materials, optimizing education and training experiences.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100,
                            child: RaisedButton(
                              onPressed: () => null,
                              color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.touch_app,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Visit',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ), //Row
                              ), //Padding
                            ), //RaisedButton
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ), //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ])),
    );
  }

  RaisedButton({required Null Function() onPressed, required MaterialColor color, required Padding child}) {}
}
