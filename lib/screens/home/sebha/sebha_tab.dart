import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numoftasbih = 0;
 double angle=0;

  int index = 0;

  List<String> tasbihat = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .46,
            child: Stack(
              children: [
                Positioned(
                    left: MediaQuery.of(context).size.width * .44,
                    child: Image.asset("assets/images/head_sebha_logo.png")),
                Positioned(
                    top: 60,
                    left: MediaQuery.of(context).size.width * .2,
                    child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          return tasbih();
                        },
                        child: Transform.rotate(
                          angle: angle,
                            child: Image.asset(
                                "assets/images/body_sebha_logo.png")))),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text("عدد التسبيحات",style: Theme.of(context).textTheme.displayMedium,),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffF2D09D),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text("$numoftasbih",style: Theme.of(context).textTheme.displayMedium)),
          SizedBox(
            height: 12,
          ),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.circular(22),
              ),
              child: InkWell(
                  onTap: () {
                    return tasbih();
                  },
                  child: Text("${tasbihat[index]}",style: Theme.of(context).textTheme.displayLarge))),
        ],
      ),
    );
  }

  void tasbih() {
    angle--;
    if (numoftasbih == 34) {
      index++;
      numoftasbih = 0;
    }

    if (index > tasbihat.length - 1) {
      index = 0;
    }
    numoftasbih++;
    setState(() {});
  }
}
