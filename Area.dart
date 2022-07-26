import'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Area extends StatefulWidget {
  const Area({Key? key}) : super(key: key);

  @override
  State<Area> createState() => _AreaState();
}

class _AreaState extends State<Area> {

  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  String Area=' Area = ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.home,size: 30,),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25)
        ),
        elevation: 0,
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text('Area Calculator',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 25,),

              TextField(
                controller: firstController,
                keyboardType: TextInputType.number ,
               decoration: InputDecoration(
                 hintText: 'Enter Length / Radius ',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                 )
               ),
             ),

              const SizedBox(height: 25,),

              TextField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter Width ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                ),
              ),

              const SizedBox(height: 25,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ) ,
                      onPressed: (){
                        String num1 = firstController.text;
                        if(num1.isEmpty)
                          {
                            Fluttertoast.showToast(msg: 'Please Provide Number');
                          }

                        double first = double.parse(num1);
                        double res = first * first;

                        setState((){
                          Area = 'Area = $res';

                        });
                      },
                      child: const Text('Calculate Area of Square',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ) ,
                      onPressed: (){
                        String num1 = firstController.text;
                        String num2 = secondController.text;

                        if(num1.isEmpty || num2.isEmpty)
                        {
                          Fluttertoast.showToast(msg: 'Please Provide Number');
                        }

                        double first = double.parse(num1);
                        double second = double.parse(num2);

                        double res = first * second;


                        setState((){
                          Area = 'Area = $res';

                        });
                      },
                      child: const Text('Calculate Area of Triangle',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),)),
                ],
              ),

              const SizedBox(height: 25,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: (){
                        String num1 = firstController.text;
                        if(num1.isEmpty)
                        {
                          Fluttertoast.showToast(msg: 'Please Provide Number');
                        }

                        double first = double.parse(num1);
                        double res = 3.14 * first * first;


                        setState((){
                          Area = 'Area = $res';

                        });
                      },
                      child: const Text('Calculate Area of Circle',
                        style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.bold),)),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ) ,
                      onPressed: (){
                        String num1 = firstController.text;
                        String num2 = secondController.text;

                        if(num1.isEmpty || num2.isEmpty)
                        {
                          Fluttertoast.showToast(msg: 'Please Provide Number');
                        }

                        double first = double.parse(num1);
                        double second = double.parse(num2);

                        double res = 1~/2 * first + second;


                        setState((){
                          Area = 'Area = $res';

                        });
                      },
                      child: const Text('Calculate Area of Trapezoid',
                        style: TextStyle(fontSize: 12.3, fontWeight: FontWeight.bold),)),

                ],
              ),
              const SizedBox(height: 25,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ) ,
                  onPressed: (){
                    firstController.clear();
                    secondController.clear();

                    setState((){
                      Area = 'Area = ';

                    });

                  },
                child: const Text('C L E A R ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 25,),

              Text(Area,style: const  TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)

            ],
          ),
        ),
      ),
    );
  }
}
