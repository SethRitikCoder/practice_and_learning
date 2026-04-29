import 'package:flutter/material.dart';


import 'package:make_app/services/json_service.dart';

import 'package:make_app/models/localfile_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<LocalfileModel>?> myfuture;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfuture = JsonService().getjson();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Local Json File',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<LocalfileModel>?>(
        future: myfuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                children: [
                  Text("Error:${snapshot.error}"),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myfuture = JsonService().getjson();
                      });
                    },
                    child: Text("Retry"),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                final data = snapshot.data![index];

                return Card(
                  child: ListTile(
                    title: Text(data.name.toString()),
                    subtitle: Text(data.description.toString()),
                    trailing: Text(data.price.toString()),
                    leading: CircleAvatar(child: Text(data.id.toString())),
                  ),
                );
              }
            );
          } return Center(child: Text("No Data Available"));
        })
      
    );
  }
}
