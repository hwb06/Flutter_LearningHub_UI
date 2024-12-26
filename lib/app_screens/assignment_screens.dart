import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:education_app_ui/data/assignment_data.dart';
import 'package:education_app_ui/app_screens/home_screen.dart';
import 'package:education_app_ui/app_screens/profile_screen.dart';
import 'package:education_app_ui/app_screens/assignment_screens.dart';
import 'package:education_app_ui/app_screens/wishlist_screen.dart';

import '../widgets/assignment_screen.dart';

class AssignmentScreen extends StatelessWidget {

  int _selectedIndex = 1; // Add this variable to track the selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF674AEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Assignments",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.assignment,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: assignment.length,
                itemBuilder: (context, int index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        assignment[index].subjectName,
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    assignment[index].topicName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  AssignmentDetailRow(
                                    title: 'Assign Date',
                                    statusValue: assignment[index].assignDate,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  AssignmentDetailRow(
                                    title: 'Last Date',
                                    statusValue: assignment[index].lastDate,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  AssignmentDetailRow(
                                    title: 'Status',
                                    statusValue: assignment[index].status,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  if(assignment[index].status == 'Pending')
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: AssignmentButton(
                                        title: 'To Be Submitted',
                                        onPress: () {},
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 17,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex, // Set the current index
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account'
          ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
          // Handle navigation logic here
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AssignmentScreen()),);
          }
          if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistScreen()),);
          }
          if (index == 3) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()),);
          }
          // Add more conditions if you have more items
        },
      ),

    );
  }
}

void setState(Null Function() param0) {
}
