<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Photo</title>
</head>
<body>
      <form action="../../../../JavaProject/Upload" method="post" enctype="multipart/form-data">
           <input type="file" name="photoFile" required/>
           <input type="submit" value="Upload"/>

      </form>
</body>
</html>