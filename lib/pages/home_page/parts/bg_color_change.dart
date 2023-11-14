import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';

class BgColorChange extends StatefulWidget {
  const BgColorChange({super.key});

  @override
  State<BgColorChange> createState() => _BgColorChangeState();
}

class _BgColorChangeState extends State<BgColorChange> {
  Color? _selectedBgColor;

  void _onBgColorChanged(Color? color) {
    setState(() {
      _selectedBgColor = color!;
      context.read<UserBloc>().add(ChangeColorEventRequestedByUser(_selectedBgColor!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Color>(
      value: _selectedBgColor,
      onChanged: _onBgColorChanged,
      items: const <DropdownMenuItem<Color>>[
        DropdownMenuItem<Color>(
          value: Colors.white,
          child: Text("White"),
        ),
        DropdownMenuItem<Color>(
          value: Colors.blueAccent,
          child: Text("Blue"),
        ),
        DropdownMenuItem<Color>(
          value: Colors.black,
          child: Text("Black"),
        ),
      ],
    );
  }
}
