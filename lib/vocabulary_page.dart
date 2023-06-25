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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
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
        ),
        //padding: EdgeInsets.all(10.0),
        Row(
          children: [
            const Icon(
              Icons.book,
              color: Colors.brown,
              size: 150,
            ),
            Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        '实体托福词汇',
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: const Size.fromHeight(5),
                              side: const BorderSide(),
                            ),
                            onPressed: () {
                              print('Pressed');
                            },
                            child: const Text('调整计划'),
                          )),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
