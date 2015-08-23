<%--
  Created by IntelliJ IDEA.
  User: dheeraj
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

<div class="pull-right"  style="margin-right:10px;"><input class="searchbox" type="text" name="search" id="search" placeholder="search"><a href="#" class="searchicon"></a></div>
<div style="height: 350px">

    <g:form controller="account" action="index">
        <table border="1" id="studentInfoTable">
            <thead>
            <tr>
                <th>AccountId</th>
                <th>Student Name</th>
                <th>Status</th>
                <th>Semester</th>
                <th>Paid On</th>
                <th>Paid Amount</th>
                <th>Paid By</th>
                <th>Amount Due</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            %{--<tr>--}%
            %{--<th><g:textField size="8" name="searchField1" value="${params.searchField1}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField2" value="${params.searchField2}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField3" value="${params.searchField3}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField4" value="${params.searchField4}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField5" value="${params.searchField5}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField6" value="${params.searchField6}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField7" value="${params.searchField7}"/></th>--}%
            %{--<th><g:textField size="8" name="searchField8" value="${params.searchField8}"/></th>--}%
            %{--<g:submitButton name="button" value="" style="position:fixed;top:0px;height:1px;widht:1px;" />--}%
            %{--<th>choose</th>--}%
            %{--</tr>--}%
            <g:each in="${account}" var="acc">
                <tr>
                    <td>${acc.accountId}</td>
                    <td>${acc.studentName}</td>
                    <td>${acc.accountStatus}</td>
                    <td>${acc.semester}</td>
                    <td>${acc.paidOn}</td>
                    <td>${acc.paidAmount}</td>
                    <td>${acc.paidBy}</td>
                    <td>${acc.dueAmount}</td>
                    <td><a href="${createLink(controller:'Account', action: 'update',params: [accountId:acc.accountId])}">EDIT</a>||<a href="${createLink(controller:'Account', action: 'delete', params: [symbolNumber:acc.accountId])}">Delete</a> </td>
                </tr>

                           </g:each>
            </tbody>
        </table>
    </g:form>
</div>
</body>
</html>