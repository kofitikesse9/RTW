//import 'package:RTW/models/product.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  final _expandableController = ExpandableController();
  final label;
  final color;
  final List<Widget> children;

   StoreItem(this.label, {
    Key key,
    this.color = Colors.grey,
    this.children,
  }) : super(key: key);

  

get _newCollectionWidget {
    return 
    GestureDetector(
      child: Container(
        width: double.infinity,
        height: 150,
        color: color,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: () {
        _expandableController.toggle();
      },
    );
  }
  @override
  Widget build(BuildContext context) {


return ExpandablePanel(
            controller: _expandableController,
            collapsed: _newCollectionWidget,
            expanded: Column(mainAxisSize: MainAxisSize.min, children: [
              _newCollectionWidget,
              ...children
            ]),
            // ignore: deprecated_member_use
            tapBodyToCollapse: true,
            // ignore: deprecated_member_use
            tapHeaderToExpand: false,
          );
  }
}