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

    <g:form name="inputForm" action="edit" controller="Admin">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>Update Data</h1></legend>
          <table>
          <tr>
           <th>symbolNumber: </th>
           <th><g:textField name="symbolNumber" value="${adm.symbolNumber.toString()?:""}"  /></th>
        </tr>
        <tr>
            <th>
                studentName:
            </th>
            <th><g:textField name="studentName" value="${adm.studentName.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                firstVisit:
            </th>
            <th><g:textField name="firstVisit" value="${adm.firstVisit.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>
                recommendedBy:  </th>
            <th>
                <g:textField name="recommendedBy" value="${adm.recommendedBy.toString()}"/>
            </th> </tr>
        <tr>
            <th>  
            admittedBy:
            </th>
            <th><g:textField name="admittedBy" value="${adm.admittedBy.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                entranceScore:
            </th>
            <th><g:textField name="entranceScore" value="${adm.entranceScore.toString()}"/>
            </th>
        </tr>
        <tr>
            <th>   
            PCLResult:
            </th>
            <th><g:textField name="PCLResult" value="${adm.PCLResult.toString()}"/></tr>
        </th>
        </tr>
        <tr>
            <th>
                SLCResult:
            </th>
            <th><g:textField name="SLCResult" value="${adm.SLCResult.toString()}"/>
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
