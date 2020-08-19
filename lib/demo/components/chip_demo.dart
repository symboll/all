import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'Lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 16.0,
              runSpacing: 8.0,  // 行与行之间的间隔
              children: <Widget>[
                Chip(
                  label: Text('Life')
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('likanghua'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('康'),
                  ),
                ),
                SizedBox(width:  16.0,),
                Chip(
                  label: Text('likanghua'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://user-gold-cdn.xitu.io/2017/11/20/15fd7937bfca9d71?w=650&h=910&f=png&s=167319"
                    ),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 32.0,
              // indent:  32.0,      // 左侧缩进
            ),
            Wrap(
              spacing: 16.0,
              children: _tags.map(
                (String item) => Chip(
                  label: Text(item),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(item);
                    });
                  },
                )
              ).toList()
            ),
            Divider(
              color: Colors.grey,
              height: 32.0,
              // indent:  32.0,      // 左侧缩进
            ),
            Container(
              width: double.infinity,
              child: Text('ActionChip: $_action'),
            ),
            Wrap(
              spacing: 16.0,
              children: _tags.map(
                (String item) => ActionChip(
                  label: Text(item),
                  onPressed: () {
                    setState(() {
                      _action = item;
                    });
                  },
                )
              ).toList()
            ),
            Container(
              width: double.infinity,
              child: Text('FilterChip: ${_selected.toString()}'),
            ),
            Wrap(
              spacing: 16.0,
              children: _tags.map(
                (String item) => FilterChip(
                  label: Text(item),
                  selected: _selected.contains(item),
                  onSelected: (value) {
                    if(_selected.contains(item)) {
                      setState(() {
                        _selected.remove(item);
                      });
                    }else {
                      setState(() {
                        _selected.add(item);
                      });
                    }
                  },
                )
              ).toList()
            ),
            Container(
              width: double.infinity,
              child: Text('ChoiceChip: ${_choice}'),
            ),
            Wrap(
              spacing: 16.0,
              children: _tags.map(
                (String item) => ChoiceChip(
                  selectedColor: Colors.redAccent,
                  label: Text(item),         
                  selected: _choice == item,
                  onSelected: (value) {
                    setState(() {
                      _choice = item;
                    });
                  },     
                )
              ).toList()
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _tags = ['Apple','Banana','Lemon'];
            _action = 'Nothing';
            _selected = [];
            _choice = 'Lemon';
          });
        },
        child: Icon(Icons.restore),
      ),
    );
  }
}