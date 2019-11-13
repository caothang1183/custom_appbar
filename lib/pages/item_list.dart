import 'package:flutter/material.dart';
import 'package:flutter_custom_appbar/widgets/custom_sliver_app_bar.dart';

class ItemList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Material(
                child: CustomScrollView(
                    slivers: <Widget>[
                        SliverPersistentHeader(
                            delegate: CustomSliverAppBar(expandedHeight: 200,),
                            pinned: true,
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (_, index) => ListTile(
                                  title: Text('Index: $index'),
                              )
                          ),
                        ),
                    ],
                ),
            ),
        );
    }
}
