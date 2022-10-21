<html>
<head>
<style>
tbody {
  white-space: nowrap;
}

table {
  margin: 0 auto;
  overflow-x: auto;
  border-spacing: 0;
}

body{
    margin: 0;
    padding: 0;
    background: #ede0a7;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    font-family: sans-serif;
}
h2{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 24px;
    color: black;
    text-align: center;
}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
</style>
<title>Update Records</title>
</head>
<body>
   <h2>Student Details Update</h2>
<?php
   //Connect with MYSQL
   $con = mysqli_connect ('localhost', 'root','');
   //Select Database
   mysqli_select_db ($con, 'library_database');
   //SELECT QUERY
   $sql = "SELECT * FROM student";
   //Execute the query
   $records =mysqli_query ($con, $sql);
?>
<table>
   <tr>
      <th>Student ID</th>
      <th>Student Name</th>
      <th>Faculty ID</th>
      <th>Gender</th>
      <th>Contact Number</th>
   </tr>
   <?php
   while($row = mysqli_fetch_array($records))
   {
      echo "<tr><form action=StudentUpdate.php method=post>";
      echo "<td><input type=label name=StudentID value='".$row['std_id']."'></td>";
      echo "<td><input type=text name=StudentName value='".$row['std_name']."'></td>";
      echo "<td><input type=text name=FacultyID value='".$row['fac_id']."'></td>";
      echo "<td><input type=text name=Gender value='".$row['gender']."'></td>";
      echo "<td><input type=text name=ContactNumber value='".$row['cont_num']."'></td>";
      echo "<td><input type=submit value=EDIT>";
      echo "<td><a href=StudentDelete.php?std_id=".$row['std_id'].">DELETE</a></td>";
      echo "</form></tr>";

   }
   ?>
   
   
</table>

</body>
</html>
