import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    //main axis alignment : start
    //cross axis alignment : center

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(
            icon: Icon(
            Icons.notification_important,
          ),
            onPressed: onNotification,
          ),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: ()
            {
              print('Search Clicked');
            },
          ),

        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                      ),
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(.7),
                    width: 200.0,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      // SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Container(
      //     height: double.infinity,
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           'First',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Second',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Third',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Fourth',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'First',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Second',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Third',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Fourth',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'First',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Second',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Third',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Fourth',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'First',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Second',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Third',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Fourth',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'First',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Second',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Third',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Fourth',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'First',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Second',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Third',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //         Text(
      //           'Fourth',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      ),
      // Container(
      //   color: Colors.brown,
      //   height: double.infinity,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     //crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         color: Colors.red,
      //         child: Text(
      //           'First',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 20.0,
      //           ),
      //         ),
      //       ),
      //       // Container(
      //       //   color: Colors.green,
      //       //   child: Text(
      //       //     'Second',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 20.0,
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.blue,
      //       //   child: Text(
      //       //     'Third',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 20.0,
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.amber,
      //       //   child: Text(
      //       //     'Fourth',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 20.0,
      //       //     ),
      //       //   ),
      //       // ),
      //     ],
      //   ),
      // ),
      // body: Container(
      //   color: Colors.brown,
      //   width: double.infinity,
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     //mainAxisAlignment: MainAxisAlignment.start,
      //     //crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //       Container(
      //         color: Colors.red,
      //         child: Text(
      //           'First Text',
      //           style:
      //           TextStyle(
      //             color: Colors.white,
      //             fontSize: 30.0,
      //           ),
      //         ),
      //       ),
      //       // Container(
      //       // color: Colors.green,
      //       // child: Text(
      //       //     'Second Text',
      //       //   style: TextStyle(
      //       //     color: Colors.white,
      //       //     fontSize: 30.0,
      //       //   ),
      //       // ),
      //       // ),
      //       // Container(
      //       //   color: Colors.blue,
      //       //   child: Text(
      //       //     'Third Text',
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 30.0,
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       // color: Colors.amber,
      //       // child: Text(
      //       //   'Fourth Text',
      //       //   style: TextStyle(
      //       //     color: Colors.white,
      //       //     fontSize: 30.0,
      //       //   ),
      //       // ),
      //       // ),
      //     ],
      //   ),
      // ),

    );
  }

  // When notification icon button clicked
  void onNotification()
  {
    print('Notification Clicked');
  }

}
