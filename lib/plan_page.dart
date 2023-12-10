import 'package:flutter/material.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({super.key});

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
            title: Stack(children: [
              const Center(
                  child: Text(
                "调整计划",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Positioned(
                  right: 0,
                  child: TextButton(
                      onPressed: () {
                        print("object");
                      },
                      child: const Text("切换计划")))
            ])),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.book,
                          color: Colors.brown,
                          size: 150,
                        ),
                        Expanded(
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("实体托福词汇"),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.lock_reset),
                                  label: const Text("重置"),
                                )
                              ],
                            ),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("每日90词，剩余91天")),
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 15,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FilledButton.tonal(
                      onPressed: () {}, child: const Text("确定调整")),
                )),
          ],
        ));
  }
}
