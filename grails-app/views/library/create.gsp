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
    <h2>Library Panel </h2>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>


<g:form name="inputForm" action="save" controller="Library">

    <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
      <legend><h1>Enter Records</h1></legend>
      <table >
      <tr>
       <th>Library ID: </th>
       <th><g:textField name="libId" value=""/></th>
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
            weeklyStatus:
        </th>
        <th><g:textField name="weeklyStatus" value=""/><br>

        </th>
    </tr>
    <tr>
        <th>
            monthlyStatus:</th>
        <th>
            <g:textField name="monthlyStatus" value=""/>
        </th></tr>
    <tr>
    <tr>
        <th>
            bookLost:</th>
        <th>
            <g:textField name="bookLost" value=""/>
        </th></tr>
    <tr>
        <th>
            cardValidDate :</th>
        <th>
            <g:textField name="cardValidDate" value=""/>
        </th></tr>
    <tr>
    <th>
        fineAmount :</th>
    <th>
        <g:textField name="fineAmount" value=""/>
    </th></tr>
    <tr>
        <th>
            Clearance :</th>
        <th>
            <g:textField name="clearance" value=""/>
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