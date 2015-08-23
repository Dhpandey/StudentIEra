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

<div id="divfortable">

    <g:form name="inputForm" action="edit" controller="information">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>Update Data</h1></legend>
          <table>
          <tr>
           <th>symbolNumber: </th>
           <th><g:textField name="symbolNumber" value="${info.symbolNumber.toString()?:""}"  /></th>
        </tr>
        <tr>
            <th>
                studentName:
            </th>
            <th><g:textField name="studentName" value="${info.studentName.toString()}"/></tr>
        </th>
        </tr>
        <tr>

            <th>
            fatherName:
            </th>
            <th><g:textField name="fatherName" value="${info.fatherName.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                motherName:  </th>
            <th>
                <g:textField name="motherName" value="${info.motherName.toString()}"/>
            </th> </tr>
        <tr>
            <th>
                p_address:
            </th>
            <th><g:textField name="p_address" value="${info.p_address.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                T_address:
            </th>
            <th><g:textField name="T_address" value="${info.T_address.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                contact_number:
            </th>
            <th><g:textField name="contact_number" value="${info.contact_number.toString()}"/></tr>
        </th>
        </tr>
                <tr>
            <th>
                parents_contact            </th>
            <th><g:textField name="parents_contact" value="${info.parents_contact.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                email:
            </th>
            <th><g:textField name="email" value="${info.email.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                district:
            </th>
            <th><g:textField name="district" value="${info.district.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                alt_contact:
            </th>
            <th><g:textField name="alt_contact" value="${info.alt_contact.toString()}"/>
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
