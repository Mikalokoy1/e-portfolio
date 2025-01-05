<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
                body { 
            font-family: 'Poppins', sans-serif;
            position: relative;
            min-height: 100vh;
            background-color: rgba(27, 71, 40, 0.9); /* Dark green base color */
        }

        /* Background with reduced opacity */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('assets/image/image.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            opacity: 0.3; /* Reduced opacity here */
            z-index: -1;
        }
    
        .bg-darkgreen { 
            background: rgba(27, 71, 40, 0.95);
            backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
        }
        
        .input-transition {
            transition: all 0.3s ease;
        }
        
        .input-hover:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .btn-animate {
            transition: all 0.3s ease;
        }
        .btn-animate:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(242, 124, 34, 0.4);
        }
        .btn-animate:active {
            transform: translateY(0);
        }
    </style>
    
<body class="flex items-center justify-center min-h-screen p-4">
    <div class="flex flex-col items-center bg-darkgreen text-white rounded-2xl sm:p-12 p-8 shadow-2xl sm:w-[600px] w-full border border-white/10">
        <!-- Logo with subtle animation -->
        <img class="w-28 mb-8 hover:scale-105 transition-transform duration-300" src="assets/image/logo.png" alt="Logo">
        
        <!-- Improved header typography -->
        <h1 class="text-[22px] sm:text-2xl font-bold text-center leading-tight tracking-wide mb-2">
            COLLEGE OF ENGINEERING AND INFORMATION TECHNOLOGY
        </h1>
        <h2 class="text-xl font-medium mb-12 text-orange-400/90">
            Electronic Portfolio
        </h2>
        
        <form id="loginForm" class="w-full flex flex-col items-center space-y-5">
            <!-- Employment ID field -->
            <div class="w-full sm:w-[85%] relative group">
                <div class="absolute inset-y-0 left-4 flex items-center pointer-events-none">
                    <i class="fas fa-user text-white-400/80"></i>
                </div>
                <input type="text" 
                    name="employment_id" 
                    id="employment_id" 
                    placeholder="Employment ID" 
                    class="w-full px-11 py-3.5 rounded-xl border border-white/20 focus:outline-none focus:ring-2 focus:ring-orange-500/50 bg-white/10 text-white placeholder-gray-400 input-transition input-hover text-base"
                    autocomplete="off">
            </div>
            
            <!-- Password field -->
            <div class="w-full sm:w-[85%] relative group">
                <div class="absolute inset-y-0 left-4 flex items-center pointer-events-none">
                    <i class="fas fa-lock text-white-400/80"></i>
                </div>
                <input type="password"  
                    name="password" 
                    id="password" 
                    placeholder="Password" 
                    class="w-full px-11 py-3.5 rounded-xl border border-white/20 focus:outline-none focus:ring-2 focus:ring-orange-500/50 bg-white/10 text-white placeholder-gray-400 input-transition input-hover text-base">
            </div>

            <!-- Login button -->
            <button type="submit" 
                id="login" 
                class="w-full sm:w-[85%] py-3.5 bg-orange-500 hover:bg-orange-600 text-white font-semibold rounded-xl btn-animate text-base tracking-wide mt-4">
                Log In
            </button>
        </form>

        <!-- Forgot password link -->
        <div class="mt-8 w-full flex justify-end sm:w-[85%]">
            <p class="text-sm text-gray-300 hover:text-white transition-colors duration-300 flex items-center cursor-pointer" id="forgot">
                <i class="fas fa-question-circle mr-2"></i>
                Forgot your Password?
            </p>
        </div>
    </div>
