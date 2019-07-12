import 'package:flutter/material.dart';
import 'models/post.dart';
import 'models/api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter JSON List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts;

  @override
  void initState() {
    setPosts();
    super.initState();
  }

  void setPosts() async {
    fetchList().then((result) {
      setState(() {
        posts = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    bool hasPosts = posts == null || posts.isEmpty;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: hasPosts
            ? Center(
                child: Text('There is no Posts'),
              )
            : ListView.builder(
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(posts[index].title),
                    onTap: () {},
                  );
                },
              ),
      ),
    );
  }
}
