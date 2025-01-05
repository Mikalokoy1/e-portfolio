<!-- Modal Background -->
<div
  id="modal"
  class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center hidden"
>
  <!-- Modal Content -->
  <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-lg mx-4 md:mx-auto overflow-auto max-h-screen">
    <h2 class="text-xl font-bold mb-4">Add Faculty</h2>

    <form id="facultyForm" enctype="multipart/form-data">
  
      <!-- Faculty Employment ID Input -->
      <div class="mb-4">
        <label for="facultyEmploymentID" class="block text-gray-700 mb-2">Employment ID</label>
        <input
          type="number"
          id="facultyEmploymentID"
          name="facultyEmploymentID"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          placeholder="Enter faculty Employment ID"
          required
        />
      </div>

      <!-- Faculty Name Input -->
      <div class="mb-4">
        <label for="facultyName" class="block text-gray-700 mb-2">Name</label>
        <input
          type="text"
          id="facultyName"
          name="facultyName"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          placeholder="Enter faculty name"
          required
        />
      </div>
    
      <!-- Faculty Email Input -->
      <div class="mb-4">
        <label for="facultyEmail" class="block text-gray-700 mb-2">CvSU Email</label>
        <input
          type="email"
          id="facultyEmail"
          name="facultyEmail"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          placeholder="Enter faculty email"
          required
        />
      </div>

      <!-- Faculty Password Input -->
      <div class="mb-4">
        <label for="facultyPassword" class="block text-gray-700 mb-2">Password</label>
        <div class="relative">
          <input
            type="password"
            id="facultyPassword"
            name="facultyPassword"
            class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 pr-20"
            placeholder="Enter faculty password"
            required
          />
          <div class="absolute inset-y-0 right-0 flex items-center">
            <button 
              type="button" 
              id="generatePassword" 
              class="p-2 text-gray-500 hover:text-green-600"
              title="Generate Password"
            >
              <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
              </svg>
            </button>
            <button 
              type="button" 
              id="togglePassword" 
              class="p-2 text-gray-500 hover:text-green-600"
              title="Show Password"
            >
              <svg 
                id="eyeIcon" 
                xmlns="http://www.w3.org/2000/svg" 
                class="h-4 w-4" 
                viewBox="0 0 20 20" 
                fill="currentColor"
              >
                <path d="M10 3c-5 0-9 4.418-9 7s4 7 9 7 9-4.418 9-7-4-7-9-7zm0 12c-2.761 0-5-2.239-5-5s2.239-5 5-5 5 2.239 5 5-2.239 5-5 5zm0-8c-1.657 0-3 1.343-3 3s1.343 3 3 3 3-1.343 3-3-1.343-3-3-3z"/>
              </svg>
            </button>
          </div>
        </div>
        <p class="mt-1 text-sm text-gray-500">Password must be at least 8 characters long</p>
      </div>

      <!-- Faculty Type Input -->
      <div class="mb-4">
        <label for="facultyType" class="block text-gray-700 mb-2">Type</label>
        <select id="facultyType"
        name="facultyType" class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 ">
          <option value="">Select Type</option>
          <option value="Regular">Regular</option>
          <option value="Contractual">Contractual</option>
        </select>
      </div>

      <!-- Faculty Specialization Input -->
      <div class="mb-4">
        <label for="facultySpecialization" class="block text-gray-700 mb-2">Specialization</label>
        <input
          type="text"
          id="facultySpecialization"
          name="facultySpecialization"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          placeholder="Enter faculty specialization"
          required
        />
      </div>

      <div class="mb-4">
        <label for="facultyAddress" class="block text-gray-700 mb-2">Address</label>
        <input
          type="text"
          id="facultyAddress"
          name="facultyAddress"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          placeholder="Enter faculty address"
          required
        />
      </div>

      <!-- Faculty Birthday Input -->
      <div class="mb-4">
        <label for="facultyBirthday" class="block text-gray-700 mb-2">Birthday</label>
        <input
          type="date"
          id="facultyBirthday"
          name="facultyBirthday"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500"
          required
        />
        <p id="birthdayError" class="mt-1 text-sm text-red-500 hidden">Faculty must be at least 18 years old</p>
      </div>

      <!-- Faculty Contacts Input -->
      <div class="mb-4">
        <label for="facultyContacts" class="block text-gray-700 mb-2">Contacts</label>
        <input
          type="tel"
          id="facultyContacts"
          name="facultyContacts"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          placeholder="Enter faculty contacts"
          required
        />
      </div>

      <!-- Faculty Image Upload -->
      <div class="mb-4">
        <label for="facultyImage" class="block text-gray-700 mb-2">Image</label>
        <input
          type="file"
          id="facultyImage"
          name="facultyImage"
          class="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-green-500 "
          accept="image/*"
          required
        />
      </div>

      <!-- Submit and Close Buttons -->
      <div class="flex justify-end">
        <button
          type="button"
          id="submitFaculty"
          class="bg-green-700  text-white px-4 py-2 rounded mr-2 hover:bg-green-500 "
        >
          Add
        </button>
        <button
          type="button"
          id="closeModalButton"
          class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600"
        >
          Close
        </button>
      </div>
    </form>
  </div>
