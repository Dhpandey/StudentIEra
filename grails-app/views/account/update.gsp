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
    <h2>Account Panel </h2>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>

<div id="divfortable">

    <g:form name="inputForm" action="edit" controller="Account">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>Update Data</h1></legend>
          <table>
          <tr>
           <th>accountId: </th>
           <th><g:textField name="accountId" value="${acc.accountId.toString()?:""}"  /></th>
        </tr>
        <tr>
            <th>
                studentName:
            </th>
            <th><g:textField name="studentName" value="${acc.studentName.toString()}"/></tr>
        </th>
        </tr>
        <tr><th>
            status:
            </th>
            <th><g:textField name="accountStatus" value="${acc.accountStatus.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                semester:  </th>
            <th>
                <g:textField name="semester" value="${acc.semester.toString()}"/>
            </th> </tr>
        <tr>
            <th>
                paidOn:
            </th>
            <th><g:textField name="paidOn" value="${acc.paidOn.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                paidAmount:
            </th>
            <th><g:textField name="paidAmount" value="${acc.paidAmount.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                paidBy:
            </th>
            <th><g:textField name="paidBy" value="${acc.paidBy.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                dueAmount:
            </th>
            <th><g:textField name="dueAmount" value="${acc.dueAmount.toString()}"/>
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
