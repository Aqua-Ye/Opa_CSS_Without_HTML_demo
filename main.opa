function dispatcher(uri) {
	Resource.source("", "text/html")
	|> Resource.add_header(_, {custom:("Link", "<css/magic.css>;rel=stylesheet")})
}

Server.start(Server.http, [
	{resources:@static_resource_directory("css")},
	{dispatch:dispatcher}
])