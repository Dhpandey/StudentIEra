<%--
  Created by IntelliJ IDEA.
  User: ashok
  Date: 6/19/2014
  Time: 4:21 AM
--%>
<!DOCTYPE html>
<html>
<head>
    %{-- <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
    <meta name="layout" content="main">
    %{--<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}"/>--}%
    <title>Welcome</title>
</head>
<body>
<r:script>
    //jQuery(function($) { alert("finsfgjk") })(jQuery);
    jQuery(function($)
    {
        $('#search').keyup(function()
        {
            searchTable($(this).val());
        });
    })(jQuery);
    function searchTable(inputVal)
    {
        var table = $('#studentInfoTable');
        table.find('tr').each(function(index, row)
        {
            var allCells = $(row).find('td');
            if(allCells.length > 0)
            {
                var found = false;
                allCells.each(function(index, td)
                {
                    var regExp = new RegExp(inputVal, 'i');
                    if(regExp.test($(td).text()))
                    {
                        found = true;
                        return false;
                    }
                });
                if(found == true)$(row).show();else $(row).hide();
            }
        });
    }
</r:script>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>
<div style="height: 400px">
    <div class="pull-right"  style="margin-right:10px;"><input class="searchbox" type="text" name="search" id="search" placeholder="search"><a href="#" class="searchicon"></a></div>
    <div style="height: 350px">
        <g:form controller="information" action="index">
            <table border="1" id="studentInfoTable">
    <tr>
        <th>SN</th>
        <th>SName</th>
        <th>fatherName</th>
        <th>motherName</th>
        <th>p_address</th>
        <th>T_address</th>
        <th>contact_NO</th>
        <th>parents_CN</th>
        <th>email</th>
       <th>district</th>
       <th>alt.contact</th>
        <th>ACTION</th>
    </tr>
    <g:each in="${information}" var="info">
        <tr>
            <td>${info.symbolNumber}</td>
            <td>${info.studentName}</td>
            <td>${info.fatherName}</td>
            <td>${info.motherName}</td>
            <td>${info.p_address}</td>
            <td>${info.T_address}</td>
            <td>${info.contact_number}</td>
            <td>${info.parents_contact}</td>
            <td>${info.email}</td>
            <td>${info.district}</td>
            <td>${info.alt_contact}</td>

            <td><a href="${createLink(controller:'information', action: 'update',params: [symbolNumber:info.symbolNumber])}">EDIT</a>||<a href="#" onclick="confirm('Are you sure')">Delete</a> </td>
        </tr>
    </g:each>
</table>
    </g:form>
        </div>
   </div>
</body>
</html>