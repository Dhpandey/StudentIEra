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
    <h2>Hostel Panel </h2>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>


<g:form name="inputForm" action="save" controller="Hostel">

    <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
      <legend><h1>Enter Records</h1></legend>
      <table >
      <tr>
       <th>Hostel ID: </th>
       <th><g:textField name="hostelId" value=""/></th>
        </tr>
    <tr>
        <th>
            Student Name:
        </th>
        <th><g:textField name="studentName" value=""/><br></tr>
                    </th>
    </tr>
    <tr>
        <th>
            admittedDate:
        </th>
        <th>
            <g:select name="admittedDate" from="${2050..2080}" value="admittedDate"
                      noSelection="['':'-Choose Date-']"/>
        </th>
    </tr>
    <tr>
        <th>
            reporting:</th>
        <th>
            <g:textField name="reporting" value=""/>
        </th></tr>
    <tr>
    <tr>
        <th>
            roomNo:</th>
        <th>
            <g:textField name="roomNo" value=""/>
        </th></tr>
    <tr>
        <th>
            roomStatus :</th>
        <th>
            <g:textField name="roomStatus" value=""/>
        </th></tr><tr>
    <th>
        incharge :</th>
    <th>
        <g:textField name="incharge" value=""/>
    </th></tr>

       <tr>
    <tr>
    <tr>
    <tr>
        <th></th>
        <th>
            <input type="submit" class="buttons  " name="save" value="OK">
        </th>
    </tr>
    </table>
</legend>
 </fieldset>
</g:form>
</body>
</html>