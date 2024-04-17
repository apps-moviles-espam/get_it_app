import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_app/widgets/snack_bar_widget.dart';
import 'package:get_it_app/services/app_service.dart';
import 'package:get_it_app/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'FLUTTER GUYS',
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: const Color(0xff1D1E22)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                String currentDate = GetIt.instance<AppService>().execute();
                showSnackBar(currentDate, context);
              },
              child: const Text('Get Date'),
            ),
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()),
                );
              },
              child: const Text('Details page'),
            ),
          ],
        ),
      ),
    );
  }
}
