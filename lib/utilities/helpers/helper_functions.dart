import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EHelperFunctions{
  static Color? getColor(String color){
    ///Define your product specific color here and it will match the attribute colors and show specific

    if(color == 'Green'){
      return Colors.green;
    }else if(color == 'Red'){
      return Colors.red;
    }else if(color == 'Blue'){
      return Colors.blue;
    }else if(color == 'Purple'){
      return Colors.purple;
    }else if(color == 'Yellow'){
      return Colors.yellow;
    }else if(color == 'Brown'){
      return Colors.brown;
    }else if(color == 'Orange'){
      return Colors.orange;
    }else if(color == 'Black'){
      return Colors.black;
    }else if(color == 'White'){
      return Colors.white;
    }else if(color == 'Teal'){
      return Colors.teal;
    }else if(color == 'Indigo'){
      return Colors.indigo;
    }else if(color == 'Grey'){
      return Colors.grey;
    }
    return null;
  }

  static void showSnackBar(context,String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)),);
  }

  static void showAlert(context,String title,String message){
    showDialog(
        context: context,
           builder : (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('OK')),
            ],
          );
           });
  }

  static void navigateToScreen(context,Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  static String truncateText(String text , int maxLength){
    if(text.length <= maxLength){
      return text;
    }else{
      return '${text.substring(0,maxLength)}...';
    }
  }

  static bool isDarkMode(context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(context){
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(context){
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(context){
    return MediaQuery.of(context).size.width;
  }

  static String getFormattedDate(DateTime date,{String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }


}