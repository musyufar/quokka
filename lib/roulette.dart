import 'package:flutter/material.dart';
import 'package:roulette/roulette.dart';
import 'dart:math';
import 'result.dart';

// ルーレット表示と「回す！」ボタン
class RoulettePage extends StatefulWidget {
  const RoulettePage({Key? key}) : super(key: key);

  @override
  State<RoulettePage> createState() => _RouletteState();
}

class _RouletteState extends State<RoulettePage>
    with SingleTickerProviderStateMixin{
  late RouletteController _controller;

  @override
  void initState() {
    _controller = RouletteController(
      group:
      RouletteGroup([
        const RouletteUnit.noText(color: Color.fromRGBO(255, 240, 0, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(150, 150, 150, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(150, 150, 150, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(80, 80, 80, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(80, 80, 80, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(25, 25, 25, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(25, 25, 25, 100)),
        const RouletteUnit.noText(color: Color.fromRGBO(25, 25, 25, 100)),
      ]),
      vsync: this
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //ルーレット表示
        Container(
          alignment: const Alignment(0, 0.9),
          child:Roulette(
            controller: _controller,
            style: const RouletteStyle(
              dividerThickness: 0,
              centerStickerColor: Colors.green,
              ),
            ),
          ),

        //抽選結果に飛ぶボタン
        Align (
          alignment: const Alignment(0,0.5),
          child:ElevatedButton(
            onPressed: () async {
              await _controller.rollTo( 1,
                clockwise: true,
                offset: Random().nextDouble(),
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResultPage(),
                ),
              );
            },
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 30,
                fontFamily: 'Yusei_Magic'
              ),
            backgroundColor: Colors.green,
            fixedSize: const Size(120, 120),
            shape: const StadiumBorder(),
            ),
            child: const Text("回す!"),
          ),
        ),
      ]
    );
  }
}