</div>

<script>
$(document).ready(function(){
    // Birthday validation setup
    const birthdayInput = document.getElementById('facultyBirthday');
    const birthdayError = document.getElementById('birthdayError');

    // Calculate max date (18 years ago)
    const today = new Date();
    const maxDate = new Date(
        today.getFullYear() - 18,
        today.getMonth(),
        today.getDate()
    );
    birthdayInput.setAttribute('max', maxDate.toISOString().split('T')[0]);

    // Validate birthday function
    function validateBirthday() {
        const selectedDate = new Date(birthdayInput.value);
        const age = today.getFullYear() - selectedDate.getFullYear();
        const monthDiff = today.getMonth() - selectedDate.getMonth();
        
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < selectedDate.getDate())) {
            age--;
        }

        if (age < 18) {
            birthdayError.classList.remove('hidden');
            birthdayInput.setCustomValidity('Faculty must be at least 18 years old');
            return false;
        } else {
            birthdayError.classList.add('hidden');
            birthdayInput.setCustomValidity('');
            return true;
        }
    }

    // Validate birthday on change
    birthdayInput.addEventListener('change', validateBirthday);

    $('#submitFaculty').click(function(event){
        var mode = $.trim($(this).text());
        event.preventDefault();

        // Validate birthday before proceeding
        if (!validateBirthday()) {
            return false;
        }

        var formValid = true;
        var facultyEmail = $('#facultyEmail').val();
        
        if (!facultyEmail.endsWith('@cvsu.edu.ph')) {
            Swal.fire({
                icon: 'error',
                title: 'Invalid Email',
                text: 'Email must end with @cvsu.edu.ph!',
            });
            return;
        }
        
        var facultyPassword = $('#facultyPassword').val();

        if (facultyPassword.length < 8) {
            Swal.fire({
                icon: 'error',
                title: 'Invalid Password',
                text: 'Password must be at least 8 characters long!',
            });
            return;
        }

        const regex = /^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).+$/;

        if (!regex.test(facultyPassword)) {
            Swal.fire({
                icon: 'error',
                title: 'Invalid Password',
                text: 'Password must contain at least one uppercase letter and one symbol!',
            });
            return;
        }

        $('#facultyForm input, #facultyForm select').each(function(){
            if ($(this).val() === "") {
                formValid = false;
            } 
        });

        if (!formValid) {
            Swal.fire({
                title: "Oops..!",
                text: "Please complete all required fields.",
                icon: "info"
            });
            return;
        }

        var formData = new FormData($('#facultyForm')[0]);
        formData.append('mode', mode);

        for (var pair of formData.entries()) {
            console.log(pair[0]+ ': ' + pair[1]); 
        }

        $.ajax({
            url: 'controller/faculty.php',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                alertMaker(response);
            },
            error: function(xhr, status, error) {
                console.error('Error submitting form:', error);
            }
        });
    });
});

// Password toggle and generation functionality
const passwordInput = document.getElementById('facultyPassword');
const togglePasswordButton = document.getElementById('togglePassword');
const generatePasswordButton = document.getElementById('generatePassword');
const eyeIcon = document.getElementById('eyeIcon');

// Toggle password visibility
togglePasswordButton.addEventListener('click', () => {
    const isPassword = passwordInput.type === 'password';
    passwordInput.type = isPassword ? 'text' : 'password';
    eyeIcon.innerHTML = isPassword 
        ? '<path d="M10 3c-5 0-9 4.418-9 7s4 7 9 7 9-4.418 9-7-4-7-9-7zm0 12c-2.761 0-5-2.239-5-5s2.239-5 5-5 5 2.239 5 5-2.239 5-5 5zm0-8c-1.657 0-3 1.343-3 3s1.343 3 3 3 3-1.343 3-3-1.343-3-3-3z"/>'
        : '<path d="M10 3c-5 0-9 4.418-9 7s4 7 9 7 9-4.418 9-7-4-7-9-7zm0 12c-2.761 0-5-2.239-5-5s2.239-5 5-5 5 2.239 5 5-2.239 5-5 5zM13.293 9.707a1 1 0 010-1.414l2-2a1 1 0 10-1.414-1.414l-2 2a1 1 0 01-1.414 0l-2-2a1 1 0 10-1.414 1.414l2 2a1 1 0 010 1.414l-2 2a1 1 0 101.414 1.414l2-2a1 1 0 011.414 0l2 2a1 1 0 001.414-1.414l-2-2z"/>';
    togglePasswordButton.title = isPassword ? 'Hide Password' : 'Show Password';
});

// Generate random password
generatePasswordButton.addEventListener('click', () => {
    const randomPassword = generateRandomPassword(10);
    passwordInput.value = randomPassword;
});

// Random password generator
function generateRandomPassword(length) {
    const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()";
    let password = "";
    for (let i = 0; i < length; i++) {
        const randomIndex = Math.floor(Math.random() * charset.length);
        password += charset[randomIndex];
    }
    return password;
}
</script>