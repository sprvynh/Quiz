import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/Presentation/Blocs/AuthCubit/AuthCubit.dart';
import 'package:quiz/Router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    final bloc = context.read<AuthCubit>();

    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${state.error}')));
          }

          if (state.isAuth) context.pushReplacement(HOME_ROUTE);
        },
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Spacer(flex: 3),
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: FittedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            FlutterLogo(size: 100),
                            SizedBox(height: 10),
                            Text(
                              'Đăng ký tài khoản',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 3),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            label: Text('Email'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'user@gmail.com',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          controller: passController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            label: Text('Mật khẩu'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'Mật khẩu phải dài ít nhất 8 ký tự',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            label: Text('Họ và tên'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'Nguyễn Văn A',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FilledButton.icon(
                            onPressed: () {
                              if (state.status == AuthStatus.loading) return;
                              final email = emailController.text;
                              final password = passController.text;
                              final name = nameController.text;

                              bloc.createAccount(email, password, name);
                            },
                            style: const ButtonStyle(
                              maximumSize: MaterialStatePropertyAll(Size(300, 44)),
                              padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                              ),
                            ),
                            label: state.status == AuthStatus.loading
                                ? const FittedBox(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  )
                                : const Icon(Icons.arrow_forward),
                            icon: const Text('Đăng ký'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Bạn đã có có tài khoản?'),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () => context.pushReplacement(SIGNIN_ROUTE),
                          child: const Text(
                            'Đăng nhập',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
