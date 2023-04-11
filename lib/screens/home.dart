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
      children: const [
          _BuildStatusCarreerBar(),
        ],
    );
  }
}

class _BuildStatusCarreerBar extends StatelessWidget {
  const _BuildStatusCarreerBar();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
          child: Container(
            color: tdBlue,
          ),
        ),
        SizedBox(
          height: 60,
          width: double.infinity,
          child: Container(
            color: Colors.white,
          ),
        ),
        _BuildDayTimeline()
      ]
    );
  }
}

class _BuildDayTimeline extends StatelessWidget {
  const _BuildDayTimeline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('Tus horarios'),
        const Text('Lunes 10, Abril, 2023'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
        
      ],
    );
  }
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