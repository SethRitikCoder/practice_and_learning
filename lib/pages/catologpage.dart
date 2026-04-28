import 'package:flutter/material.dart';

import 'package:make_app/models/catalogmodel.dart';

class MyCatologPage extends StatefulWidget {
  const MyCatologPage({super.key});

  @override
  State<MyCatologPage> createState() => _MyCatologPageState();
}

class _MyCatologPageState extends State<MyCatologPage> {
  final dummylist = List.generate(20, (index) => Catalogmodel.products[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Catalog App',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          final item = dummylist[index];
          return Card(
            child: ListTile(
              leading: Image.network(item.image!, fit: BoxFit.cover),
              title: Text(item.name.toString()),
              trailing: Text(
                "\$${item.price.toString()}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(item.desc.toString()),
            ),
          );
        },
      ),
    );
  }
}
