<?php include 'components/header.php'?>

        <div class="w-full h-screen overflow-x-hidden border-t flex flex-col">
            <main class="w-full flex-grow ">

                <div class="grid grid-cols-3 items-center px-6 py-4 ">
                    <h1 class="text-3xl text-black col-span-2">About</h1>
                </div>

                <div class="grid grid-cols-3  bg-sidebar text-white py-4">

                    <div class="text-center ">
                      <i class="material-icons text-5xl searchicon">school</i>
                      <p><?=$db->getCountByConditions('course',['status' =>'0' , 'college_id' => $_SESSION['college_id']] )?></p>

                      <p> Courses</p>
                    </div>
                    <div class="text-center ">
                      <i class="material-icons text-5xl searchicon">groups</i>
                      <p><?= $db->getCounterUsersDep($_SESSION['college_id']) ?></p>
                      <p> FACULTY MEMBERS</p>
                    </div>
                    <div class="text-center ">
                      <i class="material-icons text-5xl searchicon">manage_accounts</i>
                      <p><?=$db->getCounter('department_secretary',$_SESSION['college_id'])?></p>
                      <p> SECRETARIES</p>
                    </div>

                </div>

                <div class="grid p-3">
                <h1 class="text-black p-3 text-2xl font-bold">Welcome to the E-Portfolio System</h1>
                
                <div class="space-y-6 text-justify">
                  <p style="text-indent: 2em;" class="leading-relaxed">
                    Welcome to your digital workspace! The E-Portfolio System is designed specifically for you - the faculty members of the College of Engineering and Information Technology (CEIT) at Cavite State University. We've transformed the traditional paper-based system into an efficient digital solution that puts everything you need at your fingertips. Now you can store, organize, and manage  your academic and professional documents in one secure, convenient location.
                  </p>

                  <div class="p-4 rounded-lg my-6">
                    <h2 class="text-lg font-semibold mb-3">What You Can Do with Your E-Portfolio:</h2>
                    <ul class="list-disc pl-6 space-y-2">
                      <li>Upload and Manage Various Academic Documents - You can upload, store, and organize different types of academic materials including class records, student outputs, laboratory modules, lecture modules, laboratory reports, grading sheets, exam results discussions, exams with Table of Specifications (TOS), consultation slips, attendance sheets, and syllabus acceptance forms.</li>
                      <li>Create and Maintain Professional Profile - You can build and update your faculty profile page which includes your department affiliation, contact information, areas of specialty, and professional accomplishments. You can also upload professional and personal documents like awards, certifications, and resumes.</li>
                      <li>Track Document Submissions - You can submit documents electronically through the system and monitor their status in real-time through the submission tracking feature. This helps eliminate manual processes and reduces administrative delays.
                      </li>
                      <li> Access Documents Securely - The system implements role-based access controls, ensuring you can only view and access documents appropriate to your position while maintaining security of sensitive information.</li>
                
                    </ul>
                  </div>

                  <p style="text-indent: 2em;" class="leading-relaxed">
                    We understand the importance of security when it comes to academic records. That's why CEIT e-portfolio system uses role-based security measures to ensure your information is protected while remaining easily accessible to authorized users. The intuitive interface makes organizing documents simple, and you can track submissions and approvals in real-time. Plus, by going digital, we're not just making your work easier - we're also contributing to environmental sustainability!
                  </p>

                  <div class="bg-gray-50 p-4 rounded-lg">
                    <h2 class="text-lg font-semibold mb-2">A Capstone Project by:</h2>
                    <ul class="list-none space-y-1">
                      <li>Mikael V. Lim</li>
                      <li>Irine May R. Ompaling</li>
                      <li>Zyrell A. Rezano</li>
                    </ul>
                    <p class="mt-3 text-sm">Under the supervision of Prof. Charlotte B. Carandang</p>
                  </div>
                </div>
              </div>
                
            </main>
    
        </div>
        
    </div>

<?php include 'components/footer.php'?>
<script>
     $('.about').addClass('active-nav-link');
     $('.about').removeClass('opacity-75');
</script>
