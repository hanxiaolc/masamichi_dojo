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
          title: const Column(
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
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text.rich(
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
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Image.network(
                            "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                          height: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Image.network(
                          "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                          height: MediaQuery.of(context).size.width * 0.35,
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Image.network(
                          "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                          height: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Image.network(
                          "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                          height: MediaQuery.of(context).size.width * 0.35,
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.333,
                          child: IconButton(
                              onPressed: () {
                                print("斩");
                              },
                              icon: const Icon(Icons.dnd_forwardslash))),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.333,
                          child: IconButton(
                              onPressed: () {
                                print("高亮");
                              },
                              icon: const Icon(Icons.lightbulb))),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.333,
                          child: IconButton(
                              onPressed: () {
                                print("读出来");
                              },
                              icon: const Icon(Icons.volume_up)))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
