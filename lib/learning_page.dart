import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                print('返回主页');
                Navigator.of(context).pop();
              },
            ),
            title: const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '需新学20',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '需复习1',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  )
                ],
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.yellow,
                  child: Text.rich(
                    TextSpan(
                      //style: TextStyle(fontSize: 10, color: Colors.grey),
                      children: [
                        const TextSpan(
                          text: "He's an",
                        ),
                        const TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                            style: const TextStyle(color: Colors.blue),
                            text: 'avid',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("pressed");
                              }),
                        const TextSpan(
                          text: " ",
                        ),
                        const TextSpan(
                          text: "collector",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Text('data'),
                  color: Colors.green,
                )
              ],
            ),
          ),
        ));
  }
}
