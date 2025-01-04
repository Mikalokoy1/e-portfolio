<?php include 'components/header.php'?>
<?php 
$user_id = $_SESSION['id'];
$_SESSION['root']="Dashboard";
$college_id = $my_college_id;
$semAndSchoolYearRows = $db->getSemAndSchoolyears($my_college_id) ?? array();

?>
        <div class="w-full h-screen overflow-x-hidden border-t flex flex-col">
            <main class="w-full flex-grow p-6">


            <div class="grid">
                <h1 class="text-3xl text-black pb-6 ">Dashboard</h1>
                <select hidden id="schoolYearFilter" class="px-3 py-2 rounded-lg bg-orange text-orange border ">
            <?php
                     if(count($semAndSchoolYearRows)>0)
                     {
                         foreach ($semAndSchoolYearRows as $row) {
                             $semester = $row['current_sem'];
                             $schoolyear = $row['current_year'];
                             $val = $semester.' - '.$schoolyear;
         
                             $selected = $row['current_status'] =='current' ? 'selected' : '';
         
                             echo '<option '.$selected.' value="'.$val.'">'.$val.'</option>';
                         } 
                     }else{
                         echo '<option  value="">Update Academic Year and Semester First </option>';
                     }
                    ?>
            </select>
            </div>

                <div class="grid  sm:grid-cols-2">

                    <div class="grid lg:grid-cols-2 md:grid-cols-1  gap-x-5 gap-y-2 p-4">

                 <h1 class="text-sm text-gray-400 font-bold pb-6 col-span-2">DEPARTMENTS</h1>

                 <?php 
                    $rows = $db->getAllRowsFromTable('department_details');

                    foreach ($rows as $row) {
                        $id = $row['id'];
                        $department_name = $row['department_name'];
                        $department_dean = $row['department_dean'];
                        $secretary_image = ucwords($db->getIdByColumnValue("user_details",'user_id',$department_dean,'image'));
                        $department_code = strtoupper($row['department_code']);
                        $department_image = $row['department_image'];
                        $depatment_college = $row['depatment_college'];
                        $department_dean = $row['department_dean']; 

                        if($college_id!=$depatment_college)
                        {
                            continue;
                        }

                        $not_your_department = $department_dean !=$user_id ? 'href="department-details.php?i='.$id.'"':'href="courses.php?i='.$id.'"';
                        

                        $full_name = ucwords($db->getIdByColumnValue("user_details", 'user_id', $department_dean, 'name'));

                        $words = explode(' ', $full_name);
                        $initials = '';

                        $initials .= ucwords($words[0]);

                        $secretary_name = $initials;

                        echo '<div class="card bg-white shadow-md rounded-lg p-6 flex justify-center flex-col ">
                                    <img src="../uploads/departments/'.$department_image.'" class="max-h-full h200 rounded-lg">
                                    <div class="flex flex-row ">
                                    '.$department_code.' - '.ucwords($department_name).'

                                    </div>


                                    <div class="flex flex-row items-center mt-3">
                                        <img src="../uploads/faculty/'.$secretary_image.'" class="mr-3 w-10 h-10 rounded-full" alt="user_image">
                                        <div class="grid w-full ">
                                            <p class="text-base whitespace-nowrap overflow-hidden overflow-x-auto">'.$secretary_name.'</p>
                                            <p class="text-sm">Secretary</p>

                                            </div>
                                    </div>
                                    <div class="grid w-full justify-items-end">
                                            <a '.$not_your_department.'  
                                            class="bg-orange text-center  text-orange px-1 py-2 rounded-full shadow-lg 
                                                    transform transition-transform duration-200 
                                                    hover:scale-105 hover:shadow-xl hover:bg-orange-600">
                                                Open
                                            </a>
                                        </div>
                                </div>';

                        }?>

                       
                    </div>

                    
                    <div class="grid grid-cols-1">
                        <div>
                            <div class=" flex items-center justify-end mb-6 col-span-2 ">
                                <h1 class="text-sm text-gray-400 font-bold mr-3">DOCUMENT TRACKING</h1>
                                <select id="documentFilter" class="px-3 py-2 rounded-lg bg-orange text-orange border ">
                                    <?php 
                                    $rows = $db->getAllRowsFromTable("for_uploads");

                                    foreach ($rows as $row) {
                                        echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                                    }
                                    ?>
                                    
                                </select>
                            </div>

                            <div class="container">
                                <div class="container pt-2">
                                    <table class="min-w-full text-left border-collapse block table overflow-y-scroll">
                                        <thead class="block table-header-group">
                                            <tr class="block table-row bg-orange text-black">
                                                <th class="p-3 font-semibold text-sm uppercase tracking-wider block table-cell">Subjects</th>
                                                <th class="p-3 font-semibold text-sm uppercase tracking-wider block table-cell">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody id="documentDiv" class="block table-row-group">
                                               
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                
            </main>
    
        </div>
        
    </div>

<?php include 'components/footer.php'?>
<script>
     $('.dashboard').addClass('active-nav-link');
     $('.dashboard').removeClass('opacity-75');
</script>
<script>
     function getDocument(upload_id,sy_id) {
        console.log(upload_id)
        console.log(sy_id)
        $.ajax({
            url: 'controller/get_tracking_documents.php', // Endpoint URL
            type: 'POST', // HTTP request method
            data: {
                upload_id: upload_id,
                sy_id: sy_id,
            }, // Send data to the server
            success: function(response) {
                $('#documentDiv').empty();
                $('#documentDiv').append(response); 

                $('.syllabusInfo').each(function(){
                    let href = $(this).attr('href');
                    // Use URLSearchParams to manipulate the query parameters
                    let params = new URLSearchParams(href.split('?')[1]); // Get the query string part
                    params.set('uid', upload_id); // Change the uid value to 5
                    let newHref = href.split('?')[0] + '?' + params.toString(); 
                    $(this).attr('href', newHref); // Update the href attribute with the new URL
                });


            },
            error: function(xhr, status, error) {
                console.error('Error:', status, error); // Log any errors
            }
        });
    }
    getDocument($('#documentFilter').val(),$('#schoolYearFilter').val());

    $('#documentFilter').change(function(){
        var document = $(this).val();
        var sy = $('#schoolYearFilter').val()
        getDocument(document,sy);

    })
    $(document).on('change', '#schoolYearFilter', function() {
    
        var sy = $(this).val();
        var document = $('#documentFilter').val()
        getDocument(document,sy);
    });

</script>
