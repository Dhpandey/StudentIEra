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
                accountId: "required",
                studentName:"required"
            },
            messages: {
                accountId: "!Invalid!!!Please enter acount Id",
                studentName:"Invalid!!!!Enter student name"
            }
        });
    });
</r:script>

<div id="status" role="complementary">
    <h1>Account Panel </h1>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>


<g:form name="inputForm" id="inputForm" action="save" controller="Account"  method="post">

    <fieldset style="width:500px;min-height:400px;margin-left:400px;background-color:#eed3d7;border:groove">
      <legend><h1>Enter Records</h1></legend>
      <table >
      <tr>
       <th>Account ID: </th>
       <th><g:textField name="accountId" value=""/>*</th>
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
        Status:
        </th>
        <th>
            <g:textField name="accountStatus" value=""/><br>
        </th>
    </tr>
    <tr>
        <th>
            Semester:</th>
        <th>
            <g:textField name="semester" value=""/>
        </th></tr>
    <tr>
    <tr>
        <th>
            Paid On:</th>
        <th>
            <g:textField name="paidOn" value=""/>
        </th></tr>
    <tr>
        <th>
            Paid Amount:</th>
        <th>
            <g:textField name="paidAmount" value=""/>
        </th></tr><tr>
    <th>
        Paid By :</th>
    <th>
        <g:textField name="paidBy" value=""/>
    </th></tr>
    <tr>
        <th>
            Due Amount):</th>
        <th>
            <g:textField name="dueAmount" value=""/>
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