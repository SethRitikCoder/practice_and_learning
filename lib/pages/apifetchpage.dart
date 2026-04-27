import 'package:flutter/material.dart';
import 'package:make_app/models/jsonplaceholder.model.dart';
import 'package:make_app/apiservice/apiservice.dart';

class MyApiFetch extends StatefulWidget {
  const MyApiFetch({super.key});

  @override
  State<MyApiFetch> createState() => _MyApiFetchState();
}

class _MyApiFetchState extends State<MyApiFetch> {
  late Future<List<PostModel>> myfuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfuture = Apiservice().getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Api Fetch',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<PostModel>>(
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
                        myfuture = Apiservice().getApi();
                      });
                    },
                    child: Text("Retry"),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var data = snapshot.data![index];
                return Card(
                  child: ListTile(
                    title: Text(
                      data.title.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(data.body.toString()),
                    leading: CircleAvatar(child: Text("${data.userId}")),
                    trailing: Text(data.id.toString()),
                  ),
                );
              },
            );
          }
          return Center(child: Text("No Data Available"));
        },
      ),
    );
  }
}
