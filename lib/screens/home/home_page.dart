// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

//
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
              image: AssetImage("assets/images/bg_colorful.jpg"),
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
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    //icon: Icons.favorite
                    //icon: Icons.star
                    //icon: Icons.rocket_launch
                    //icon: Icons.pets
                    Expanded(
                        child: _CategoryButton(
                            image: 'assets/images/a.png',
                            name: 'Berlin')),
                    SizedBox(width: 30.0),
                    Expanded(
                        child: _CategoryButton(
                            name: 'London',
                            image: 'assets/images/b.png')),
                  ],
                ),
              ),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );

  }
}
  Container _CategoryButton({
    required String name,
    required String image,
    //required this.icon,
  }) {
    return CategoryButton(name, image);
  }


  Container CategoryButton(String name, String image) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid),
          borderRadius:
          BorderRadius.circular(20.0)
      ),
      child: Row(
        children: [
          //Icon(Icons.icon ,size: 50.0,color: color,),
          Image.asset(image, width: 60.0, height: 60.0,),
          Text(name,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900
              )
          ),
        ],
      ),
    );
  }

/*_buildQuizView() {
  // TODO: build UI
  return Center(child: Text('TODO: build UI'));
}*/

_buildButtonPanel() {
  // TODO: build UI
  return Center(child: Text('TODO: build UI'));
}
