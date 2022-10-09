import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {

  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
             
             _PurpleBox(),

             _HeaderIcon(),
             this.child,
              Container(
                padding: EdgeInsets.only(),
                height: 100,
                child:Image.asset('assets/logorh.png', height: 30, width: 80,),
              )
        ],
        
        ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     
      child: Container(
       width: double.infinity,
       margin: EdgeInsets.only(top: 10),
      child: Icon(Icons.person_pin, color: Colors.white,size: 100,), //cambiar a imagen
    
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height*0.4,
      decoration: _boxDecoration(),
      child: Stack(
        children: [
            Positioned(child: _Bubble(),top: 90,left: 30, ),
            Positioned(child: _Bubble(),top: -40,left: -30, ),
            Positioned(child: _Bubble(),top: -50,right: -20, ),
            Positioned(child: _Bubble(),bottom: -50,left: 10, ),
            Positioned(child: _Bubble(),bottom:30,right: 50, ),
            Positioned(child: _Bubble(),top: 90,left: 30, ),
            Positioned(child: _Bubble(),top: -40,left: -30, ),
            Positioned(child: _Bubble(),top: -50,right: -20, ),
            Positioned(child: _Bubble(),bottom: -50,left: 10, ),
            Positioned(child: _Bubble(),bottom:30,right: 50, ),
         
          
        ],
         ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
    gradient: LinearGradient
    (colors: [
      Color.fromARGB(255, 232, 10, 10),
      Color.fromARGB(255, 244, 75, 86),
    ]
    ),
  );
}

class _Bubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: Color.fromARGB(7, 0, 0, 0),
       ),
    );
  }
}