import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("H i !",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),),
                  SizedBox(height: 20,),
                  Text("Create a new account",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)


                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password ", obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),



                    )

                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {},
                  color: Color(0xff0095FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,

                  ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.network('data:image/png;base64,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'),
                  ),
                  Container(
                    child: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADcAAAA3CAYAAACo29JGAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEVYAABFWAQAeWaEAAAPqSURBVGhD7ZpLaFNBFIbPmZuq4Ft05xMRBcHHWrBgsU3dKKil8bVTkNrHxoUiiIgIurEPVy5bbW2XgsYWFd2IDwqtIgoqrlSktUXQ+uid45n0WCwxuQmduTcJfpD2/HNDOn/OzJmZ24vwF/H65pk0pA5ymCCizYiwAIB/FizcS4JR7mI/d7ILR3R7Mtn4Qy7CZMfjtZc3aPC7EXGtNBUd7PSVAq8m2VU3aHTKnDFG6D9gOd/oImcUyS9PdjUNYjzePFMvwIFizlgaBC/n+UMbFS1UB0vKmAFh3ZfY4kOKw8RES8mRUKYqiigpjC81Ue5LD+OLh2Uhr2PTgStJVaKVREUL0TB35CkCviHF5VzjuFyZhECv4i4f4DCnhERszmww4Aagd2n+ryUPenpqfLmQkaralvuclK0is2KqZTQQfULlxXs7G3b2Xqu7l4sxAyGOSBhIJOY4XR8oprYkr9b1SpMTojA3ziVsd2/HsdeinRG+OYQrtzvrH4pySqjmCMgHP3ZBpHNCNcdl/tHt60fficyb8vLTMV4DVosMJNSlgDN3nqvjSZEZ2b6vpVoR7OLSuIy/kRncNLGuERi9JhXnQKiZ4w6/kDAjVYm2k4rwJvs5wkaquamCX9tSrzyMGcKdcwo+SvhPzG0OAH1C5LQJ1ZwGGJPwn+ghXMUZmyNy2oRbUHwv+/xGmi2RFUI1F4TWyuoJpaDM2ea/uWLF1SI+wDPoMS/CUz4biS4krze+EZnGjn1tK3ytsy3ys/nIs4cnJi8ZwbgwN6a970v6Oo5/FW2VykTrWTZ3SmRWHAxL+ubKWAqitNsPmXBgzu0NJ0RcLmEg1s0R8SbLIXyKj84c581t5oBWShiIg8y5G5Z793Z7hBFmju05MzfsvV/MA8Oc73LC/rAEmFW558oikVYpQ2+ThDnhZBHnovKWq9oTE0hTCq31ub7upuci04jvb15KPl4UOQUeDzHOmjm05vzFhXqbQRNV9HU13BWZRlVt23rexmQ0ny9Oy3a+aD1udb6Gag5VwGHVMiFnLvvOSce8Is4cqqyZy7nG50i4mQvY8pL2izdzwZTJbzuEXFB06RaUoIOYLuZhiRiwFFiuKAU158j+fcup+z+XKD/MOcenZrY2KipyPItzzvhSPBH6RZcW7EsppE6RzkGVfYdic50zvhR8pg4+dr2SNsdkXwys7VAIXs79NdyuzDPB5tFZbnI+9/yAvaWNxHGiRpSCmp6eMz9TS4F5Jtg8Omscp94REUR6epnj/nsKy29dq39m5OQ6Z54JNo/OcniYX3fNN2D+XOqiJQL/+Zh36riX3E/+0DssDpv+/zEGAPAb3RxbW7vvdd8AAAAASUVORK5CYII='),
                  ),
                  Container(
                    child: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAQAAAAAYLlVAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAJcEhZcwABNy8AATcvATZ1lhgAAAAHdElNRQflDBkSKBOk/U3vAAADgUlEQVRo3r2ZS0hUURiAP8dXVk6p4SBiD1SUorAgC4ooSCkIrWjRwhZNbXquw1qF0bZdUZQ9NkFlhC0Se9kiMjSSsgdmE6X5atRs8jnjaeGje+dx51znnvv/q8u9c77v3HvuOf89A1aHiwru0EU9KZa3HTXSOUIjIwgEz+wX2MITAojpfEiinXAHB+mahQsEl+zt/WGGdHjBETvxpfQG4ftYax8+m9dBeEENyfYJnA3B+9hlHz6PryEC1+3s//EQfAv59uETqQnCd7DdPjxk0qrD/2SvnXgo0E0/LZTai4cifs/e+gvkmm8gIUaB39SxgJ+8oYFPTJpvIE7imiSyySWb+YzRhYfvDGt+nwBMzB5nkEcBS3EyiRcPbXgYikXAxQ7KWYeLZOKAcbx85DH1vGdUd+USitnJZlbgnG01wCCfecoD3uI3f3cW4qYJf8h7LhB4qeUAOSQACyimiubpOiBc9nGFNWbxhdxlImKTAoGfNmqo5hlew+um0oPbzIjbxFuJRs3lXypli5QNfLIcLxCMcFJm2C+nUQleIOiMPhaSuaoM/4tTLIomsI9hRfh2yqLf/jReKMJ72CYz/PYzrgTfz24ZfFLI6m5VVsm9fquCanur8j05kZAO3VExLjlTk3GbH3IC66VWR7PRz6PIJ7UCKRQq6X87X+QEnGQpEjCoCLQCqaQqEeg2qpS0AskkKREYMTqpFYhTMgQxXoIdsq3EEItlBcY1xaWVkW30pagV8OFTIpBLhqxAvxKBHFbLCQzTqUQgxWi3QCvgN5qxYooyVsoIwEeEEoGlnJAryYsZVFQP+KiQEVhCiyIBQQc7wiHjdUcjrFe2veZkK920GguAk3JFEzI4KSGVVuPZJpdvyh7CVDZSYTQzxnNLsYDgHZn/gcGLUYAaxhU9gpl4Tq/R6XReKu3/kP4DJXQ57ufmXPZ6pKOBV9EuyVKwNzCTo+yRsTym+efD2qyTqzvTaVD0/HfKPqnd+BQIXJP/HymRi5bj2yIvyuFihcUL0xhuM3iAcgYsFKhmnlmBOE5b9jY0sdwsHmAhNyzB91AyFzyAi9qY8X84FBkQrVLr4Sj+sPs7k3Tyjg90M0Ea+RSRF3aZHeAM1XPt/1RkcJ5fQbf0Pm4d0IGLXVymXbe/HKCZMisKnHhKuIcXwR8aOcfGCCPaQQHHeUA7A/TxikqWRWv6H0zCNInd0NNFAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIxLTEyLTI1VDE4OjQwOjExKzAwOjAwuQo45wAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMS0xMi0yNVQxODo0MDoxMSswMDowMMhXgFsAAAAZdEVYdFNvZnR3YXJlAHd3dy5pbmtzY2FwZS5vcmeb7jwaAAAAAElFTkSuQmCC'),
                  ),
                ],
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  Text(" Login", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                  )
                ],
              )



            ],

          ),


        ),

      ),

    );
  }
}



// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey[400]
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
