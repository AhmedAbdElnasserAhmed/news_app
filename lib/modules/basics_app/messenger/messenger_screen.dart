import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget
{
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=hghNbR8SUCsAX8lQQzl&_nc_ht=scontent.fcai22-2.fna&oh=00_AfA5C8iQi_YHIyvYj8Td7sjs1CcwlIzNAV_IuDNyaFIWLA&oe=63EE7145',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                  //color: Colors.white,
                ),
              ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
                //color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(
                    5.0 ,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => buildStoryItem(),
                  separatorBuilder: (context , index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context , index) => buildChatItem(),
                separatorBuilder: (context , index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 20.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 6.0,
              //             ),
              //             Text(
              //               'Ahmed Nazir Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //
              //
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 30.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                     'https://scontent.faly3-1.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Yy9IyiGUfKwAX-07wBF&_nc_ht=scontent.faly3-1.fna&oh=00_AfD06wjJ7yJxaaIV5zW7bVCh2J-I1jRrE9a9oAsA4YfRKg&oe=63E68845',
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.5,
              //                     backgroundColor: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 7.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 7.0,
              //                           height: 7.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //
              //                       ),
              //                       Text(
              //                         '02:00 pm',
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

// 1. build item
// 2. build list
// 3. add item to list

// arrow function
Widget buildChatItem() => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
            'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=hghNbR8SUCsAX8lQQzl&_nc_ht=scontent.fcai22-2.fna&oh=00_AfA5C8iQi_YHIyvYj8Td7sjs1CcwlIzNAV_IuDNyaFIWLA&oe=63EE7145',
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 7.5,
            backgroundColor: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    ),
    SizedBox(
      width: 20.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser Ahmed Abd Elnasser',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'hello my name is ahmed abd elnasser hello my name is ahmed abd elnasser',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),

              ),
              Text(
                '02:00 pm',
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);

Widget buildStoryItem() => Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/283499916_1760779334265116_5758728776480050487_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=e3f864&_nc_ohc=hghNbR8SUCsAX8lQQzl&_nc_ht=scontent.fcai22-2.fna&oh=00_AfA5C8iQi_YHIyvYj8Td7sjs1CcwlIzNAV_IuDNyaFIWLA&oe=63EE7145'
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.5,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 6.0,
      ),
      const Text(
        'Ahmed Nazir Mahmoud',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);

