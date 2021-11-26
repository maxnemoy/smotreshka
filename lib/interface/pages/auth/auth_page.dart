import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/core/bloc/auth/bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const AuthPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logo/smotreshka_full_light.png", height: 100, filterQuality: FilterQuality.high,),
                const SizedBox(height: 20,),
                const _LoginField(),
                const _PasswordField(),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  context.read<AuthBloc>().add(TryLogin());
                }, child: const Text("Вход"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginField extends StatelessWidget {
  const _LoginField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state)=>TextField(
        key: key ?? const Key("auth_LoginField"),
        onChanged: (v) => context.read<AuthBloc>().add(AuthLoginChanged(v)),
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: 'Email или имя пользователя',
          //errorText: !state.username.valid ? 'username invalid' : null
        ),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => TextField(
        key: key ?? const Key("auth_PasswordField"),
        onChanged: (v) => context.read<AuthBloc>().add(AuthPasswordChanged(v)),
        obscureText: true,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: 'Пароль',
          //errorText: !state.password.valid ? 'password invalid' : null
        ),
      ),
    );
  }
}
