<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <meta name="layout" content="main">
    %{--<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}"/>--}%
    <title>Welcome</title>

</head>

<body>
<r:script>
    jQuery(document).ready(function(){
        jQuery("#inputForm").validate({
            rules: {
                symbolNumber: "required",
                studentName:"required"
            },
            messages: {
                symbolNumber: "Please enter your symbolnumber",
                studentName:"Enter student name"
            }
        });
    });
</r:script>

<div id="status" role="complementary">
    <h1>Admin Panel </h1>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>


<g:form name="inputForm" id="inputForm" action="save" controller="Admin"  method="post">

    <fieldset style="width:500px;min-height:400px;margin-left:400px;background-color:#eed3d7;border:groove">
      <legend><h1>Enter Records</h1></legend>
      <table >
      <tr>
       <th>Symbol Number: </th>
       <th><g:textField name="symbolNumber" value=""/>*</th>
        </tr>
    <tr>
        <th>
            Student Name:
        </th>
        <th><g:textField name="studentName" value=""/>*</tr>
    </th>
    </tr>
    <tr>
        <th>
            Visit First:
        </th>
        <th><g:textField name="firstVisit" value=""/><br>
        </th>
    </tr>
    <tr>
        <th>
            Recommended by:</th>
        <th>
            <g:textField name="recommendedBy" value=""/>
        </th></tr>
    <tr>
    <tr>
        <th>
            Admitted by:</th>
        <th>
            <g:textField name="admittedBy" value=""/>
        </th></tr>
    <tr>
        <th>
            Entrance Score:</th>
        <th>
            <g:textField name="entranceScore" value=""/>
        </th></tr><tr>
    <th>
        Result(PCL%) :</th>
    <th>
        <g:textField name="PCLResult" value=""/>
    </th></tr>
    <tr>
        <th>
            SLC result(%):</th>
        <th>
            <g:textField name="SLCResult" value=""/>
        </th></tr>
    <tr>
    <tr>
    <tr>
    <tr>
        <th></th>
        <th>
            <input type="submit" class="buttons
            " name="save" value="OK">
        </th>
    </tr>
    </table>
</legend>
 </fieldset>
</g:form>
</body>
</html>