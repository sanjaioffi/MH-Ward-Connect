import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/view/issue_drop_down.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/view/issue_map.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/view/post_issue.dart';
import 'package:madurai_ward_connect/src/presentation/screens/issue/view/top_dialouge.dart';

class MarkIssuePage extends StatelessWidget {
  const MarkIssuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Raise an Issue"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopDialouge(),
              IssueMap(),
              MyDropdown(),
              SizedBox(height: 30),
              PostIssueButton(),
            ],
          ),
        ),
      ),
    );
  }
}
