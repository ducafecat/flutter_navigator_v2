import 'package:flutter/material.dart';
import 'package:flutter_navigator_v2/api/news.dart';
import 'package:flutter_navigator_v2/entity/news.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<NewsEntity>? newsList;

  @override
  void initState() {
    super.initState();
    newsList = getNewsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Material(
        child: newsList == null
            ? Container()
            : ListView(
                children: [
                  for (var item in newsList!)
                    ListTile(
                      title: Text('${item.title}'),
                      subtitle: Text('${item.description}'),
                      onTap: () => {},
                    )
                ],
              ),
      ),
    );
  }
}
