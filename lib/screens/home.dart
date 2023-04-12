import 'package:flutter/material.dart';
import 'package:university_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: const _BuildHome(),
      bottomNavigationBar: const _BuildBottomBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBlue,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          const Text('UNSTA App'),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(child: Image.asset('assets/images/perfil.png')),
          ),
        ]),
      ),
    );
  }
}

class _BuildHome extends StatelessWidget {
  const _BuildHome();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Cronograma del día'),
        const Text('Martes, 11 de Abril, 2023'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              _buildTimelineItem(),
            ],
          ),
        ),
        const _BuildDayTimeline(),
        ],
    );
  }
}
class _BuildDayTimeline extends StatelessWidget {
  const _BuildDayTimeline();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SizedBox(
        height: 450,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            _buildGridItem('Anuncios', Icons.campaign, Colors.lightGreen),
            _buildGridItem('Calendario', Icons.calendar_today, Colors.red),  
            _buildGridItem('Materias', Icons.menu_book, Colors.blue),
            _buildGridItem('Examenes', Icons.note, Colors.orange),
            _buildGridItem('Autogestion', Icons.home, Colors.black),
            _buildGridItem('Proximamente', Icons.home, Colors.black)          
          ],
        ),
      ),
    );
  }
}

Widget _buildTimelineItem(){
  return Container(
    color: tdRed,
    width: 300,
    child: Column(children: [
      Row(children: const [
        Icon(Icons.timeline),
        Text('04:30 PM'),
      ],),
      const Text('CS4512 - Teoría de las'),
      Row(children: const [
        Icon(Icons.home),
        Text('Clase en curso')
      ],)
    ]),
  );
}

Widget _buildGridItem(String name, IconData iconName, Color iconColor) {
  return Container(
    height: 30.0,
    width: 30.0,
    color: Colors.white,
    alignment: Alignment.center,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName, 
          color: iconColor,
          size: 48.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            ),
        ),
      ]
      
    ),
  );
}

class _BuildBottomBar extends StatelessWidget {
  const _BuildBottomBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: SizedBox(
                width: 61,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home, color: tdBlue,),
                    Text('Inicio')
                  ],
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                width: 61,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.person),
                    Text('Gestion')
                  ],
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                width: 61,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.poll),
                    Text('Carrera')
                  ],
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                width: 61,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.email),
                    Text('Avisos')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}