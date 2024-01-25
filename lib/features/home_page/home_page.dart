import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'WEATHER APP',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.6,
            wordSpacing: 3.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: TextField(),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_sharp),
                  Text('Kathmandu'),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Text('24 C'),
              SizedBox(
                height: 20.0,
              ),
              Icon(
                Icons.cloudy_snowing,
                size: 140.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.red,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
