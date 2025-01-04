<?php
require '../../conn/conn.php';
$db = new DatabaseHandler();
$my_college_id = $_SESSION['college_id'] ;
$my_department_id = $db->getIdByColumnValue("department_details" ,"department_secretary",$_SESSION['id'],"id");

$where = array(
    'college_id'=>$my_college_id,
    'current_status'=>'current',
  );
  
$currentSem = $db->getIdByColumnValueWhere("current_year_sem",$where, "current_sem");
$currentYear = $db->getIdByColumnValueWhere("current_year_sem",$where,"current_year");


// DEFAULT VALUES
$image = '66bd97ce4c5eb-a.jpg';
$name = 'D Ace';
$position = 'Faculty';
$specialization = 'Programming';
$contacts = '091234567889';
$icon_done = '<i class="material-icons text-white bg-green-400 rounded-full p-1">task_alt</i>';
$icon_not_done = '<i class="material-icons text-white bg-red-400 rounded-full p-1">error</i>';



// GET ALL FACULTIES FIRST
 $rows = $db->getAllFaculties2();
 $count=0;
 foreach ($rows as $row) {
     $icon ="";
     $role ="";
     $id = $row['id'];
     $college_id =  $db->getIdByColumnValue('college_user_added','user_id',$id,'college_id');
     $department_id =  $db->getIdByColumnValue('department_faculty','faculty_id',$id,'department_id');

 
     
    //  ASSIGN VALUES
     $name = $row['name'];
     $role = $row['role'];
     $specialization = $row['specialization'];
     $contacts = $row['phone'];
     $image = $row['image'];
     $type = $row['type'];



     if($my_department_id == $department_id)
     {
    //  CHECKER OF STATUS
    $complete_checking_checker = 0;
    $not_complete_checking_checker = 0;
    $toglerCard =[];
    $toglerCard_Pending = [];
    $toglerCard_Complete = [];
        // GET ALL SUBJECTS ASSIGNED
        $where = [
            'faculty_id ='."'".$id."'",
            'sem ='."'".$currentSem."'",
            'sy ='."'".$currentYear."'",
            ];
            $handle_rows = $db->getAllRowsFromTableWhereGroup("faculty_subject_section", $where);
            $counter =  count($handle_rows);

            if($counter==0)
            {
              continue;
            }
        foreach ($handle_rows as $row) {
            $subject_id = $row['subject_id'];
            $faculty_id = $row['faculty_id'];
            $section_id = $row['section_id'];
            $sy = $row['sy'];
            $sem = $row['sem'];

            //   GETTING FOR UPLOADS
            $for_uploads_rows = $db->getAllRowsFromTable('for_uploads');

            $subject_name = $db->getIdByColumnValue('subject','id',$subject_id,'name');
            $subject_code = $db->getIdByColumnValue('subject','id',$subject_id,'code');
            $section_name = $db->getIdByColumnValue('deparment_section','id',$section_id,'name');



            // CHECKING EVERY SECTION AND SUBJECT ID
            $subject_status = $icon_done;
            $subject_checker_status = "done";
            foreach ($for_uploads_rows as $for_upload_row) {
                $for_upload_id = $for_upload_row['id'];
            
                    $where = [
                        'subject_id' => $subject_id,
                        'section_id' => $section_id,
                        'upload_id' => $for_upload_id,
                        'semester' => $currentSem,
                        'year' => $currentYear,
                        'faculty_id' => $faculty_id,
                        ];

                    $faculty_uploads_count = $db->getCountByConditions('faculty_uploads',$where);
                    if($faculty_uploads_count == 0)
                    {
                        // Not uploaded;
                        $subject_checker_status = "not";
                        $subject_status = $icon_not_done;
                        $not_complete_checking_checker+=1;
                    }else{
                        $complete_checking_checker+=1;
                    }


            }
    
            if($subject_checker_status=="not")
            {
                $toglerCard_Pending[$id][$section_id.'_'.$subject_id] = [
                    'subject_id' => $subject_id,
                    'subject_code' => $subject_code,
                    'subject_name' => $subject_name,
                    'subject_status' => $subject_status,
                    'section_id' => $section_id,
                    'section_name' => $section_name,
                ];
            }

            if($subject_checker_status=="done")
            {
                $toglerCard_Complete[$id][$section_id.'_'.$subject_id] = [
                    'subject_id' => $subject_id,
                    'subject_code' => $subject_code,
                    'subject_name' => $subject_name,
                    'subject_status' => $subject_status,
                    'section_id' => $section_id,
                    'section_name' => $section_name,
                ];
            }


            $toglerCard[$id][$section_id.'_'.$subject_id] = [
                'subject_id' => $subject_id,
                'subject_code' => $subject_code,
                'subject_name' => $subject_name,
                'subject_status' => $subject_status,
                'section_id' => $section_id,
                'section_name' => $section_name,
            ];


        }

        $icon = $icon_not_done;


        // CHECKING IF COMPLETE
        if($not_complete_checking_checker!=0 )
        {
            uicard($id,$image,$name,$position,$specialization,$contacts,$icon);
            toglerCard($id,$toglerCard_Pending,"Pending");
            if(count($toglerCard_Complete)==1)
            {
                toglerCard($id,$toglerCard_Complete,"Completed");
            }
        }

      


     }
  
    }










