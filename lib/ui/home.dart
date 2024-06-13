import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:gawe/Services/theme_services.dart';
import 'package:gawe/ui/add_task_bar.dart';
import 'package:gawe/ui/theme.dart';
import 'package:gawe/ui/widgets/button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addTaskBar(),
          _addDateBar(),
        ],
      ),
    );
  }
  _addTaskBar(){
    return Container(
            margin: const EdgeInsets.all(20),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat.yMMMMd().format(DateTime.now()),
                    style: subHeadingStyle,
                  ),
                  Text("Today",
                      style: headingStyle,
                  ),
                ],
              ),
              ),
              myButton(label: "+ Add Task", onTap: ()=>Get.to(AddTaskPage())),
            ],
          ),
          );
  }

_addDateBar(){
  return Container(
            margin: const EdgeInsets.only(top: 12, left: 20),
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: blueish,
              selectedTextColor: white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode?Colors.grey[400]:Colors.grey,
                )
              ),
              dayTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode?Colors.grey[200]:Colors.grey[800],
                )
              ),
              monthTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode?Colors.grey[200]:Colors.grey[800],
                )
              ),
              onDateChange: (date){
                _selectedDate=date;
              },
            ),
          );
}

  _appBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: blueish,
      leading: GestureDetector(
        onTap: (){
          ThemeServices().switchTheme();
        },
         child: Icon(
          Icons.nightlight_round, 
          size: 24,
          color: white,
          ),
      ),
      actions: [
        Icon(Icons.person, 
        size:24, 
        color: white,),
        SizedBox(width: 20,),
      ],
    );
  }
}