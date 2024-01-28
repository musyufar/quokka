import 'package:flutter/material.dart';

// 着せ替え画面
class Fashion extends StatefulWidget {
  const Fashion({super.key});

  @override
  State<Fashion> createState() => _FashionState();
}

int selectedIndex = 0;// 部位切り替え用

class _FashionState extends State<Fashion> {
    // 頭・目元・胸元・背中・目・口パーツ用
    List<bool> isSelected1 = [true, false, false, false, false, false, false];
    List<bool> isSelected2 = [true, false, false, false, false];
    List<bool> isSelected3 = [true, false, false, false, false, false, false];
    List<bool> isSelected4 = [true, false, false, false, false, false];
    List<bool> isSelected5 = [true, false, false, false, false, false, false, false, false];
    List<bool> isSelected6 = [true, false, false, false];

    List imgList1 = [
      'img/c_fashion/nothing.png',
      'img/c_fashion/aho.png',
      'img/c_fashion/angel_ring.png',
      'img/c_fashion/black_horn.png',
      'img/c_fashion/brown_hat.png',
      'img/c_fashion/pink_hat.png',
      'img/c_fashion/small_horn.png',
    ];
    List imgList2 = [
      'img/c_fashion/nothing.png',
      'img/c_fashion/glasses.png',
      'img/c_fashion/monocle.png',
      'img/c_fashion/sunglasses.png',
      'img/c_fashion/thick_eyebrow.png',
    ];
    List imgList3 = [
      'img/c_fashion/nothing.png',
      'img/c_fashion/blue_tie.png',
      'img/c_fashion/cape.png',
      'img/c_fashion/muffler.png',
      'img/c_fashion/necklace.png',
      'img/c_fashion/orange_ribbon.png',
      'img/c_fashion/scarf.png',
    ];
    List imgList4 = [
      'img/c_fashion/nothing.png',
      'img/c_fashion/angel_wing.png',
      'img/c_fashion/devil_wing.png',
      'img/c_fashion/fell_wing.png',
      'img/c_fashion/four_wing.png',
      'img/c_fashion/natural_wing.png',
    ];
    List imgList5 = [
      'img/c_fashion/eye_1.png',
      'img/c_fashion/eye_2.png',
      'img/c_fashion/eye_3.png',
      'img/c_fashion/eye_4.png',
      'img/c_fashion/eye_5.png',
      'img/c_fashion/eye_6.png',
      'img/c_fashion/eye_7.png',
      'img/c_fashion/eye_8.png',
      'img/c_fashion/eye_9.png',
    ];
    List imgList6 = [
      'img/c_fashion/mouth_1.png',
      'img/c_fashion/mouth_2.png',
      'img/c_fashion/mouth_3.png',
      'img/c_fashion/mouth_4.png',
    ];

