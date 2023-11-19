import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SHelperFunctions {
  static Color? getColor(String value) {
    ///define products color it will match colors and show specific
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    }
    else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

   void showSnackBar(BuildContext context ,String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  Future  showAlert(BuildContext context, String title,String message) async {
    showDialog(
      context: context,
      builder:(context){
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(onPressed: () =>Navigator.of(context).pop(),
                child: const Text('ok')),
          ],
        );
      },
    );
  }
  static void navigateToScreen(BuildContext context,Widget screen){
    Navigator.push(
      context,MaterialPageRoute(builder: (_)=>screen),
    );
  }
  static String truncateText(String text,int maxLength){
    if(text.length<=maxLength){
      return text;
    }else {
      return text.substring(0,maxLength);
    }
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness ==Brightness.dark;
  }
  static Size screenSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static String getFormattedDate(DateTime date,{String format='dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }
  static List<T> removeDuplicates<T>(List<T>list){
    return list.toSet().toList();
  }
  static List<Widget> wrapWidgets(List<Widget> widgets,int rowSize){
    final wrappedList=<Widget>[];
    for(var i=0; i < widgets.length; i+=rowSize){
      final rowChildren=widgets.sublist(i,i+rowSize>widgets.length ? widgets.length:i+rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }
}
