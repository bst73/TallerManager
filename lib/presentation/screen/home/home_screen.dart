import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_formatos/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taller Manager'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (final menuItem in appMenuItems) // Revertir el orden
              _CustomListTile(menuItem: menuItem),
          ],
        ),
      ),
    );
  }
}


class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];
          return _CustomListTile(menuItem: menuItem);
        },
      ),
    );
  }
}


class _CustomListTile extends StatelessWidget {

  final MenuItem menuItem;

  const _CustomListTile({
    required this.menuItem
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon,color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      contentPadding: EdgeInsets.all(5),
      onTap: (){
        //Navigator.of(context).push(
        // MaterialPageRoute(builder: (context) => const ButtonScreen())
        //);

        //Navigator.pushNamed(context, menuItem.link);
        context.push(menuItem.link);
      },
    );
  }
}