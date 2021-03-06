<#macro masterTemplate title="Welcome">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>${title} | ApplyForJob</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle"
                    data-toggle="collapse" data-target="#example-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="/">ITQAWorld Job Portal</a>
        </div>

        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <#if user??>
                    <li><a href="/public">Jobs Timeline</a></li>
                    <li><a href="/message">My Messages</a></li>
                    <li><a href="/application">My Application</a></li>
                    <li><a href="/logout">${user.username}
                        <select><option>Sign Out</option></select>
                    </a></li>
                <#else>
                    <li><a href="/public">Jobs Timeline</a></li>
                    <li><a href="/login">Sign In</a></li>
                    <li><a href="/register">Sign Up</a></li>

                </#if>
            </ul>
        </div>
    </nav>

    <div class="container">
        <#nested />
    </div>

    <footer class="footer">
        <p>Apply for a Job &mdash; @Copyright - ItqaWorld</p>
    </footer>
</div>
<!-- /container -->
</body>
</html>
</#macro>