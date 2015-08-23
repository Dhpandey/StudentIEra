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
    <h2>Information Panel </h2>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>


<g:form name="inputForm" action="save" controller="Information">

    <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
      <legend><h1>Enter Records</h1></legend>
      <table >
      <tr>
       <th>Symbol Number: </th>
       <th><g:textField name="symbolNumber" value=""/></th>
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
            fatherName:
        </th>
        <th><g:textField name="fatherName" value=""/><br>

              </th>
    </tr>
    <tr>
        <th>
            motherName:</th>
        <th>
            <g:textField name="motherName" value=""/>
        </th></tr>
    <tr>
    <tr>
        <th>
            p_address:</th>
        <th>
            <g:textField name="p_address" value=""/>
        </th></tr>
    <tr>
        <th>
            T_address :</th>
        <th>
            <g:textField name="T_address" value=""/>
        </th></tr><tr>
    <th>
        contact_number :</th>
    <th>
        <g:textField name="contact_number" value=""/>
    </th></tr>

    <tr>
        <th>
            parents_contact:</th>
        <th>
            <g:textField name="parents_contact" value=""/>
        </th></tr>
    <tr>
        <th>
            email:</th>
        <th>
            <g:textField name="email" value=""/>
        </th></tr>
    <tr>
        <th>
            district:</th>
        <th>
            <g:textField name="district" value=""/>
        </th></tr>
    <tr>
        <th>
            alt_contact:</th>
        <th>
            <g:textField name="alt_contact" value=""/>
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