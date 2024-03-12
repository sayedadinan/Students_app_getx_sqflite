import 'package:flutter/material.dart';

class Namefield extends StatelessWidget {
  final TextEditingController namecontroller;
  const Namefield({super.key, required this.namecontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: namecontroller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 55, 135, 142),
              ),
              borderRadius: BorderRadius.circular(30)),
          labelText: 'username',
          hintText: 'Enter your full name',
          prefixIcon: Icon(
            Icons.person_outline_outlined,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your username";
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class ClassField extends StatelessWidget {
  final TextEditingController classcontroller;
  const ClassField({Key? key, required this.classcontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: classcontroller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 55, 135, 142),
              ),
              borderRadius: BorderRadius.circular(30)),
          labelText: 'Class',
          hintText: 'Enter your class',
          prefixIcon: Icon(Icons.class_),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your class";
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class Agefield extends StatelessWidget {
  final TextEditingController agecontroller;
  const Agefield({super.key, required this.agecontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: agecontroller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 55, 135, 142)),
              borderRadius: BorderRadius.circular(30)),
          labelText: 'Age',
          hintText: 'Enter your Age',
          prefixIcon: Icon(
            Icons.calendar_month,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your class";
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class phonefield extends StatelessWidget {
  final TextEditingController phonecontroller;
  const phonefield({super.key, required this.phonecontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: phonecontroller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 55, 135, 142)),
              borderRadius: BorderRadius.circular(30)),
          labelText: 'Phone',
          hintText: 'Enter your phone number',
          prefixIcon: Icon(
            Icons.phone,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your number";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
