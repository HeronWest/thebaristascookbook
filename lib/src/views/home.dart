import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFCF4),
        iconTheme: const IconThemeData(color: Colors.black, size: 40),
        title: SizedBox(
          height: 44,
          child: TextFormField(
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                filled: true,
                fillColor: const Color.fromARGB(160, 235, 218, 204),
                hintText: 'Pesquisar',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      const BorderSide(color: Color(0xff8F542E), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      const BorderSide(color: Color(0xff8F542E), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      const BorderSide(color: Color(0xff8F542E), width: 1),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  size: 28,
                ),
                suffixIconColor: const Color(0xff8F542E)),
          ),
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: NavBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff8F542E),
        elevation: 0,
        child: Icon(
          Icons.add,
          size: 50,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color(0xffFFFCF4),
    );
  }
}