function uicard($card_number,$image,$name,$position,$specialization,$contacts,$icon)
{
    echo '
    <tr>
        <td rowspan="5" width="80px">
            <img data-card="'.$card_number.'" class="toggle-btn2 cursor-pointer rounded-lg" style="height:60px!important; width:100%!important;" src="../uploads/faculty/' . $image . '" alt="">
        </td>
    </tr>
    <tr>
        <td width="120px" data-card="'.$card_number.'" class="toggle-btn2 px-4 cursor-pointer" colspan="3" style="font-size:11px;">' . $name . '</td>
        <td rowspan="4" data-card="'.$card_number.'" class="toggle-btn2 px-4 cursor-pointer  text-center " style="font-size:11px;">
            ' . $icon . '
        </td>
        
    </tr>
    <tr>
        <td colspan="3" data-card="'.$card_number.'" class="toggle-btn2 px-4 cursor-pointer" style="font-size:11px;">' . $position . '</td>
    </tr>
    <tr>
        <td colspan="3" data-card="'.$card_number.'" class="toggle-btn2 px-4 cursor-pointer" style="font-size:11px;">' . $specialization . '</td>
    </tr>
    <tr>
        <td colspan="3" data-card="'.$card_number.'" class="toggle-btn2 px-4 cursor-pointer" style="font-size:11px;">' . $contacts . '</td>
    </tr>';
    echo '<tr>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    ';
    
    echo '<tr>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    ';
    echo '<tr>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    ';echo '<tr>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    ';
}

function toglerCard($card_number,$toglerCard,$checker)
{
    // FACULTY ID = CARD NUMBER

    $array = $toglerCard[$card_number];
    // echo '<pre>';
    // var_dump($toglerCard[$card_number]);
    // echo '</pre>';

    if($checker=="Pending")
    {
        $title = '<span class="text-red-500">PENDING</span>';
    }
    if($checker=="Completed")
    {
        $title = '<span class="text-green-500">COMPLETED</span>';
    }
    echo '
        <tr data-card_col="'.$card_number.'"  class="collapse2 hidden">
            <td colspan="5">
                <h1 style="font-size:11px" class="text-gray-400 font-bold mt-5 mb-2">
                    DOCUMENT STATUS - <span class="text-red-500">'.$title.'</span>
                </h1>
            </td>
        </tr>
        <tr data-card_col="'.$card_number.'" class="collapse2 hidden">
            <td colspan="5">
                <div class="card px-2 pb-1">
                    <div class="grid items-center" style="grid-template-columns: 3fr 1fr 1fr">
                        <a style="font-size: 12px;" class="justify-self-start gap-4 font-bold" >
                           Subjects
                        </a>
 
                        <div style="font-size: 12px;" class="justify-self-center font-bold">
                            Status
                        </div>
                        <div style="font-size: 12px;" class="justify-self-center font-bold">
                            Section
                        </div>
                        
                    </div>
                </div>
            </td>
        </tr>';
        
    foreach ($array as $key => $value) {
        $subject_id = $array [$key] ['subject_id'];
        $subject_code = $array [$key] ['subject_code'];
        $subject_name = $array [$key] ['subject_name'];
        $subject_status = $array [$key] ['subject_status'];
        $section_id = $array [$key] ['section_id'];
        $section_name = $array [$key] ['section_name'];

        echo '
        <tr style="position: relative; z-index: 10;" data-card_col="'.$card_number.'" class="collapse2 hidden">
            <td colspan="5">
                <div class="card shadow-lg rounded-lg border text-left border-gray-200 p-2 mb-2">
                     <div class="grid items-center justify-items-center" style="grid-template-columns: 3fr 1fr 1fr">
                        <!-- Link Section -->
                       <a href="faculty-documents-research.php?s='.$subject_id.'&section_id='.$section_id.'&faculty_id='.$card_number.'" class=" items-center gap-4" >
                            <div class="flex flex-row items-center">
                            
                                    <i class="material-icons text-orange text-5xl">folder</i>
                                    <div class="flex flex-col px-4" style="font-size: 11px;">
                                        <p class="font-semibold text-gray-800">'.$subject_code.'</p>
                                        <p class="text-gray-500">'.$subject_name.'</p>
                                    </div>
                            
                            </div>
                        </a>
 
                        <!-- Icon Section -->
                        <div class="text-center">
                            '.$subject_status.'
                        </div>
 
                        <!-- Label Section -->
                        <p style="font-size: 12px;" class="text-center text-gray-700 font-medium">'.$section_name.'</p>
                    </div>
                </div>
            </td>
        </tr>
 
    ';
    }

  

   
}
?>
