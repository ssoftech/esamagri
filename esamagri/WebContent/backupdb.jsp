<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="<%=request.getContextPath()%>/BackupRestoreDataBase" enctype="multipart/form-data">
            <center>
                <br><br><br><br><br><br><br><br><br><br><br><br>
        <table>
            <tr>
                <td>Backup</td>
                <td></td>
                <td><input type="submit" name="backup" value="Backup" id="submit" /></td>
            </tr>
            <tr>
                <td>Restore</td>
                <td><input type="file" name="file" ></td>
                <td><input type="submit" name="restore" value="Restore" id="submit" /></td>
            </tr>
        </table>
      
            </center>
        </form>

</body>
</html>