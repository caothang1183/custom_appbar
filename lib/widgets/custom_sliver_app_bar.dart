import 'package:flutter/material.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
    final double expandedHeight;

    CustomSliverAppBar({@required this.expandedHeight});

    @override
    double get maxExtent => expandedHeight;

    @override
    double get minExtent => kToolbarHeight;

    @override
    bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

    @override
    Widget build(BuildContext context, double shrinkOffset,
        bool overlapsContent) {
        return Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: <Widget>[
                Image.asset(
                    'assets/images/background.jpg', fit: BoxFit.cover,),
                Positioned(
                    top: 5.0,
                    left: 10.0,
                    child: IconButton(icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                            Navigator.pop(context);
                        },
                    ),
                ),
                Center(
                    child: Opacity(
                        opacity: shrinkOffset / expandedHeight,
                        child: Text('Item List',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    top: (expandedHeight / 2 - shrinkOffset),
                    left: (MediaQuery
                        .of(context)
                        .size
                        .width / 3) - 5,
                    child: Opacity(
                        opacity: (1 - shrinkOffset / expandedHeight),
                        child: Card(
                            elevation: 10,
                            child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                            Colors.white,
                                            Colors.white,
                                        ],
                                    ),
                                ),

                                child: SizedBox(
                                    height: expandedHeight,
                                    width: (MediaQuery
                                        .of(context)
                                        .size
                                        .width / 3),
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0, 20.0, 20.0, 20.0),
                                        child: Image.asset(
                                            'assets/images/logo.png',
                                            fit: BoxFit.cover,
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                )
            ],
        );
    }
}
