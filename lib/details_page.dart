import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "data",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.star, color: Colors.grey)),
                  )
                ],
              ),
              Row(
                children: [
                  const Text("/pruːf/"),
                  const VerticalDivider(
                    width: 15,
                  ),
                  IconButton(
                      icon: const Icon(Icons.volume_up_outlined,
                          color: Colors.blue),
                      onPressed: () {
                        print("object");
                      })
                ],
              ),
              const Align(alignment: Alignment.topLeft, child: Text("n.证据，证明")),
              const Align(alignment: Alignment.topLeft, child: Text("v.校对")),
              const Divider(
                height: 15,
                color: Colors.transparent,
              ),
              const Row(
                children: [
                  Text("复数",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    width: 15,
                  ),
                  Text("proofs", style: TextStyle(fontSize: 10)),
                ],
              ),
              const Row(
                children: [
                  Text("第三人称单数",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    width: 15,
                  ),
                  Text("proofs", style: TextStyle(fontSize: 10)),
                ],
              ),
              const Row(
                children: [
                  Text("现在分词",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    width: 15,
                  ),
                  Text("proofing", style: TextStyle(fontSize: 10)),
                ],
              ),
              const Row(
                children: [
                  Text("过去式",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    width: 15,
                  ),
                  Text("proofed", style: TextStyle(fontSize: 10)),
                ],
              ),
              const Row(
                children: [
                  Text("过去分词",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    width: 15,
                  ),
                  Text("proofed", style: TextStyle(fontSize: 10)),
                ],
              ),
              const Divider(
                height: 25
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "图文例句",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
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
                    child: IconButton(
                      icon: Image.network(
                        "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                        height: MediaQuery.of(context).size.width * 0.35,
                      ),
                      onPressed: () {
                        print("点击图1");
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: IconButton(
                      icon: Image.network(
                        "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                        height: MediaQuery.of(context).size.width * 0.35,
                      ),
                      onPressed: () {
                        print("点击图2");
                      },
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
                    child: IconButton(
                      icon: Image.network(
                        "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                        height: MediaQuery.of(context).size.width * 0.35,
                      ),
                      onPressed: () {
                        print("点击图3");
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: IconButton(
                      icon: Image.network(
                        "https://scontent-nrt1-2.xx.fbcdn.net/v/t1.6435-9/80634969_1427113014156627_869520136279687168_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=7a1959&_nc_ohc=oYXtIJ5WKIsAX-V_-Lh&_nc_ht=scontent-nrt1-2.xx&oh=00_AfDmW7Co_S4O6BfpbqN7kBSndQ8rzVmNnEQuuq_TQPEANw&oe=6592D8B3",
                        height: MediaQuery.of(context).size.width * 0.35,
                      ),
                      onPressed: () {
                        print("点击图4");
                      },
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
