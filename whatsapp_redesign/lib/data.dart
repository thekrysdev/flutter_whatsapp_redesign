import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool seen, online;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.seen,
    required this.online,
  });
}

List<ChatModel> dummyData = [
  new ChatModel(
    name: "Chris",
    message: "Good Morning Boss",
    time: "11:30",
    avatarUrl: "https://randomuser.me/api/portraits/men/69.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "Daiana",
    message: "Flutter is the best Language!",
    time: "19:30",
    avatarUrl: "https://randomuser.me/api/portraits/women/88.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Didi",
    message: "Flutter is the only Language!",
    time: "06:30",
    avatarUrl: "https://randomuser.me/portraits/men/42.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "Lana",
    message: "Hi :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/api/portraits/women/28.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Monica",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/15.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Sarah",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/3.jpg",
    seen: false,
    online: false,
  ),
  new ChatModel(
    name: "Belinda",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/2.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "Chuck",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/1.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Norris",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/5.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "Bob",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/6.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Harry",
    message: "Hello my Boss :)",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/11.jpg",
    seen: true,
    online: false,
  ),
];