  @override
  Widget build(BuildContext context) {
    // 部位切り替え用
    final List<bool> selected = [false, false, false, false, false, false];
    selected[selectedIndex] = true;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: const Text('おきがえページ'),
      ),
      body:Stack(
        children:[
          Image.asset('img/others/white.png'),//クアッカワラビーの場所だけ白背景

          // 背中パーツ画像
          isSelected4[1]? Image.asset('img/fashion/angel_wing.png'):const SizedBox(),
          isSelected4[2]? Image.asset('img/fashion/devil_wing.png'):const SizedBox(),
          isSelected4[3]? Image.asset('img/fashion/fell_wing.png'):const SizedBox(),
          isSelected4[4]? Image.asset('img/fashion/four_wing.png'):const SizedBox(),
          isSelected4[5]? Image.asset('img/fashion/natural_wing.png'):const SizedBox(),

          Column(
            children: [
              Image.asset('img/quokka/all.png'),//クアッカワラビー画像

              // パーツ切り替え
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    ToggleButtons(
                      isSelected: selected,
                      onPressed: (int index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      borderColor: Colors.yellow,
                      splashColor: Colors.yellow,
                      fillColor: Colors.yellow,
                      selectedColor: Colors.brown,
                      selectedBorderColor: Colors.yellow,
                      borderWidth: 5,
                      children:  const [
                        Text('頭',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text('目元',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text('胸元',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text('背中',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text('目',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text('口',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ]
                ),
              ),
              const SizedBox(height: 20,),

              // 頭パーツ
              selected[0]? Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(
                        color: Colors.deepOrangeAccent,
                        height: 0,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                          children: List.generate(isSelected1.length, (index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              onTap: () {
                                setState(() {
                                  for (int indexBtn = 0; indexBtn < isSelected1.length; indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected1[indexBtn] = true;
                                    }
                                    else {
                                      isSelected1[indexBtn] = false;
                                    }
                                  }
                                });
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: isSelected1[index]? Colors.amberAccent : Colors.black12,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange,width: 2),
                                ),
                                child: Image.asset(imgList1[index]),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ): const SizedBox(),

              // 目元パーツ
              selected[1]? Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(
                        color: Colors.deepOrangeAccent,
                        height: 0,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                          children: List.generate(isSelected2.length, (index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              onTap: () {
                                setState(() {
                                  for (int indexBtn = 0; indexBtn < isSelected2.length; indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected2[indexBtn] = true;
                                    }
                                    else {
                                      isSelected2[indexBtn] = false;
                                    }
                                  }
                                });
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: isSelected2[index]? Colors.amberAccent : Colors.black12,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange,width: 2),
                                ),
                                child: Image.asset(imgList2[index]),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ): const SizedBox(),

              // 胸元パーツ
              selected[2]? Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(
                        color: Colors.deepOrangeAccent,
                        height: 0,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                          children: List.generate(isSelected3.length, (index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              onTap: () {
                                setState(() {
                                  for (int indexBtn = 0; indexBtn < isSelected3.length; indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected3[indexBtn] = true;
                                    }
                                    else {
                                      isSelected3[indexBtn] = false;
                                    }
                                  }
                                });
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: isSelected3[index]? Colors.amberAccent : Colors.black12,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange,width: 2),
                                ),
                                child: Image.asset(imgList3[index]),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ): const SizedBox(),

              // 背中パーツ
              selected[3]? Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(
                        color: Colors.deepOrangeAccent,
                        height: 0,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                          children: List.generate(isSelected4.length, (index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              onTap: () {
                                setState(() {
                                  for (int indexBtn = 0; indexBtn < isSelected4.length; indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected4[indexBtn] = true;
                                    }
                                    else {
                                      isSelected4[indexBtn] = false;
                                    }
                                  }
                                });
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: isSelected4[index]? Colors.amberAccent : Colors.black12,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange,width: 2),
                                ),
                                child: Image.asset(imgList4[index]),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ): const SizedBox(),

              // 目パーツ
              selected[4]? Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(
                        color: Colors.deepOrangeAccent,
                        height: 0,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                          children: List.generate(isSelected5.length, (index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              onTap: () {
                                setState(() {
                                  for (int indexBtn = 0; indexBtn < isSelected5.length; indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected5[indexBtn] = true;
                                    }
                                    else {
                                      isSelected5[indexBtn] = false;
                                    }
                                  }
                                });
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: isSelected5[index]? Colors.amberAccent : Colors.black12,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange,width: 2),
                                ),
                                child: Image.asset(imgList5[index]),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ): const SizedBox(),

              // 口パーツ
              selected[5]? Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Divider(
                        color: Colors.deepOrangeAccent,
                        height: 0,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: GridView.count(
                          shrinkWrap: true,
                          primary: true,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                          children: List.generate(isSelected6.length, (index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              onTap: () {
                                setState(() {
                                  for (int indexBtn = 0; indexBtn < isSelected6.length; indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected6[indexBtn] = true;
                                    }
                                    else {
                                      isSelected6[indexBtn] = false;
                                    }
                                  }
                                });
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: isSelected6[index]? Colors.amberAccent : Colors.black12,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange,width: 2),
                                ),
                                child: Image.asset(imgList6[index]),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ): const SizedBox(),
            ]
          ),

          // 目パーツ画像
          isSelected5[1]? Image.asset('img/fashion/eye_2.png'):const SizedBox(),
          isSelected5[2]? Image.asset('img/fashion/eye_3.png'):const SizedBox(),
          isSelected5[3]? Image.asset('img/fashion/eye_4.png'):const SizedBox(),
          isSelected5[4]? Image.asset('img/fashion/eye_5.png'):const SizedBox(),
          isSelected5[5]? Image.asset('img/fashion/eye_6.png'):const SizedBox(),
          isSelected5[6]? Image.asset('img/fashion/eye_7.png'):const SizedBox(),
          isSelected5[7]? Image.asset('img/fashion/eye_8.png'):const SizedBox(),
          isSelected5[8]? Image.asset('img/fashion/eye_9.png'):const SizedBox(),

          // 口パーツ画像
          isSelected6[1]? Image.asset('img/fashion/mouth_2.png'):const SizedBox(),
          isSelected6[2]? Image.asset('img/fashion/mouth_3.png'):const SizedBox(),
          isSelected6[3]? Image.asset('img/fashion/mouth_4.png'):const SizedBox(),

          // 頭パーツ画像
          isSelected1[1]? Image.asset('img/fashion/aho.png'):const SizedBox(),
          isSelected1[2]? Image.asset('img/fashion/angel_ring.png'):const SizedBox(),
          isSelected1[3]? Image.asset('img/fashion/black_horn.png'):const SizedBox(),
          isSelected1[4]? Image.asset('img/fashion/brown_hat.png'):const SizedBox(),
          isSelected1[5]? Image.asset('img/fashion/pink_hat.png'):const SizedBox(),
          isSelected1[6]? Image.asset('img/fashion/small_horn.png'):const SizedBox(),

          // 目元パーツ画像
          isSelected2[1]? Image.asset('img/fashion/glasses.png'):const SizedBox(),
          isSelected2[2]? Image.asset('img/fashion/monocle.png'):const SizedBox(),
          isSelected2[3]? Image.asset('img/fashion/sunglasses.png'):const SizedBox(),
          isSelected2[4]? Image.asset('img/fashion/thick_eyebrows.png'):const SizedBox(),

          // 胸元パーツ画像
          isSelected3[1]? Image.asset('img/fashion/blue_tie.png'):const SizedBox(),
          isSelected3[2]? Image.asset('img/fashion/cape.png'):const SizedBox(),
          isSelected3[3]? Image.asset('img/fashion/muffler.png'):const SizedBox(),
          isSelected3[4]? Image.asset('img/fashion/necklace.png'):const SizedBox(),
          isSelected3[5]? Image.asset('img/fashion/orange_ribbon.png'):const SizedBox(),
          isSelected3[6]? Image.asset('img/fashion/scarf.png'):const SizedBox(),
        ]
      ),
    );
  }
}