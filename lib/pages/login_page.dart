import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  
  bool _obscurePassword = true;
  bool _isLoading = false;
  bool _rememberMe = false;

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _fadeController,
        curve: Curves.easeOut,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeOut,
      ),
    );

    // Start animations with delay
    Future.delayed(const Duration(milliseconds: 100), () {
      _fadeController.forward();
      _slideController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _simulateLogin() async {
    if (_isLoading) return;
    
    setState(() {
      _isLoading = true;
    });

    // Remove focus from text fields
    FocusScope.of(context).unfocus();

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    // Show success snackbar instead of dialog
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 12),
            const Text('Login berhasil!'),
          ],
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _onRememberMeChanged(bool? value) {
    if (value != null) {
      setState(() {
        _rememberMe = value;
      });
    }
  }

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
              Color(0xFFE8F5E9),
              Color(0xFFC8E6C9),
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
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: _loginCard(context),
                ),
              ),
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
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 30,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(),
          const SizedBox(height: 24),
          _loginTitle(),
          const SizedBox(height: 24),
          _inputField("Email atau username", _emailFocusNode),
          const SizedBox(height: 16),
          _passwordField(_passwordFocusNode),
          const SizedBox(height: 12),
          _optionsRow(),
          const SizedBox(height: 20),
          _signInButton(),
          const SizedBox(height: 16),
          _divider(),
          const SizedBox(height: 16),
          _socialButtons(),
          const SizedBox(height: 12),
          _registerLink(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF4CAF50),
            Color(0xFF2E7D32),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Icon(Icons.recycling, color: Colors.white, size: 40),
          const SizedBox(height: 8),
          const Text(
            "Bank Sampah Digital",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Kelola Sampah, Dapatkan Manfaat",
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginTitle() {
    return Column(
      children: [
        Text(
          "Login",
          style: TextStyle(
            color: Colors.green.shade800,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "Masuk ke akun Anda",
          style: TextStyle(
            color: Colors.green.shade600,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _inputField(String hint, FocusNode focusNode) {
    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.green.shade50,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.green.shade400, width: 2),
        ),
        hintStyle: TextStyle(color: Colors.grey.shade600),
        prefixIcon: Icon(
          Icons.email_outlined,
          color: focusNode.hasFocus ? Colors.green : Colors.green.shade600,
        ),
      ),
    );
  }

  Widget _passwordField(FocusNode focusNode) {
    return TextField(
      focusNode: focusNode,
      obscureText: _obscurePassword,
      decoration: InputDecoration(
        hintText: "Password",
        filled: true,
        fillColor: Colors.green.shade50,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.green.shade400, width: 2),
        ),
        hintStyle: TextStyle(color: Colors.grey.shade600),
        prefixIcon: Icon(
          Icons.lock_outline,
          color: focusNode.hasFocus ? Colors.green : Colors.green.shade600,
        ),
        suffixIcon: GestureDetector(
          onTap: _togglePasswordVisibility,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: Icon(
              _obscurePassword ? Icons.visibility_off : Icons.visibility,
              key: ValueKey<bool>(_obscurePassword),
              color: Colors.green.shade600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _optionsRow() {
    return Row(
      children: [
        GestureDetector(
          onTap: () => _onRememberMeChanged(!_rememberMe),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: _rememberMe ? Colors.green : Colors.transparent,
              border: Border.all(
                color: _rememberMe ? Colors.green : Colors.green.shade400,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: _rememberMe
                ? const Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Ingat saya",
          style: TextStyle(
            color: Colors.green.shade800,
            fontSize: 14,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Lupa Password?",
            style: TextStyle(
              color: Colors.green.shade700,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _signInButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _isLoading
                ? [Colors.green.shade300, Colors.green.shade200]
                : [const Color(0xFF4CAF50), const Color(0xFF2E7D32)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isLoading
              ? []
              : [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: _isLoading ? null : _simulateLogin,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _isLoading ? 0 : 1,
                  duration: const Duration(milliseconds: 200),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                if (_isLoading)
                  const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Colors.green.shade200),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "ATAU",
            style: TextStyle(
              color: Colors.green.shade600,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Divider(color: Colors.green.shade200),
        ),
      ],
    );
  }

  Widget _socialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialButton(Icons.facebook, Colors.blue, "Facebook"),
        const SizedBox(width: 20),
        _socialButton(Icons.email, Colors.red, "Email"),
        const SizedBox(width: 20),
        _socialButton(Icons.phone, Colors.green, "WhatsApp"),
      ],
    );
  }

  Widget _socialButton(IconData icon, Color color, String label) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 22),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.green.shade700,
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  Widget _registerLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Belum punya akun? ",
          style: TextStyle(
            color: Colors.green.shade700,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Daftar Sekarang",
            style: TextStyle(
              color: Colors.green.shade800,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}