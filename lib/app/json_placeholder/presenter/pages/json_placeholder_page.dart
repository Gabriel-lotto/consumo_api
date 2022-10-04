import 'package:api_/app/json_placeholder/presenter/stores/json_placeholder_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class JsonPlaceholderPage extends StatefulWidget {
  const JsonPlaceholderPage({Key? key}) : super(key: key);

  @override
  State<JsonPlaceholderPage> createState() => _JsonPlaceholderPageState();
}

class _JsonPlaceholderPageState extends State<JsonPlaceholderPage> {
  var store = Modular.get<JsonPlaceholderStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: store.getJsonPlaceholder(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: store.jsonPlaceholderList.length,
                itemBuilder: (context, index) {
                  final jsonList = store.jsonPlaceholderList[index];
                  return CheckboxListTile(
                    title: Text(jsonList.title),
                    value: jsonList.completed,
                    onChanged: (value) {},
                  );
                });
          }
        },
      ),
    );
  }
}
