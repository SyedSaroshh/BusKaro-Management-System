<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styless.css">
    <title>Registered Students</title>
</head>
<body>
    <div class="container">
        <h1>Registered Students</h1>

        <?php
        // Your database connection code here
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "kk";

        $conn = mysqli_connect($servername, $username, $password, $dbname);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        // Your SQL query to retrieve registered students
        $sql = "SELECT * FROM registration";

        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            // Display a table with student details
            echo "<table>
                    <tr>
                        <th>Registration Id</th>
                        <th>Student_ID</th>
                        <th>Fees</th>
                    </tr>";

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>
                        <td>{$row['Registration_ID']}</td>
                        <td>{$row['Student_ID']}</td>
                        <td>{$row['Fee']}</td>
                    </tr>";
            }
            echo "</table>";
        } else {
            echo "No registered students.";
        }

        // Close connection
        mysqli_close($conn);
        ?>
    </div>
</body>
</html>
