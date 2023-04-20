import 'package:flutter/material.dart';

class DayWeek {
  final String dayname;
  final String day;
  final Color color;

  DayWeek({required this.dayname, required this.day, required this.color});
}

List<DayWeek> dayweeklist = [
  DayWeek(
    dayname: 'SAB',
    day: '01',
    color: Colors.white,
  

  ),
  DayWeek(
    dayname: 'DOM',
    day: '02',
    color: Colors.amber,
 
   
  ),
  DayWeek(
    dayname: 'LUN',
    day: '03',
    color: Colors.white,
  
    
  ),
  DayWeek(
    dayname: 'MAR',
    day: '04',
    color: Colors.white,
  
  ),
  DayWeek(
    dayname: 'MIE',
    day: '05',
    color: Colors.white,
  
  ),
  DayWeek(
    dayname: 'JUE',
    day: '06',   
     color: Colors.white,
    
  ),
  DayWeek(
    dayname: 'VIE',
    day: '07',
    color: Colors.white,
  
  ),
];