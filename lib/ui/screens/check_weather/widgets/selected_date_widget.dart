import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectedDateWidget extends StatelessWidget {
  const SelectedDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Text(DateFormat('MMMM dd').format(DateTime.now()),style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),)),
        const SizedBox(height: 10,),
        Flexible(child: Text('Updated ${DateFormat('dd/MM/yyyy hh:mm a').format(DateTime.now())}',style: Theme.of(context).textTheme.titleMedium,)),
      ],  );
  }
}