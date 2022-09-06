import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flutterCourse = false;
  bool reactCourse = false;
  String imageLink = '';

  String? flutterImageLink;
  String? reactImageLink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Please select your course!',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              height: 32.0,
            ),
            CheckboxListTile(
              value: flutterCourse,
              title: const Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Based on Dart language',
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.orange,
                ),
              ),
              secondary: const Icon(
                Icons.flutter_dash,
                color: Colors.blue,
                size: 32.0,
              ),
              onChanged: (bool? value) {
                setState(() {
                  flutterCourse = value!;
                  if (value) {
                    flutterImageLink =
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnhNzR85No9HnUVD_82JYwUxvthD8WJaEi7g&usqp=CAU";
                  } else {
                    flutterImageLink = null;
                  }
                });
              },
            ),
            CheckboxListTile(
              value: reactCourse,
              title: const Text(
                'React',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Based on JavaScript language',
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.orange,
                ),
              ),
              secondary: const Icon(
                Icons.code,
                color: Colors.blue,
                size: 32.0,
              ),
              onChanged: (bool? value) {
                setState(() {
                  reactCourse = value!;
                  if (value) {
                    reactImageLink =
                        "https://blog.wildix.com/wp-content/uploads/2020/06/react-logo.jpg";
                  } else {
                    reactImageLink = null;
                  }
                });
              },
            ),
            const Divider(
              height: 32.0,
            ),
            if (flutterImageLink != null) Image.network(flutterImageLink!),
            if (reactImageLink != null) Image.network(reactImageLink!),
          ],
        ),
      ),
    );
  }
}
