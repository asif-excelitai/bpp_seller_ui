import 'package:intl/intl.dart';

class SFormatter{
  static String formatDate(DateTime? date){
    date ??=DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US',symbol: "\$").format(amount);
  }

  static StringPhoneNumber(String phoneNumber){
    ///Lets think 10digits Us phone Number format:(123) 456-7890
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    } else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0,4)})${phoneNumber.substring(4,7)}${phoneNumber.substring(7)}';
    }
    ///Adding bd number will later
    ///Bd number starts with +880 ,or 01
    return phoneNumber;
  }
  ///International Formate Phone Number
 static String internationalFormatPhoneNumber(String phoneNumber){

    ///Remove non character from phone Number///

   var digitsOnly=phoneNumber.replaceAll(RegExp(r'\D'),'');

   ///Extrct the country code from the digitsOnly
   String countryCode='+${digitsOnly.substring(0,2)}';
   digitsOnly=digitsOnly.substring(2);

   ///Remaining Digits adding with proper phone number format

   final formattedNumber=StringBuffer();
   formattedNumber.write('($countryCode)');

   int i=0;
   while(i<digitsOnly.length){
     int groupLength =2;
     if(i == 0 && countryCode =='+1'){
       groupLength=3;
     }

     int end=i+groupLength;
     formattedNumber.write(digitsOnly.substring(i,end));

     if(end < digitsOnly.length){
       formattedNumber.write('');
     }
     i = end;
   }
   return internationalFormatPhoneNumber(phoneNumber);
 }

}