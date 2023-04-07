import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CancelScreen extends StatefulWidget {
  const CancelScreen({Key? key}) : super(key: key);

  @override
  State<CancelScreen> createState() => _CancelScreenState();
}

class _CancelScreenState extends State<CancelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16, left: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Upper back Button

                      Container(
                        height: 55,
                        width: 55,
                        child: Card(
                          shape: const CircleBorder(),
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.asset(
                              'accets/icon/arrow.svg',
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Confirmation message

                  Row(
                    children: const [
                      Text(
                        'Your appointment is confirm',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 20),
                      ),
                    ],
                  ),

                  // bump image
                ],
              ),
            ),

            // Bump Image

            Container(
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('accets/background/bupm.png'),
                ],
              ),
            ),


            Container(
             // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
             // margin: const EdgeInsets.only(top: 20, left: 21),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: 250,
                      width: 350,
                      child: Image.asset(
                        'accets/background/canclebgc.png',
                        alignment: Alignment.center,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),


                  // card button
                  Container(
                    height: MediaQuery.of(context).size.height*.25,
                    width: 305,

                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('accets/background/cardbg.png'),
                            fit: BoxFit.fill)),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 31),


                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'accets/icon/doctor.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    'Dr. Floora Tails',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins'),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'accets/icon/calander.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('Wednesday, 16 march, 2023',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins'))
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'accets/icon/clock.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('01:00 Pm',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins'))
                                ],
                              ),
                             SizedBox(height:10,),
                              ElevatedButton.icon(

                                icon: SvgPicture.asset('accets/icon/calander.svg',height: 20,
                                  width: 20,color: Colors.white),
                                label: const Text('Add to calendar',style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins')),
                                onPressed: () { },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  backgroundColor: Color(0xff6488ce)
                                ),

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0040A2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                          fixedSize: Size(250,40)
                      ),
                      child: Text('Cancel appoinment',style: TextStyle(fontSize: 17),),

                    ),
                  ),

                  SizedBox(
                      height:131,
                      child: Image.asset('accets/background/circle.png')),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
