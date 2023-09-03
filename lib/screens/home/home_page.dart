// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

const studentId = '630710777';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                  ),
                      borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: _CategoryButton(
                            image: 'assets/image/left.png')),
                    SizedBox(width: 30.0),
                    Expanded(
                        child: _CategoryButton(
                            image: 'assets/image/right.png')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Container _CategoryButton(
    {
      required String image}) {
  return CategoryBotton(image);
}
Container CategoryBotton(String image){
  return Container(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //Icon(Icons.icon ,size: 50.0,color: color,),
        Image.asset(image,width: 10.0,height: 10.0),
      ],
    ),
    //width: 120.0,
    height: 50,
    decoration: BoxDecoration(border: Border.all(color: Colors.black,style: BorderStyle.solid),borderRadius: BorderRadius.circular(20.0)),
  );
}