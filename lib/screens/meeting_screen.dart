import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meeutu/screens/video_call_screen.dart';

import '../widgets/home_meeting_button.dart';
import 'joinMeeting.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({Key? key}) : super(key: key);

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VideoCallScreen();
                }));
              },
              text: 'New Meeting',
              icon: Icons.videocam,
              color: Colors.purple,
            ),
            HomeMeetingButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return JoinMeeting();
                }));
              },
              text: 'Join Meeting',
              icon: Icons.add_box_rounded,
              color: Colors.purple,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Schedule',
              icon: Icons.calendar_today,
              color: Colors.purple,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward_rounded,
              color: Colors.purple,
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/Join Meetings with just a click!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
