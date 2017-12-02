<#import "masterTemplate.ftl" as layout />

<@layout.masterTemplate title="Application">

    <#if error??>
    <div class="alert alert-danger">
        <strong>Error:</strong> ${error}
    </div>
    </#if>

<h3>Application Submission</h3>

<form class="form-horizontal" action="/application" role="form" method="post">

    <div class="form-group">
        <label for="jobposition" class="col-sm-2 control-label">Your Current Position:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="jobposition"  placeholder="Current Job Position" value="${jobposition!}"/>
        </div>
    </div>

    <div class="form-group">
        <label for="experience" class="col-sm-2 control-label">Experience: </label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="experience" placeholder="Experience" value="${experience!}" />
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Submit Application</button>
        </div>
    </div>
</form>
</@layout.masterTemplate>