import 'package:flutter/material.dart';

class ReviewMeaningPage extends StatelessWidget {
  const ReviewMeaningPage({super.key});

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
          title: const Row(
            children: [
              Column(
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
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.check,
                        size: 10,
                        color: Colors.grey,
                      ))),
              VerticalDivider(
                width: 15,
              ),
              Text(
                "desirable adj: 有吸引力的；性感的",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(
                      color: Colors.transparent,
                      height: 80,
                    ),
                    Align(
                        child: Text("avoid",
                            style:
                                TextStyle(fontSize: 30, color: Colors.blue))),
                    Align(
                        child: Text("/əˈvɔɪd/",
                            style:
                                TextStyle(fontSize: 20, color: Colors.grey))),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              child: Column(
                children: [
                  Card(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("n.老主顾；支持者；赞助人"))),
                  )),
                  //const Divider(height: 15),
                  Card(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("n.身份证明；鉴定；验明"))),
                      )),
                  Card(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("adj.垂直的；n.垂直线"))),
                      )),
                  Card(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("n.蜡笔，彩色粉笔；v.以蜡笔作画，用..."))),
                      )),
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
        )
    );
  }
}
