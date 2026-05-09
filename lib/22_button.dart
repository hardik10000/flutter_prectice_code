import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:just_audio/just_audio.dart';
import 'package:vibration/vibration.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ButtonDemo extends StatefulWidget {
  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  int count = 0;
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example of Button"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            /// Elevated Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
                print("count = $count");
              },
              child: Text("Click me! ($count)"),
            ),
            SizedBox(height: 10),
            /// Toast Button
            MaterialButton(
              textColor: Colors.white,
              color: Colors.black,
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Hello I am a Flutter Developer!",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16,
                );
              },
              child: Text("Toast Message"),
            ),
            SizedBox(height: 10),
            /// Snackbar Button
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Hello! This is a Snackbar'),
                    duration: Duration(seconds: 3),
                    showCloseIcon: true,
                  ),
                );
              },
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: () async{
              player.setAsset('sound/audiopapkin-sound-design-elements-sfx-ps-022-302865 (1).mp3');
              player.play();
            }, child: Text("play sound"),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: MaterialButton(
                  textColor: Colors   .white30,
                  color: Colors.red,
                  onPressed: () async{
                    if(await Vibration.hasVibrator()==true)
                    {
                      Vibration.vibrate(duration: 1000);
                    }
                  },child: Text('Virbration button!'),)),


                SizedBox(height: 10,),

                Expanded(child: MaterialButton(
                  textColor: Colors.white,color: Colors.brown,
                  onPressed: () {
                  },child: Text('display notification!'),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
