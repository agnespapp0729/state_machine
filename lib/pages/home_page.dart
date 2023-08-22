import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';
import 'package:state_machine/repositories/user_repository/user_repository_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserRepository _userRepository;

  //_HomePageState() : _userRepository = UserRepositoryImpl(Hive.box('user_box'));

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController  = TextEditingController();

  List<Map<String, dynamic>> actualUsers = [];

  @override
  void initState() {
    super.initState();
    _userRepository = UserRepositoryImpl(Hive.box('user_box'));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _showForm(BuildContext ctx, int? key) async {
    if (key != null) {
      final existingUser = actualUsers.firstWhere((element) => element['key'] == key);
      _nameController.text = existingUser['name'];
      _ageController.text  = existingUser['age'];
    }

    showModalBottomSheet(
      context:            ctx,
      elevation:          5,
      isScrollControlled: true,
      builder: (context) => BlocProvider(
        create: (context) => UserBloc(_userRepository),
        child: Builder(
          builder: (context) {
            return Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(ctx).viewInsets.bottom, top: 15, left: 15, right: 15, 
                ),

                child: Column(
                  mainAxisSize:       MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(hintText: "Name"),
                    ),
                    
                    const SizedBox( height: 10 ),
                    
                    TextField(
                      controller:   _ageController,
                      keyboardType: TextInputType.number,
                      decoration:   const InputDecoration(hintText: "Age"),
                    
                    ),

                    const SizedBox( height: 10 ),
                    
                    ElevatedButton(
                      style:     ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      onPressed: () async {
                        
                        if (key == null) {
                          context.read<UserBloc>().add(CreateUserEvent({  "name": _nameController.text, "age": _ageController.text }));
                        }

                        if (key != null) {
                          context.read<UserBloc>().add(UpdateUserEvent(key, { "name": _nameController.text, "age": _ageController.text }));
                        }
                        
                        _nameController.text = '';
                        _ageController.text  = '';

                        Navigator.of(context).pop();
                      },

                      child: Text(key == null ? 'Create' : 'Update')
                    ),

                    const SizedBox(height: 15),
                  ],
                ),
              );
          }
        )
        )
      );
    }

  Color _selectedBgColor = Colors.white;

  void _onBgColorChanged(Color? color) {
    setState(() {
      _selectedBgColor = color!;
    });
  }

  DropdownButton<Color> _buildDropdownButton() {
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(_userRepository),
      child: Builder(
        builder: (context){
          return BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              List<Map<String, dynamic>> userList = [];

              if (state is UserInitState)     { userList = state.users; }
              if (state is UserUpdatingState) { userList = state.users; }
              if (state is UserCreatingState) { userList = state.users; }
              if (state is UserCreatingState) { userList = state.users; }
              
              return Scaffold(
                floatingActionButton: FloatingActionButton(
                  backgroundColor:  Colors.orange,
                  onPressed:          () => _showForm(context, null),
                  child:              const Icon(Icons.add),
                ),

                appBar: AppBar(
                  backgroundColor: Colors.orange,
                  title:             const Text('List users'),
                ),
                
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          
                          _buildDropdownButton(),
                          
                          Container(
                            color: _selectedBgColor,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap:      true,
                              itemCount:       userList.length,
                              itemBuilder:     (context, index) {
                                
                                final currentUser = userList[index];

                                  return Card(
                                    color:   Colors.orange,
                                    margin:    const EdgeInsets.all(10),
                                    elevation: 3,
                                    child: ListTile(
                                      title:    Text( currentUser['name'] ),
                                      subtitle: Text( currentUser['age'].toString() ),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          IconButton(
                                            onPressed: () => _showForm( context, currentUser['key']),
                                            icon:      const Icon( Icons.edit ), 
                                          ),
                                          
                                          IconButton(
                                            onPressed: () => context.read<UserBloc>().add(DeleteUserEvent( currentUser['key'] ) ),
                                            icon:      const Icon( Icons.delete),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              ),
                            ),
                          ],
                        ),

                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/data'),
                        style:     ButtonStyle( backgroundColor: MaterialStateProperty.all( Colors.orange)),
                        child:     const Text("Get emulator data"),
                      ),

                    ],
                  ),
                )
              );
            }
          );
        }
      )
    );
  }
}
