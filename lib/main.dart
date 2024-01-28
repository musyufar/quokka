import 'package:flutter/material.dart';
import 'roulette.dart';
import 'fashion.dart';

// ホーム画面的な
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Widget Demo',
      home: const MyHomepage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Yusei_Magic',
      ),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //アプリ概要説明のポップアップ
  _myDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center( child:Text("説明"),),
        content: const SizedBox(
          height: 300,
          child:Column(
            children:[
              Divider(
                color: Colors.deepOrangeAccent,
                height: 0,
                thickness: 1,
              ),
              SizedBox(height: 20,),
              Text("♦「回す!」ボタンで食べ物抽選+ランダムで装飾がつくよ(装飾を含めない32通りのうち当たりは4通り、装飾も含めると全約40000通り)♦"),
              SizedBox(height: 10,),
              Text("♦「おきがえ」ボタンでおきがえページへ(頭・目元・胸元・背中・目・口パーツがあるよ)♦"),
              SizedBox(height: 10,),
              Text("♦上の画像をタップするとちょっとしたアニメーションが出てくるよ(場所によって全3通り)♦"),
            ]
          ),
        ),
        actions: [
          Center(
            child:ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Yusei_Magic'
                ),
                backgroundColor: Colors.teal,
                fixedSize: const Size(250, 50),
                shape: const StadiumBorder(),
              ),
              child: const Text("閉じる✖"),
            ),
          ),
        ],
      ),
    );
  }

  //頭をタップしたときのポップアップ
  _headDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center( child:Text("頭をなでた！"),),
        content: SizedBox(
          height: 350,
          child:Column(
            children:[
              Image.asset('img/quokka/caress_head.gif'),
            ]
          ),
        ),
        actions: [
          Center(
            child:ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Yusei_Magic'
                ),
                backgroundColor: Colors.teal,
                fixedSize: const Size(250, 50),
                shape: const StadiumBorder(),
              ),
              child: const Text("閉じる✖"),
            ),
          ),
        ],
      ),
    );
  }

  //頬をタップしたときのポップアップ
  _cheekDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center( child:Text("ほっぺをなでた！"),),
        content: SizedBox(
          height: 350,
          child:Column(
            children:[
              Image.asset('img/quokka/caress_cheek.gif'),
            ]
          ),
        ),
        actions: [
          Center(
            child:ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Yusei_Magic'
                ),
                backgroundColor: Colors.teal,
                fixedSize: const Size(250, 50),
                shape: const StadiumBorder(),
              ),
              child: const Text("閉じる✖"),
            ),
          ),
        ],
      ),
    );
  }

  //首元をタップしたときのポップアップ
  _neckDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center( child:Text("首元をなでた！"),),
        content: SizedBox(
          height: 350,
          child:Column(
            children:[
              Image.asset('img/quokka/caress_neck.gif'),
            ]
          ),
        ),
        actions: [
          Center(
            child:ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Yusei_Magic'
                ),
                backgroundColor: Colors.teal,
                fixedSize: const Size(250, 50),
                shape: const StadiumBorder(),
              ),
              child: const Text("閉じる✖"),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: const Text('ただクアッカワラビーがかわいいアプリ'),
      ),
      body: Stack(
        children: <Widget>[
          //背景
          SizedBox(
            height: 1000,
            width: 1000,
            child: Image.asset('img/others/background.png',
              fit: BoxFit.cover,
            ),
          ),
          const RoulettePage(),//ルーレット表示と「回す！」ボタン
          Image.asset('img/quokka/all.png'),//クアッカワラビー画像

          //頭をタップしたときのポップアップ反応する場所
          Positioned(
            top: 50,
            left: 50,
            child:GestureDetector(
              onTap:_headDialog,
              child: Opacity(
                opacity: 0,
                child:Container(
                  color: Colors.cyan,
                  height: 100,
                  width: 300,
                ),
              ),
            ),
          ),

          //頬をタップしたときのポップアップ反応する場所
          Positioned(
            top: 150,
            left: 50,
            child:GestureDetector(
              onTap:_cheekDialog,
              child: Opacity(
                opacity: 0,
                child:Container(
                  color: Colors.cyan,
                  height: 120,
                  width: 300,
                ),
              ),
            ),
          ),

          //首元をタップしたときのポップアップ反応する場所
          Positioned(
            top: 220,
            left: 80,
            child:GestureDetector(
              onTap:_neckDialog,
              child: Opacity(
                opacity: 0,
                child:Container(
                  color: Colors.cyan,
                  height: 150,
                  width: 250,
                ),
              ),
            ),
          ),

          //アプリ概要説明が出てくるボタン
          Align(
            alignment: const Alignment(0.9,0),
            child: ElevatedButton(
              onPressed: _myDialog,
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Yusei_Magic'
                ),
                backgroundColor: Colors.blueAccent,
                fixedSize: const Size(80,80),
                shape: const StarBorder(),
              ),
              child: const Text("?"),
            ),
          ),

          //おきがえページに飛ぶボタン
          Align(
            alignment: const Alignment(0,0.95),
            child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Fashion(),
                ),
              );
            },
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 30,
                fontFamily: 'Yusei_Magic'
              ),
              backgroundColor: Colors.amber,
              fixedSize: const Size(300, 50),
              shape: const StadiumBorder(),
              ),
            child: const Text("おきがえ"),
            ),
          ),
        ],
      ),
    );
  }
}