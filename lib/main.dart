import 'package:flutter/material.dart';
import 'package:my_app/widgets/layoutMenu.dart';
import 'package:my_app/widgets/praticaWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: MPratica(),
  ));
}

class MPratica extends StatelessWidget {
  const MPratica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demonstração de layout Flutter"),
        ),
        drawer: const AppDrawer(),
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  'images/lake.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                const TitleSection(),
                const ButtonSection(),
                const TextSection(),
              ],
            ),
          ],
        ));
  }
}

// Widget para o Drawer
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu de Navegação',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Missão Prática'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MPratica()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment),
            title: const Text('Micro Atividade 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MicroAtividade2()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment),
            title: const Text('Micro Atividade 3'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MicroAtividade3()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment),
            title: const Text('Micro Atividade 4'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MicroAtividade4()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.assignment),
            title: const Text('Micro Atividade 5'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MicroAtividade5()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Tela 1
class MicroAtividade2 extends StatelessWidget {
  const MicroAtividade2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Micro Atividade 2"),
      ),
      body: const Center(
        child: Text('Macoratti .net'),
      ),
    );
  }
}

// Tela 2
class MicroAtividade3 extends StatelessWidget {
  const MicroAtividade3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro Atividade 3'),
      ),
      body: const Center(
        child: Text('Macoratti .net'),
      ),
      bottomNavigationBar: const BottomNavigationMenu(),
    );
  }
}

// Tela 3
class MicroAtividade4 extends StatelessWidget {
  const MicroAtividade4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro Atividade 4'),
      ),
      body: const Column(
        children: [
          ListTileWidget(),
          Expanded(child: ListViewWidget()),
        ],
      ),
    );
  }
}

// Tela 4
class MicroAtividade5 extends StatelessWidget {
  const MicroAtividade5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro Atividade 5'),
      ),
      body: const Center(
        child: StackWidget(),
      ),
    );
  }
}
