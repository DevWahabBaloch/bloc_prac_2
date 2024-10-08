import 'package:auto_route/auto_route.dart';
import 'package:bloc_prac_2/config/routes/routes.gr.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_cubit.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/bloc/data_state.dart';
import 'package:bloc_prac_2/features/sending_page/presentation/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SendingPage extends StatefulWidget {
  const SendingPage({super.key});

  @override
  _SendingPageState createState() => _SendingPageState();
}

class _SendingPageState extends State<SendingPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Practice',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextField(
              hintText: 'First Name',
              textEditingController: _firstNameController,
            ),
            const SizedBox(height: 16),
            AppTextField(
              hintText: 'Last Name',
              textEditingController: _lastNameController,
            ),
            const SizedBox(height: 16),
            AppTextField(
              hintText: 'Email',
              textEditingController: _emailController,
            ),
            const SizedBox(height: 16),
            BlocBuilder<DataCubit, DataState>(
              builder: (context, state) {
                if (state is DataLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is DataErrorState) {
                  return Text('Error: ${state.errorMessage}');
                }
                return ElevatedButton(
                  onPressed: () => _attemptToSaveData(context),
                  child: const Text('Send'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _attemptToSaveData(BuildContext context) {
    context.read<DataCubit>().attemptToSaveData(
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          email: _emailController.text,
        );
    context.pushRoute(const SavedDataRoute());
  }
}


