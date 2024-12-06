import 'package:flutter/material.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Cor de fundo para o menu
      padding: const EdgeInsets.symmetric(vertical: 8), // Espaçamento vertical
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribui os itens igualmente
        children: [
          Column(
            mainAxisSize: MainAxisSize.min, // Restringe o tamanho do Column
            children: [
              Icon(Icons.call),
              Text('Call'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min, // Restringe o tamanho do Column
            children: [
              Icon(Icons.directions),
              Text('Route'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min, // Restringe o tamanho do Column
            children: [
              Icon(Icons.share),
              Text('Share'),
            ],
          ),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Flutter'),
      subtitle: Text('Tudo é um widget'),
      leading: Icon(Icons.flash_on),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('Flutter'),
          subtitle: Text('Tudo é um widget'),
          leading: Icon(Icons.flash_on),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text('Dart'),
          subtitle: Text('É fácil'),
          leading: Icon(Icons.mood),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text('Firebase'),
          subtitle: Text('Combina com Flutter'),
          leading: Icon(Icons.whatshot),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 250,
          height: 250,
          color: Colors.blue,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.yellow,
        )
      ],
    );
  }
}
