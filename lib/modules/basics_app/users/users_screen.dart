import 'package:flutter/material.dart';

import '../../../models/user/user_model.dart';



class UsersScreen extends StatelessWidget
{
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Ahmed Abd Elnasser',
      phone: '+201124670038',
    ),
    UserModel(
      id: 2,
      name: 'Abd Elnasser Ahmed',
      phone: '+201124670037',
    ),
    UserModel(
      id: 3,
      name: 'Omar Abd Elnasser',
      phone: '+201122740742',
    ),
    UserModel(
      id: 4,
      name: 'Mohamed Abd Elnasser',
      phone: '+201153060267',
    ),
    UserModel(
      id: 5,
      name: 'Ahmed Abd Elnasser',
      phone: '+201124670038',
    ),
    UserModel(
      id: 6,
      name: 'Abd Elnasser Ahmed',
      phone: '+201124670037',
    ),
    UserModel(
      id: 7,
      name: 'Omar Abd Elnasser',
      phone: '+201122740742',
    ),
    UserModel(
      id: 8,
      name: 'Mohamed Abd Elnasser',
      phone: '+201153060267',
    ),
    UserModel(
      id: 9,
      name: 'Ahmed Abd Elnasser',
      phone: '+201124670038',
    ),
    UserModel(
      id: 10,
      name: 'Abd Elnasser Ahmed',
      phone: '+201124670037',
    ),
    UserModel(
      id: 11,
      name: 'Omar Abd Elnasser',
      phone: '+201122740742',
    ),
    UserModel(
      id: 12,
      name: 'Mohamed Abd Elnasser',
      phone: '+201153060267',
    ),
    UserModel(
      id: 13,
      name: 'Ahmed Abd Elnasser',
      phone: '+201124670038',
    ),
    UserModel(
      id: 14,
      name: 'Abd Elnasser Ahmed',
      phone: '+201124670037',
    ),
    UserModel(
      id: 15,
      name: 'Omar Abd Elnasser',
      phone: '+201122740742',
    ),
    UserModel(
      id: 16,
      name: 'Mohamed Abd Elnasser',
      phone: '+201153060267',
    ),
  ];

  UsersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context , index) => buildUserItem(users[index]),
          separatorBuilder: (context , index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
         CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.phone,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        // Column(
        //   children: [
        //     Text(
        //       'Ahmed Abd Elnasser',
        //       style: TextStyle(
        //         fontSize: 20.0,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10.0,
        //     ),
        //     Text(
        //       '01124670038',
        //       style: TextStyle(
        //         fontSize: 20.0,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    ),
  );

  // 1. build item
  // 2. build list
  // 3. add item to list
}
