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
      padding: const EdgeInsets.all(15.0),
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
                      Container(
                          child: const Text(
                        '实体托福词汇',
                      )),
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            //color: Colors.yellow,
                            child: SizedBox(
                              width: 50,
                              height: 15,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  //fixedSize: const Size(2, 2),
                                  side: const BorderSide(),
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                                child: const Text(
                                  '调整计划',
                                  style: TextStyle(fontSize: 6),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        '每日20词，剩余231天',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