</body>
</html>
<script>
    $('#forgot').click(function() {
    Swal.fire({
        title: "Forgot your password?",
        input: "email",
        inputLabel: "Your email address",
        inputPlaceholder: "Enter your email address",
        showCancelButton: true,
        inputValidator: (value) => {
            if (!value) {
                return 'Please enter your email address!';
            }
            if (!value.endsWith('@cvsu.edu.ph')) {
                return 'Email must end with @cvsu.edu.ph!';
            }
        }
    }).then((result) => {
        if (result.isConfirmed) {
            const email = result.value;
            
            // Show loading spinner
            Swal.fire({
                title: 'Sending Email...',
                text: 'Please wait while we send the verification email.',
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            });

            // Send the email via AJAX
            $.ajax({
                url: 'controller/changepassword.php', // Replace with your server endpoint
                type: 'POST',
                data: { email: email },
                dataType: 'json',
                success: function(response) {
                    Swal.close(); // Close the loading spinner

                    if (response.status === 'success') {
                        Swal.fire({
                            icon: 'success',
                            title: response.title,
                            text: response.message,
                        }).then(() => {
                            // Proceed to ask for verification code
                            Swal.fire({
                                title: "Enter Verification Code",
                                input: "text",
                                inputLabel: "Verification Code",
                                inputPlaceholder: "Enter the verification code sent to your email",
                                html: `
                                    <p>If you don't see the email in your inbox, please check your spam folder and mark it as 'Not Spam' to ensure future emails are delivered to your inbox.</p>
                                `,
                                showCancelButton: true,
                                inputValidator: (value) => {
                                    if (!value) {
                                        return 'Please enter the verification code!';
                                    }
                                }
                            }).then((codeResult) => {
                                if (codeResult.isConfirmed) {
                                    const verificationCode = codeResult.value;

                                    // Proceed to ask for new password
                                    Swal.fire({
                                        title: "Set New Password",
                                        html: `
                                            <input type="password" id="newPassword" class="swal2-input" placeholder="New Password">
                                            <input type="password" id="confirmPassword" class="swal2-input" placeholder="Confirm New Password">
                                        `,
                                        focusConfirm: false,
                                        preConfirm: () => {
                                            const newPassword = Swal.getPopup().querySelector('#newPassword').value;
                                            const confirmPassword = Swal.getPopup().querySelector('#confirmPassword').value;

                                            if (!newPassword || !confirmPassword) {
                                                Swal.showValidationMessage('Please enter both password fields');
                                                return false;
                                            }

                                            if (newPassword !== confirmPassword) {
                                                Swal.showValidationMessage('Passwords do not match');
                                                return false;
                                            }

                                            return {
                                                verificationCode: verificationCode,
                                                newPassword: newPassword
                                            };
                                        },
                                        showCancelButton: true
                                    }).then((passwordResult) => {
                                        if (passwordResult.isConfirmed) {
                                            const { verificationCode, newPassword } = passwordResult.value;
                                            
                                            // Show loading spinner
                                            Swal.fire({
                                                title: 'Resetting Password...',
                                                text: 'Please wait while we reset your password.',
                                                allowOutsideClick: false,
                                                didOpen: () => {
                                                    Swal.showLoading();
                                                }
                                            });

                                            // Send the verification code and new password via AJAX
                                            $.ajax({
                                                url: 'controller/resetpassword.php', // Replace with your server endpoint
                                                type: 'POST',
                                                data: {
                                                    email: email,
                                                    verification_code: verificationCode,
                                                    new_password: newPassword
                                                },
                                                dataType: 'json',
                                                success: function(response) {
                                                    Swal.close(); // Close the loading spinner
                                                    // Handle success response
                                                    Swal.fire({
                                                        icon: response.status,
                                                        title: response.title,
                                                        text: response.message,
                                                    }).then(() => {
                                                        if (response.status === 'success') {
                                                            location.reload(); // Reload the page after success
                                                        }else{
                                                            location.reload(); // Reload the page after success
                                                        }
                                                    });
                                                },
                                                error: function(xhr, status, error) {
                                                    Swal.close(); // Close the loading spinner
                                                    // Handle error response
                                                    Swal.fire({
                                                        icon: 'error',
                                                        title: 'Oops...',
                                                        text: 'Something went wrong! Please try again later.',
                                                    }).then(() => {
                                                            location.reload(); // Reload the page after success
                                                    });
                                                }
                                            });
                                        }
                                    });
                                }
                            });
                        });
                    } else {
                        // Email not found or other errors
                        Swal.fire({
                            icon: response.status,
                            title: response.title,
                            text: response.message,
                        });
                    }
                },
                error: function(xhr, status, error) {
                    Swal.close(); // Close the loading spinner
                    // Handle error response
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong! Please try again later.',
                    });
                }
            });
        }
    });
});

</script>
<script src="js/login.js"></script>