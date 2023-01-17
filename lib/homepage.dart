
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List product = [
    {"name": "biryani", "price": 100, },
    {"name": "biryani", "price": 100, },
    {"name": "biryani", "price": 100, },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 20,
                          width: 100,
                          child: Text(product[index]["name"]),
                        ),
                        Container(
                          height: 20,
                          width: 100,
                          child: Text("${product[index]["price"]}"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Custom()],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

class Custom extends StatefulWidget {
  const Custom({super.key});

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  int n = 0;
  void add() {
    setState(() {
      n++;
    });
  }

  void minus() {
    setState(() {
      if (n != 0) n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   trailing: Wrap(
    //     children: [
    //       IconButton(onPressed: add, icon: Icon(Icons.add)),
    //       Text("$n", style: TextStyle(fontSize: 40.0)),
    //       IconButton(
    //         onPressed: minus,
    //         icon: Icon(Icons.remove),
    //       ),
    //     ],
    //   ),
    // );
    return Row(
      children: [
        IconButton(onPressed: add, icon: Icon(Icons.add)),
        Text("$n", style: TextStyle(fontSize: 40.0)),
        IconButton(
          onPressed: minus,
          icon: Icon(Icons.remove),
        ),
      ],
    );
  }
}
