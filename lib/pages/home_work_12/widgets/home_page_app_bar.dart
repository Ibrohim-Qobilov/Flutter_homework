

import 'package:allhomework/pages/home_work_12/screens/bottom_nav_bar.dart';
import 'package:allhomework/pages/home_work_12/screens/login_page.dart';
import 'package:flutter/material.dart';

AppBar homePageAppBar(BuildContext context, int titleIndex) => AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      // systemOverlayStyle: SystemUiOverlayStyle.light,
      title: Text(
        titles[titleIndex],
        style: const TextStyle(color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {},
          icon:  Icon(Icons.notes),
        ),
        GestureDetector(
          child: const CircleAvatar(),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  LoginPage()));
          },
        ),
        const SizedBox(
          width: 16.0,
        )
      ],
    );
