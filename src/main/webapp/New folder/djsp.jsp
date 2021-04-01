<!DOCTYPE html>
<html lang="en">
<head>
    <title>FILL CGPA</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        div{
            font-size:15px;
            color:  black ;
        }
        body {
            background-image: url("https://images.pexels.com/photos/691668/pexels-photo-691668.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: unset;
        }

        }
    </style>
</head>
<body>

<div class="container">
    <h2 style="text-align:center; color:blueviolet;">GPA CALCULATOR </h2>
    <form action="calc.jsp" class="was-validated" >
        <div class="form-group">
            <label for="sname">Student:</label>
            <input type="text" class="form-control" id="sname" placeholder="Enter your name" name="sname" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="g1">Grade in OS:</label>
            <select name="g1"><option>A</option>
                <option>B</option>
                <option>C</option>
                <option>D</option>
                <option>E</option>
            </select>
        </div>

        <div class="form-group">
            <label for="g2">Grade in AJP:</label>
            <select name="g2"><option>A</option>
                <option>B</option>
                <option>C</option>
                <option>D</option>
                <option>E</option>
            </select>
        </div>

        <div class="form-group">
            <label for="g3">Grade in WT:</label>
            <select name="g3"><option>A</option>
                <option>B</option>
                <option>C</option>
                <option>D</option>
                <option>E</option>
            </select>
        </div>



        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>