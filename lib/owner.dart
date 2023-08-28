import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saloon/main.dart';
import 'package:saloon/shop_details.dart';

class Owner extends StatefulWidget {
  @override
  _OwnerState createState() => _OwnerState();
}

class _OwnerState extends State<Owner> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _mNumber = TextEditingController();
  TextEditingController _aadhar = TextEditingController();
  TextEditingController _pan = TextEditingController();
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 550),
            Text(
              'Owner Details',
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Flexible(
                    flex :1,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff1D1617).withOpacity(0.11),
                              blurRadius: 40,
                              spreadRadius: 0.0)
                        ],
                        color: Color.fromRGBO(247, 247, 249, 1),
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _firstname,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'First Name is Empty';
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'FirstName',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child:
                              SvgPicture.asset('assets/icons/user-svgrepo-com.svg'),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex :1,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff1D1617).withOpacity(0.11),
                              blurRadius: 40,
                              spreadRadius: 0.0)
                        ],
                        color: Color.fromRGBO(247, 247, 249, 1),
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _lastname,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Last Name is Empty';
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Last Name',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child:
                              SvgPicture.asset('assets/icons/user-svgrepo-com.svg'),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 70,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff1D1617).withOpacity(0.11),
                              blurRadius: 40,
                              spreadRadius: 0.0)
                        ],
                        color: Color.fromRGBO(247, 247, 249, 1),
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2)
                        ],

                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15),
                            hintText: '+91',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff1D1617).withOpacity(0.11),
                              blurRadius: 40,
                              spreadRadius: 0.0)
                        ],
                        color: Color.fromRGBO(247, 247, 249, 1),
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10)
                        ],
                        controller: _mNumber,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Number is Empty';
                          }
                          else if(text.length<=9)
                            {
                              return 'Put the 10 Digit Number';
                            }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Mobile Number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(9),
                              child: SvgPicture.asset(
                                  'assets/icons/phone-svgrepo-com.svg'),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                //width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff1D1617).withOpacity(0.11),
                        blurRadius: 40,
                        spreadRadius: 0.0)
                  ],
                  color: Color.fromRGBO(247, 247, 249, 1),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _email,
                  validator: (text) => text!=null && !EmailValidator.validate(text)
                    ?'Enter Valid Mail'
                    : null,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                      hintText: 'Email',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(9),
                        child: SvgPicture.asset(
                            'assets/icons/email-1-svgrepo-com.svg'),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                //width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff1D1617).withOpacity(0.11),
                        blurRadius: 40,
                        spreadRadius: 0.0)
                  ],
                  color: Color.fromRGBO(247, 247, 249, 1),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _aadhar,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(12),
                    AadhaarCardNumber()
                  ],
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Aadhaar Number is Empty';
                    }
                    else if(text.length<=11)
                      {
                        return("Enter Valid Aadhaar Number");
                      }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                      hintText: 'Aadhaar Number',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(9),
                        child: SvgPicture.asset(
                            'assets/icons/user-id-svgrepo-com.svg'),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                //width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff1D1617).withOpacity(0.11),
                        blurRadius: 40,
                        spreadRadius: 0.0)
                  ],
                  color: Color.fromRGBO(247, 247, 249, 1),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _pan,
                  textCapitalization: TextCapitalization.characters,
                  inputFormatters: <TextInputFormatter>[
                    LengthLimitingTextInputFormatter(10)
                  ],
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Name is Empty';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                      hintText: 'Pan Card',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(9),
                        child: SvgPicture.asset(
                            'assets/icons/address-card-svgrepo-com.svg'),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                }
              },
              child: AnimatedContainer(
                duration: const Duration(microseconds: 200),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[500]!,
                        offset: const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1),
                    const BoxShadow(
                        color: Colors.white,
                        offset: const Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1),
                  ],
                ),
                child: Center(child: Text("Submit"))
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AadhaarCardNumber extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue){
    if(newValue.selection.baseOffset==0)
      {
        return newValue;
      }

    String enteredData = newValue.text;
    StringBuffer buffer =StringBuffer();

    for(int i=0;i<enteredData.length;i++)
      {
        buffer.write(enteredData[i]);
        int index =i+1;
        if(index%4==0 && enteredData.length!= index){
          buffer.write(" ");
        }
      }
  return TextEditingValue(
    text: buffer.toString(),
    selection: TextSelection.collapsed(offset: buffer.toString().length)
  );
  }
}