import 'package:flutter/material.dart';
import '../../model/post.dart';


class PostDataSource extends DataTableSource{
  final List<Post>_posts = posts;
  int _selectedCount = 0;
  @override
  int get rowCount => _posts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells:  <DataCell>[
        DataCell(Text(_posts[index].title)),
        DataCell(Text(_posts[index].author)),
        DataCell(
          Image.network(_posts[index].imageUrl)
        )
      ],
    );
  }

  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b) {
      if(!ascending) {
        final c = a;
        a = b;
        b = c;
      }

      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });

    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  PaginatedDataTableDemo({Key key}) : super(key: key);

  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = false;

  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('Post'),
              rowsPerPage: 5,
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns: [
                DataColumn(
                  label:  Text('Title'),
                  onSort: ( int columnIndex, bool ascending) {
                    _postsDataSource._sort((post)=>post.title.length, ascending);

                    setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = columnIndex;
                    });
                  },
                ),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Image')),
              ],
              source: _postsDataSource
            ),
          ],
        ),
      ),
    );
  }
}