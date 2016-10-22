1. What are some common HTTP status codes?

200 OK - The request has succeeded.
300 Multiple Choices - The requested resource has different choices and cannot be resolved into one.
301 Moved Permanently - The requested resource has been assigned a new permanent URI and any future references to this resource should use one of the returned URIs.
302 Found - The requested resource resides temporarily under a different URI.
304 Not Modified - If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code.
307 Temporary Redirect - The requested resource resides temporarily under a different URI.
400 Bad Request - The request could not be understood by the server due to malformed syntax.
401 Unauthorized - The request requires user authentication.
403 Forbidden - The server understood the request, but is refusing to fulfill it.
404 Not Found - The server has not found anything matching the Request-URI
410 Gone - The requested resource is no longer available at the server and no forwarding address is known.
500 Internal Server Error - The server encountered an unexpected condition which prevented it from fulfilling the request.
501 Not Implemented - The server does not support the functionality required to fulfill the request.
503 Service Unavailable - Your web server is unable to handle your HTTP request at the time.
550 Permission denied - The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting.

2. What is the difference between a GET request and a POST request? When might each be used?

GET
The GET method is used to retrieve information from the given server using a given URI. Requests using GET should only retrieve data and should have no other effect on the data.

POST
A POST request is used to send data to the server, for example, customer information, file upload, etc. using HTML forms.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing. (Wikipedia)

A cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. Most sites requiring a login will typically set a cookie once your credentials have been verified, and you are then free to navigate to all parts of the site so long as that cookie is present and validated. Once again, the cookie just contains data and isn’t harmful in and of itself. (https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/)
