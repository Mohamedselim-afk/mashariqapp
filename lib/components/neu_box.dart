import 'package:flutter/material.dart';
import 'package:musicapp/themes/thems_provider.dart';
import 'package:provider/provider.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox ({
    super.key, required this.child,
  }
  );


  @override
  Widget build(BuildContext context) {

    //is dark mode
    bool isdarkMode = Provider.of<ThemeProvider>(context).isdarkMode;


    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
      borderRadius: BorderRadius.circular(12),
          boxShadow: [
        // darker shadow on bottom right
        BoxShadow(
          color: isdarkMode ? Colors.black  : Colors.grey.shade500,
          blurRadius: 15,
          offset: const Offset(4,4),
        ),
        //lighter shadow on top left
        BoxShadow(
          color: isdarkMode ? Colors.grey.shade800 : Colors.white,
          blurRadius: 15,
          offset: const Offset(-4,-4),
        ),
          ]),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}
