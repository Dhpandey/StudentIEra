<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <meta name="layout" content="main">
    %{--<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}"/>--}%
    <title>Welcome</title>
</head>

<body>

<div id="status" role="complementary">
    <h1>Admin Panel </h1>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>

<div id="divfortable">

    <g:form name="inputForm" action="edit" controller="Hostel">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>Update Data</h1></legend>
          <table>
          <tr>
           <th>hostelId: </th>
           <th><g:textField name="hostelId" value="${hos.hostelId.toString()?:""}"  /></th>
        </tr>
        <tr>
            <th>
                studentName:
            </th>
            <th><g:textField name="studentName" value="${hos.studentName.toString()}"/></tr>
        </th>

        <tr>
            <th>
                admittedDate:
            </th>
            <th><g:select name="admittedDate" from="${2050..2080}" value="admittedDate"
                          noSelection="['':'-Choose Date-']"/>
            </th>
        </tr>
        <tr>
            <th>
                reporting:  </th>
            <th>
                <g:textField name="reporting" value="${hos.reporting.toString()}"/>
            </th> </tr>
        <tr>
            <th>
                roomNo:
            </th>
            <th><g:textField name="roomNo" value="${hos.roomNo.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                roomStatus:
            </th>
            <th><g:textField name="roomStatus" value="${hos.roomStatus.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                incharge:
            </th>
            <th><g:textField name="incharge" value="${hos.incharge.toString()}"/></tr>
        </th>
        </tr>

        <tr>
            <th></th>
            <th>
                <input type="submit" name="edit" value="Update">
            </th>
        </tr>
        </table>
</legend>
     </fieldset>
    </g:form>
</div>
</body>
</html>
