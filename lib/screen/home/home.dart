import 'package:darpandentalhome/appoitment.dart';
import 'package:darpandentalhome/presentation/custom_icons.dart';
import 'package:darpandentalhome/screen/home/card_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Appointment> appointments= [
    Appointment(appointmentDate: '2019-12-01', appointmentType: 'Dental'),
    Appointment(appointmentDate: '2020-01-01', appointmentType: 'Normal Check Up'),
    Appointment(appointmentDate: '2019-12-01', appointmentType: 'Dental'),
    Appointment(appointmentDate: '2020-01-01', appointmentType: 'Normal Check Up'),
    Appointment(appointmentDate: '2020-01-01', appointmentType: 'Normal Check Up'),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10,0,0),
                    child: IconButton(
                      iconSize: 35,
                      icon: Icon(Icons.menu,color: Color(0xff4CBBB9)),
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                        radius: 30,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                            'S',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 36,
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Book Appointment for:',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20)
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDBE5FE),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)
                                      ),
                                    ),
                                    child: Icon(MyCustomIcons.teeth,size: 40,color: Color(0xff4B7FFB)),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    'Dental',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 13
                                    ),
                                  )
                                ],
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Center(
                            child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFEFE1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)
                                        ),
                                      ),
                                      child: Icon(MyCustomIcons.heart,size: 40,color: Color(0xffFFB167),),
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      'Normal \n Check Up',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 13
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Appointment History',
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 20
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,20),
                child: Column(
                  children: appointments.map((appointments) {
                    setState(() {
                      number=number+1;
                    });
                    return CardClass(appointments: appointments,number: number,);
                  }
                  ).toList(),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

