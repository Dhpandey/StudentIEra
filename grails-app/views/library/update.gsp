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

    <g:form name="inputForm" action="edit" controller="Library">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>Update Data</h1></legend>
          <table>
          <tr>
           <th>librayId: </th>
           <th><g:textField name="libId" value="${lib.libId.toString()?:""}"  /></th>
        </tr>
        <tr>
            <th>
                studentName:
            </th>
            <th><g:textField name="studentName" value="${lib.studentName.toString()}"/></tr>
        </th>
          <tr>
            <th>
                weeklyStatus:
            </th>
            <th><g:textField name="weeklyStatus" value="${lib.weeklyStatus.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                monthlyStatus:  </th>
            <th>
                <g:textField name="monthlyStatus" value="${lib.monthlyStatus.toString()}"/>
            </th> </tr>
        <tr>
            <th>
                bookLost:
            </th>
            <th><g:textField name="bookLost" value="${lib.bookLost.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                cardValidDate:
            </th>
            <th><g:textField name="cardValidDate" value="${lib.cardValidDate.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                fineAmount:
            </th>
            <th><g:textField name="fineAmount" value="${lib.fineAmount.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                Clearance:
            </th>
            <th><g:textField name="clearance" value="${lib.clearance.toString()}"/></tr>
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
