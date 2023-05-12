import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/controllers/auth_controller.dart';
import 'package:tiktok/views/widgets/screens/auth/add_video_screen.dart';
import 'package:tiktok/views/widgets/screens/auth/profile_screen.dart';
import 'package:tiktok/views/widgets/screens/auth/search_screen.dart';
import 'package:tiktok/views/widgets/screens/auth/video_screen.dart';


List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('messages screen'),
  ProfileScreen(uid: authController.user.uid),
];

//for colors
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//for firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//controller
var authController = AuthController.instance;
