import 'package:flutter/material.dart';
import 'dart:math';

// 抽選結果画面
class ResultPage extends StatelessWidget{
  const ResultPage({Key? key}) : super(key: key);

  get math => null;

  @override
  Widget build(BuildContext context) {

    // 味と食べ物の文字
    String taste,eat;
    List<List<String>> tlist = [
      ['甘い','うまい','しょっぱい','すっぱい','からい','にがい','しぶい','レアな'],
      ['きのみ','草','葉っぱ','花']
    ];

    final ram = Random(DateTime.now().millisecondsSinceEpoch);//乱数の種を時間ごとに変更するためのDataTime
    taste = tlist[0][ram.nextInt(8)];
    eat = tlist[1][ram.nextInt(4)];
    int fitem1=ram.nextInt(9);
    int fitem2=ram.nextInt(8);
    int fitem3=ram.nextInt(9);
    int fitem4=ram.nextInt(8);

    // 食べ物、背景、表情、頭パーツ、目元パーツ、胸元パーツ、背中パーツの画像
    late String eimg,bimg='img/others/background.png',timg,
        fimg1='img/others/toka.png', fimg2='img/others/toka.png',
        fimg3='img/others/toka.png',fimg4='img/others/toka.png';

    switch(fitem1){
      case 4:
        fimg1='img/fashion/aho.png';
      case 5:
        fimg1='img/fashion/angel_ring.png';
      case 6:
        fimg1='img/fashion/black_horn.png';
      case 7:
        fimg1='img/fashion/brown_hat.png';
      case 8:
        fimg1='img/fashion/small_horn.png';
      case 9:
        fimg1='img/fashion/pink_hat.png';
    }

    switch(fitem2){
      case 5:
        fimg2='img/fashion/glasses.png';
      case 6:
        fimg2='img/fashion/monocle.png';
      case 7:
        fimg2='img/fashion/sunglasses.png';
      case 8:
        fimg2='img/fashion/thick_eyebrows.png';
    }

    switch(fitem3){
      case 4:
        fimg3='img/fashion/blue_tie.png';
      case 5:
        fimg3='img/fashion/cape.png';
      case 6:
        fimg3='img/fashion/muffler.png';
      case 7:
        fimg3='img/fashion/necklace.png';
      case 8:
        fimg3='img/fashion/orange_ribbon.png';
      case 9:
        fimg3='img/fashion/scarf.png';
    }

    switch(fitem4){
      case 4:
        fimg4='img/fashion/angel_wing.png';
      case 5:
        fimg4='img/fashion/devil_wing.png';
      case 6:
        fimg4='img/fashion/fell_wing.png';
      case 7:
        fimg4='img/fashion/four_wing.png';
      case 8:
        fimg4='img/fashion/natural_wing.png';
    }

    switch(eat) {
      case 'きのみ' :
        eimg = 'img/roulette/nuts.png';
      case '草' :
        eimg = 'img/roulette/grass.png';
      case '葉っぱ' :
        eimg = 'img/roulette/leaf.png';
      case '花' :
        eimg = 'img/roulette/flower.png';
    }

    switch(taste) {
      case '甘い':
        timg = 'img/roulette/face_1.png';
      case 'うまい':
        timg = 'img/roulette/face_2.png';
      case 'しょっぱい':
        timg = 'img/roulette/face_3.png';
      case 'すっぱい':
        timg = 'img/roulette/face_4.png';
      case 'からい':
        timg = 'img/roulette/face_5.png';
      case 'にがい':
        timg = 'img/roulette/face_6.png';
      case 'しぶい':
        timg = 'img/roulette/face_7.png';
      case 'レアな':
        bimg = 'img/others/rare.gif';
        fimg1='img/others/toka.png';
        fimg2='img/others/toka.png';
        fimg3='img/others/toka.png';
        fimg4='img/others/toka.png';
        switch(eat){
          case 'きのみ':
            timg = 'img/roulette/gold.png';
            eimg = 'img/roulette/golden_nuts.png';
          case '草':
            timg = 'img/roulette/divine.png';
            eimg = 'img/roulette/divine_grass.png';
          case '葉っぱ':
            timg = 'img/roulette/crystal.png';
            eimg = 'img/roulette/crystal_leaf.png';
          case '花':
            timg = 'img/roulette/rainbow.png';
            eimg = 'img/roulette/rainbow_flower.png';
        }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: const Text('ルーレット結果'),
      ),
      body: SingleChildScrollView(
        child: Stack(
        children:[
          // 背景
          SizedBox(
            height: 1000,
            width: 1000,
            child: Image.asset(bimg,
              fit: BoxFit.cover,
            ),
          ),
          Image.asset(fimg4),//背中パーツ画像
          Center(
            child:Column(
              children: [
                Image.asset('img/quokka/noface.png'),//顔なしクアッカワラビー画像

                // 味+食べ物の文字
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(taste,
                      style: const TextStyle(
                        fontSize: 55
                      ),
                    ),
                    Text(eat,
                      style: const TextStyle(
                        fontSize: 55
                      ),
                    ),
                  ],
                ),

                // 食べ物画像
                Image.asset(eimg,
                  height: 200,
                  width: 200,
                ),

                // 「をあげたよ！」文字
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text('をあげたよ！',
                    style: TextStyle(
                      fontSize: 45,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(timg),//表情画像
          Image.asset(fimg1),//頭パーツ画像
          Image.asset(fimg2),//目元パーツ画像
          Image.asset(fimg3),//胸元パーツ画像
        ]
      ),
      ),
    );
  }
}