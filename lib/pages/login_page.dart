import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF3C4),
              Color(0xFFFFC96B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.06,
              ),
              child: _loginCard(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginCard(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(size.width * 0.05),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(),
          const SizedBox(height: 20),
          _tabSwitcher(),
          const SizedBox(height: 20),
          _inputField("Enter email or username"),
          const SizedBox(height: 14),
          _inputField("Password", obscure: true),
          const SizedBox(height: 10),
          _optionsRow(),
          const SizedBox(height: 18),
          _signInButton(),
          const SizedBox(height: 14),
          _divider(),
          const SizedBox(height: 14),
          _socialButtons(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFE53935),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: const [
          Icon(Icons.restaurant_menu, color: Colors.white, size: 42),
          SizedBox(height: 6),
          Text(
            "Hungry",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabSwitcher() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          _tabButton("Sign In", active: true),
          _tabButton("Sign Up"),
        ],
      ),
    );
  }

  Widget _tabButton(String text, {bool active = false}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: active ? const Color(0xFFE53935) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: active ? Colors.white : Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _inputField(String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _optionsRow() {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (_) {}),
        const Text("Remember me"),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Color(0xFFE53935)),
          ),
        )
      ],
    );
  }

  Widget _signInButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE53935),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Sign In",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _divider() {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade300)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text("- OR -"),
        ),
        Expanded(child: Divider(color: Colors.grey.shade300)),
      ],
    );
  }

  Widget _socialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialIcon(Icons.facebook, Colors.blue),
        const SizedBox(width: 16),
        _socialIcon(Icons.alternate_email, Colors.lightBlue),
        const SizedBox(width: 16),
        _socialIcon(Icons.g_mobiledata, Colors.red),
      ],
    );
  }

  Widget _socialIcon(IconData icon, Color color) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: color.withOpacity(0.1),
      child: Icon(icon, color: color),
    );
  }
}
