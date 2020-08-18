import 'package:flutter/material.dart';
import '../../model/post.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = false;
  List<Post> _selected = [];
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
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              onSelectAll: (bool value) {
                print( 'value: $value');
                if(_selected.length == 0) {
                  this.setState(() {

                    _selected = posts;
                  });
                }else {
                  this.setState(() {
                    _selected = [];
                  });
                }
              },
              columns: [
                DataColumn(
                  label:  Text('Title'),
                  onSort: (int index, bool ascending) {
                    this.setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = index;
                      posts.sort((a,b) {
                        if(!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  }
                ),
                DataColumn(
                  label: Text('Author'),
                  onSort: (int index, bool ascending) {
                    this.setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = index;
                    });
                  }
                ),// DataColumn(label: Text('Image')),
              ],
              rows: posts.map((Post post) => DataRow(
                selected: _selected.contains(post),
                onSelectChanged: (bool value) {
                  setState(() {
                    if(_selected.contains(post)) {
                      _selected.remove(post);
                    }else {
                      _selected.add(post);
                    }
                  });

                  print('_selected: ${_selected}');
                },
                cells: [
                  DataCell(
                    Text(post.title)
                  ),
                  DataCell(
                    Text(post.author)
                  ),
                  // DataCell(
                  //   Image.network(post.imageUrl)
                  // )
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