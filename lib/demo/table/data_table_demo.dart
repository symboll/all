import 'package:flutter/material.dart';
import '../../model/post.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(label: Container(
                  width: 100.0,
                  child: Text('Title'),
                )),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Image')),
              ],
              rows: posts.map((Post post) => DataRow(
                cells: [
                  DataCell(
                    Text(post.title)
                  ),
                  DataCell(
                    Text(post.author)
                  ),
                  DataCell(
                    Image.network(post.imageUrl)
                  )
                ]
              )).toList(),
              // rows: [
              //   DataRow(
              //     cells: [
              //       DataCell(Text('Hello ~')),
              //       DataCell(Text('likanghua')),
              //     ]
              //   )
              // ]
            )
          ],
        ),
      ),
    );
  }
}