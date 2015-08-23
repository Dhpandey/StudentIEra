<%--
  Created by IntelliJ IDEA.
  User: ashok
  Date: 6/22/2014
  Time: 7:28 AM
--%>

<%@ page import="studentiera.Login" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <head>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
<meta name="layout" content="main">
%{--<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}"/>--}%
<title>Create user </title>
</head>
</head>

<body>
<r:script>
    jQuery(document).ready(function(){
        jQuery("#inputForm").validate({
            rules: {
                userName: "required",
                Password: "required"
            },
            messages: {
                userName: "UserName required",
                Password:"password cant be null"
            }
        });
    });
</r:script>
<div id="status"  role="complementary">
    <h1>Profiles</h1>
    <span><input id="butt" type="button" value="Admin"></span>
    <span><input id="butt"type="button" value="SIS"></span>
    <span><input id="butt" type="button" value="Hostel"></span>
    <span><input id="butt"type="button" value="Canteen"></span>
    <span><input id="butt"type="button" value="Library"></span>
    <span><input id="butt"type="button" value="Account"></span>
    <span><input id="butt"type="button" value="Awards"></span>
    <span><input id="butt"type="button" value="Sponsers"></span>

    <br>
    Dheeraj<br>
    contact:9843064230

</div>
<div id="divfortable">

    <g:form name="inputForm" controller="login" action="save">

        <fieldset style="width:400px;height:300px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1> Ceate new user</h1></legend>
          <table>
          <tr>
           <th>UserName: </th>
           <th><g:textField name="userName" value=""/></th>
        </tr>
        <tr>
            <th>
                password:
            </th>
            <th><g:passwordField name="Password" value=""/><br></tr>
        </th>
        </tr>
        <tr>
            <th>
                Level:
            </th>
                <td>
                <g:select name="level" id="userLevel" from="${userLevelList}"  optionKey="id" optionValue="UserLevel" noSelection="['':'-Please select -']"/>
                </td>

        </tr>
    %{--<tr>
        <th>${log.UserName.toString()?:''}
            Created Date:</th>
            ${log.Password.toString()?:''}
            ${log.UserLevel.toString()?:''}
        <th>
            <g:textField name="CreatedOn" value="$log.CreatedOn?:''"/>
        </th></tr>--}%
        <tr>
            <th></th>
            <th>
                <input type="submit" name="save" value="Create">
            </th>
        </tr>

        </table>
</legend>
        <div class="message" style="display: block">
            <h2 style="color: #cc0000" >${flash.message}</h2>
        </div>
     </fieldset>
    </g:form>

</div>
</body>
</html>