What are some common HTTP status codes?

200 is the most common code, represents a successful response.  The first digit (2) represents a successful response.  A code with 3xx is a redirectional response.
4xx and 5xx are error codes, 400 representing client side error anx 5xx representing server side error.
404 : the requested resource is no longer avaialable/ page not found.
403 : access to resource is forbidden.
500 : internal server error
503 : service unavailable : maybe down for maintenance?
504 : gateway timeout


What is the difference between a GET request and a POST request? When might each be used?
GET requests data from a specified source - anytime you type somethng in your url
POST submits data to be processed by a specified source
both can be used to achieve the same goal but incorrect usage can have negative effects..
Get should be used for safe actions - requests are usable, can be cached, remain in browser hisotry, can be bookmarked, can be shared, can be hacked.
POST should be used with sensative data (credit cards and passwords), long requests

What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

a cookie is a small piece of data that a server sends to a user's browser.   they are used for session management such as logins, shopping carts, game scores, or anything that the server needs to remember.  They are also used for personalization reasons, to store settings such as preferences.  Lastly, they are used for tracing to record and analyze a user's behavior.
