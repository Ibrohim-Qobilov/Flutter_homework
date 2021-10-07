import 'package:flutter/material.dart';

class CoffeeDeliveryB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,size: 33.0,)),
              Spacer(flex: 2,),
              Text(
                "Sign in ",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 2,),
              Text(
                "Welcome back",
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
              Spacer(flex: 2,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email address",
                  prefixIcon: SizedBox(
                    width: _size.width * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 20.0,
                          width: 1.5,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility),
                    prefixIcon: SizedBox(
                      width: _size.width * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock,
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            width: 1.5,
                            height: 20.0,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    hintText: "Password"),
              ),
              Spacer(flex: 1,),
              _forgotPassword(_size),
              Spacer(flex: 5,),
              _forwardArrowButton(_size, context),
              Spacer(flex:4 ,),
              Row(children: [Text(
                "New members?",
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),Text(
                "Sign up",
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),],)
            ],
          ),
        ),
      ),
    );
  }

  _forgotPassword(_size) {
    return Container(
      alignment: Alignment.center,
      width: _size.width,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Forgot Password?",style: TextStyle(color: Colors.black,decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  _forwardArrowButton(_size, context) {
    return Container(
      alignment: Alignment(0.8, 0.0),
      height: _size.height * 0.08,
      width: _size.width,
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.black,
        child: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 33.0,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoffeeDeliveryB(),
              ),
            );
          },
        ),
      ),
    );
  }
}
