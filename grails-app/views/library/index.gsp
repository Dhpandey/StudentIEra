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

<div id="status" role="complementary">
    <h2>Library Panel </h2>
    <span><a href="create"><input type="button" value="Add"></a></span>
    <span><a href="index"><input type="button" value="Display"></a></span>
    <span><a href="create"><input type="button" value="Delete"></a></span>
    <span><a href="create"><input type="button" value="Search"></a></span>
    <span><a href="create"><input type="button" value="Delete ALL"></a></span>
    <span><a href="create"><input type="button" value="Reset"></a></span>

</div>
<div class="pull-right"  style="margin-right:10px;"><input class="searchbox" type="text" name="search" id="search" placeholder="search"><a href="#" class="searchicon"></a></div>
    <div style="height: 350px">
<g:form controller="library" action="index">
    <table border="1" id="studentInfoTable">
    <tr>
        <th>libId</th>
        <th>StudentName</th>
        <th> weeklyStatus</th>
        <th>monthlyStatus</th>
        <th>bookLost</th>
        <th>cardValidDate</th>
        <th>fineAmount</th>
        <th>clearance</th>
        <th>Action</th>
    </tr>
    <g:each in="${library}" var="lib">
        <tr>
            <td>${lib.libId}</td>
            <td>${lib.studentName}</td>
            <td>${lib.weeklyStatus}</td>
            <td>${lib.monthlyStatus}</td>
            <td>${lib.bookLost}</td>
            <td>${lib.cardValidDate}</td>
            <td>${lib.fineAmount}</td>
            <td>${lib.clearance}</td>
            <td><a href="${createLink(controller:'Library', action: 'update',params: [libId:lib.libId])}">EDIT</a>||<a href="#">Delete</a> </td>
        </tr>
    </g:each>
</table>
    </g:form>
</div>
</body>
</html>