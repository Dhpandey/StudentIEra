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
        var table = $('#studentLeaveTable');
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

<div class="pull-right"  style="margin-right:10px;"><input class="searchbox" type="text" name="search" id="search" placeholder="search"><a href="#" class="searchicon"></a></div>
<div style="height: 350px">

    <g:form controller="leaves" action="index">
        <table border="1" id="studentLeaveTable">
            <thead>
            <tr>
                <th>Symbol Number</th>
                <th>Student Name</th>
                <th>Leave Type</th>
                <th>Leave From</th>
               %{-- <th>Leave TO</th--}%
                <th>Approved By</th>
                <th>Approved with</th>
                <th>status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>



            <g:each in="${leave}" var="lev">
                <tr>
                    <td>${lev.symbolNumber}</td>
                    <td>${lev.studentName}</td>
                    <td>${lev.leaveType}</td>
                    <td>${lev.leaveFrom}</td>
              %{--      <td>${lev.arrivalDate()}</td>--}%
                    <td>${lev.approvedBy}</td>
                    <td>${lev.approvedWith}</td>
                    <td></td>
                    <td><a href="${createLink(controller:'Leaves', action: 'update',params: [symbolNumber:lev.symbolNumber])}">EDIT</a>||<a href="${createLink(controller:'Leaves', action: 'delete', params: [symbolNumber:lev.symbolNumber])}">Delete</a> </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </g:form>
</div>
</body>
</html>