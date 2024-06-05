// ignore_for_file: unused_local_variable


class EValidator{


  static String? validateEmptyField(String? fieldName,String? value){
    if(value == null || value.isEmpty){
      return '$fieldName is required';
    }
    return null;
  }


  static String? emailValidator(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    ///Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required';
    }

    ///Regular expression for password validation
    final passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$');

    ///Check for minimum password length
    if(value.length < 6){
      return 'Password must be at least 6 characters long';
    }

    ///Check for uppercase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one uppercase letter';
    }

    ///Check for numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at least one number';
    }

    ///Check for special characters
    if(!value.contains(RegExp(r'[!@#\$%^&*()_+\|\~\-=]'))){
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    }

    ///Regular expression for phone number validation
    final phoneNumberRegExp = RegExp(r'^(\+92|0)(\d{10})$');

    if(!phoneNumberRegExp.hasMatch(value)){
      return 'Invalid phone number';
    }
    return null;
  }
}