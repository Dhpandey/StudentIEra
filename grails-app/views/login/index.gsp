<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <head>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
<meta name="layout" content="main">
%{--<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}"/>--}%
<title>Create user</title>
</head>
</head>

<body>
<r:script>
    jQuery(document).ready(function () {
        jQuery("#inputForm").validate({
            rules: {
                UserName: "required",
                Password: "required"
            },
            messages: {
                UserName: "UserName required",
                Password: "password cant be null"
            }
        });
    });
</r:script>

<div id="status" role="complementary">
    <h1>Profiles</h1>
    <span>
        <input id="butt" type="button" value="Admin">
        <input id="butt" type="button" value="SIS">
        <input id="butt" type="button" value="Hostel">
        <input id="butt" type="button" value="Canteen">
        <input id="butt" type="button" value="Library">
        <input id="butt" type="button" value="Account">
        <input id="butt" type="button" value="Awards">
        <input id="butt" type="button" value="Sponsers"></span>

    <br>
    Dheeraj<br>
    contact:9843064230

</div>

<div id="divfortable">

    <g:form name="inputForm" action="authenticate" controller="Login">

        <fieldset style="width:500px;margin-left:400px;background-color:#eed3d7;border:groove">
          <legend><h1>User Login</h1></legend>
          <table>
          <tr>
           <th>UserName: </th>
           <th><g:textField name="UserName" value=""/></th>
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

            <th><g:textField name="UserLevel" value=""/><br></th>

        </tr>

        <tr>
            <th><a href="${createLink(controller: 'login', action: 'create')}"><input type="button" value="Create New">
            </a></th>
            <th>
                <input type="submit" name="authenticate" value="Login">
            </th>
        </tr>

        </table>
        <a href="#">change username or pasword</a>
        </legend>
        <div class="message" style="display: block">
            <h2 style="color: #cc0000">${flash.message}</h2>
        </div>
        </fieldset>

    </g:form>
</div>
</body>
</html>