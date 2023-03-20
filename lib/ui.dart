import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:ui/showpage.dart';

class uiDesign extends StatefulWidget {
  const uiDesign({super.key});

  @override
  State<uiDesign> createState() => _uiDesignState();
}

class _uiDesignState extends State<uiDesign> {
  String name = '';

  String sirname = '';
  String phone = '';
  String birthDate = '';

  String email = '';
  String pass = '';
  String adress = '';
  String country = '';
  String checbox = '';
  String radio = '';

  void clear() {
    nameContoller.clear();
    sirnameContoller.clear();
    phoneContoller.clear();
    emialContoller.clear();
    adressContoller.clear();
    passcontroller.clear();

    countryContoller.clear();
  }

  GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

  TextEditingController phoneContoller = TextEditingController();
  TextEditingController emialContoller = TextEditingController();
  TextEditingController countryContoller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  TextEditingController adressContoller = TextEditingController();
  TextEditingController nameContoller = TextEditingController();
  TextEditingController sirnameContoller = TextEditingController();
  TextEditingController cehckboxContoller = TextEditingController();
  TextEditingController dobContoller = TextEditingController();
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                const Text.rich(TextSpan(
                    text: 'Hello ! ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 18, 18, 18),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Weelcome to this page',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 81, 79, 79)),
                      )
                    ])),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: nameContoller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'requried';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Name',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: sirnameContoller,
                    validator: (val) {
                      if (val == null) {
                        return 'Required';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'Sirname',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                        value: "Male",
                        groupValue: radio,
                        onChanged: (value) {
                          setState(() {
                            radio = value.toString();
                          });
                        }),
                    Text('Male'),
                    Radio(
                        value: "Female",
                        groupValue: radio,
                        onChanged: (value) {
                          setState(() {
                            radio = value.toString();
                          });
                        }),
                    Text('Female'),
                  ],
                ),
                Row(
                  children: [
                    CommonCheckBox(
                      value: list.contains('Student'),
                      function: (p0) {
                        if (p0 == true) {
                          list.add('Student');
                        } else {
                          list.remove('Student');
                        }
                        setState(() {});
                      },
                    ),
                    const Text(
                      'Student',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    CommonCheckBox(
                      value: list.contains('Admmin'),
                      function: (p0) {
                        if (p0 == true) {
                          list.add('Admmin');
                        } else {
                          list.remove('Admmin');
                        }
                        setState(() {});
                      },
                    ),
                    const Text(
                      'Admmin',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: phoneContoller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'requried';
                      } else if (val.length < 10) {
                        return 'Invalid';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Phone',
                        prefixIcon: Icon(Icons.phone, color: Colors.black),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: emialContoller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'requried';
                      } else if (!RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(val)) {
                        return 'Enter a Valid Email address';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.black)),
                        hintText: 'E-mail',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: dobContoller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Choose date';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Birth Date',
                        prefixIcon: IconButton(
                            onPressed: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101));

                              if (pickedDate != null) {
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);

                                setState(() {
                                  dobContoller.text = formattedDate;
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                            icon: const Icon(Icons.date_range,
                                color: Colors.black)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                        ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    maxLines: 3,
                    controller: adressContoller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'requried';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.black)),
                        hintText: 'Adress',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: passcontroller,
                    validator: (val) {
                      if (val == null) {
                        return 'Required';
                      } else if (val.length < 5) {
                        return 'Invalid';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    onTap: () {},
                    controller: countryContoller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Choose the Country';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {
                              showCountryPicker(
                                  context: context,
                                  countryListTheme: CountryListThemeData(
                                    flagSize: 25,
                                    backgroundColor: Colors.white,
                                    textStyle: const TextStyle(
                                        fontSize: 16, color: Colors.blueGrey),
                                    bottomSheetHeight: 500,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                    inputDecoration: InputDecoration(
                                      labelText: 'Search',
                                      hintText: 'Start typing to search',
                                      prefixIcon: const Icon(Icons.search),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xFF8C98A8)
                                              .withOpacity(0.2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onSelect: (Country country) {
                                    setState(() {
                                      countryContoller.text =
                                          country.displayName;
                                    });
                                  });
                            },
                            icon: const Icon(
                              Icons.location_on,
                              color: Colors.black,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Country',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25),
                  child: InkWell(
                    onTap: (() {
                      if (formGlobalKey.currentState!.validate()) {
                        name = nameContoller.text;
                        sirname = sirnameContoller.text;

                        phone = phoneContoller.text;
                        email = emialContoller.text;
                        birthDate = dobContoller.text;
                        adress = adressContoller.text;
                        country = countryContoller.text;
                        pass = passcontroller.text;

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ShowingPage(
                            adress: adressContoller.text,
                            name: nameContoller.text,
                            email: emialContoller.text,
                            pass: passcontroller.text,
                            phone: phoneContoller.text,
                            country: countryContoller.text,
                            birthDate: dobContoller.text,
                            checbox: list,
                            sirname: sirnameContoller.text,
                            gender: radio,
                          );
                        }));
                      } else {
                        print('Not validate');
                      }
                    }),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            clear();
                            setState(() {
                              radio = '';
                              list = [];

                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                'Clear',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class CommonCheckBox extends StatelessWidget {
  const CommonCheckBox({super.key, this.function, required this.value});

  final bool value;
  final void Function(bool?)? function;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: Checkbox(
        activeColor: const Color.fromARGB(255, 249, 208, 146),
        value: value,
        onChanged: function,
      ),
    );
  }
}
