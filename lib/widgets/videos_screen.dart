import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List videoList = [
    'Introduction To Flutter',
    'Installing Flutter On Windows',
    'Setup Emulator On Window',
    'Creating Our First App',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF674AEF)
                  : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 Min 50 Sec"),
        );
      },
    );
  }
}
