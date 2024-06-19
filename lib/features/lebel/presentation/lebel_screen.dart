import 'package:flutter/material.dart';

class LebelScreen extends StatefulWidget {
  const LebelScreen({super.key});

  @override
  State<LebelScreen> createState() => _LebelScreenState();
}

class _LebelScreenState extends State<LebelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lebel Screen'),),
    );
  }
}