import 'package:flutter/material.dart';
import 'package:schoolapp/Features/Home/presentation/widget/assignment.dart';
import 'package:schoolapp/Features/Home/presentation/widget/subjects.dart';
import '../../../../constants.dart';
import '../../../../core/utils/styles.dart';
import '../functions/defualtButton.dart';
import '../widget/appBar.dart';
import '../widget/textField.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.0,
          left: 16.0,
          right: 16.0,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                const SizedBox(
                  height: 24,
                ),
                HomeTextField(),
                const SizedBox(
                  height: 24,
                ),
                const Text("Urgent Updates",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
                //Description & idinticator
                const SizedBox(
                  height: 16,
                ),
                //----------------------------
                //UrgentUpdate(),

                //***********************
                Row(
                  children: [
                    Text(
                      'Today Classes',
                      textAlign: TextAlign.center,
                      style: Styles.textEdit.copyWith(
                        color: Color(0xFF181D26),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.22,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.edit_calendar)
                  ],
                ),
                // subject table (error)
                // Subjects(),

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Class Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Text("10AM - 12PM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    Text("Teacher name",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
                Text("Over view for lesson ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                Row(
                  children: [
                    defualtButton(
                        redius: 5.0,
                        backColor: kPrimaryColor,
                        text: 'Assignment',
                        textColor: Colors.white),
                    defualtButton(
                        redius: 0.0,
                        backColor: Colors.white,
                        text: 'Attdence',
                        textColor: Colors.grey),
                    defualtButton(
                        redius: 0.0,
                        backColor: Colors.white,
                        text: 'Note',
                        textColor: Colors.grey)
                  ],
                ),

                const SizedBox(
                  height: 16,
                ),
                for (int i = 0; i < 5; i++) Assignment()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
