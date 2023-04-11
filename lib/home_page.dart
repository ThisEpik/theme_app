import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/root_app_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final RootAppService service = context.watch();

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        children: [
          ElevatedButton(
            onPressed: service.changeTheme,
            child: const Text('Change Theme'),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Text Button',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'OutlinedButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Text(
            'Text',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Text',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Text',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const ListTile(
            title: Text('List tile title'),
            subtitle: Text('List tile subtitle'),
          ),
          const SizedBox(
            width: 50,
            height: 50,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: LinearProgressIndicator(),
          ),
          Slider(value: 0.5, onChanged: (value) {}),
          Switch(value: true, onChanged: (value) {}),
          Switch(value: false, onChanged: (value) {}),
          Checkbox(value: true, onChanged: (value) {}),
          Checkbox(value: false, onChanged: (value) {}),
          Radio(value: true, groupValue: true, onChanged: (value) {}),
          Radio(value: false, groupValue: true, onChanged: (value) {}),
        ],
      ),
    );
  }
}
