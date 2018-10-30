<!---
        This is an example configuration template for a ColdFusion 10
        server instance.

        Please refer to ColdFusion 10 Administrator API documentation
        for further details and more configuration options.

	Look for "CFIDE.adminapi" in
	http://localhost:8500/CFIDE/componentutils/componentdoc.cfm
--->
<cfscript>
        admin = createObject("component","cfide.adminapi.administrator");
        runtime = createObject("component","cfide.adminapi.runtime");
        extensions = createObject("component","cfide.adminapi.extensions");
        datasource = createObject("component","cfide.adminapi.datasource");

        // Log in with blank password (assuming security is disabled)
        admin.login("");

        // Runtime settings
        runtime.setScopeProperty("UUIDCFToken", false); // Use UUID for cftoken : no

        // Mappings
        extensions.setMapping("/coreapp", "/var/www/d/sites/core/cfc");

        // Custom tag paths
        extensions.setCustomTagPath("/path/to/my_app/customtags");

        // Datasource
        datasource.setOracle(
                name = "local_orcl",
                host = "localhost",
                sid = "ORCL",
                port = "1521",
                username = "SCOTT",
                password = "TIGER",
                description = "Local oracle instance",
                disable_clob = false,
                disable_blob = false
        );
</cfscript>
