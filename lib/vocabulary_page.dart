import 'package:flutter/material.dart';

class VocabularyPage extends StatefulWidget {
  const VocabularyPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _VocabularyPage();
  }
}

class _VocabularyPage extends State<VocabularyPage> {
  final TextEditingController _controller = TextEditingController();

  void _onTextChanged(String value) {
    print('You entered: $value');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            onChanged: _onTextChanged,
            decoration: InputDecoration(
              hintText: '查词',
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 1000, vertical: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => _controller.clear(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          //padding: EdgeInsets.all(10.0),
          Row(
            children: [
              const Icon(
                Icons.book,
                color: Colors.brown,
                size: 150,
              ),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        '托福词汇',
                      ),
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            //color: Colors.yellow,
                            child: SizedBox(
                              width: 85,
                              height: 17,
                              child: OutlinedButton(
                                child: const Text(
                                  '调整计划',
                                  style: TextStyle(fontSize: 8),
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                              ),
                            )),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      '每日20词，剩余231天',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const LinearProgressIndicator(
                    value: 0.2,
                    //semanticsLabel: 'Linear progress indicator',
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Text(
                        '已学单词',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          //color: Colors.yellow,
                          child: const Text('72/4687',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ],
              ))
            ],
          ),
          const Divider(
            height: 50,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text('今日计划'),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '需学习',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text('需复习', style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        '25',
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                      Text(
                        '词',
                      ),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text(
                      '25',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      '词',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 10, color: Colors.grey),
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.access_alarm,
                    size: 15,
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  text: ' ',
                ),
                TextSpan(
                  text: "预计用时9分钟",
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          FilledButton(
              //color: Colors.green,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  '开始背单词吧！',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
              onPressed: () {
                print('开始背单词吧');
              }),
        ],
      ),
    );
  }
}
