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
    <h2>Admin Panel </h2>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>

<div id="divfortable">

    <g:form name="inputForm" action="edit" controller="Leaves">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>Update Data</h1></legend>
          <table>
          <tr>
           <th>symbolNumber: </th>
           <th><g:textField name="symbolNumber" value="${lev.symbolNumber.toString()?:""}"  /></th>
        </tr>
        <tr>
            <th>
                studentName:
            </th>
            <th><g:textField name="studentName" value="${lev.studentName.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                leaveType:
            </th>
            <th><g:textField name="leaveType" value="${lev.leaveType.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                leaveFrom:  </th>
            <th>
                <g:textField name="leaveFrom" value="${lev.leaveFrom.toString()}"/>
            </th> </tr>
      %{--  <tr>
            <th>
                leaveTo
            </th>
            <th><g:textField name="arrivalDate" value="${lev.arrivalDate.toString()}"/></tr>
        </th>
        </tr>--}%
        <tr>
            <th>
                approvedBy:
            </th>
            <th><g:textField name="approvedBy" value="${lev.approvedBy.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                approvedWith:
            </th>
           %{-- <th><g:textField name="approvedWith" value="${lev.approvedWith.toString()}"/></tr>
        </th>--}%
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
