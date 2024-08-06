
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
       body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #e9ecef;
}

.container {
    max-width: 400px;
    margin: 50px auto;
    padding: 30px;
    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.form-group input {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s;
}

.form-group input:focus {
    border-color: #007bff;
    outline: none;
}

.form-group input[type="submit"] {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
}

.form-group input[type="submit"]:hover {
    background-color: #0056b3;
}

.toggle-password {
    cursor: pointer;
    position: relative;
    top: -35px; /* Adjust this value to place it properly */
    left: 90%;
    transform: translateX(-50%);
    color: #007bff;
    font-size: 14px;
}

.error {
    color: red;
    margin-top: 10px;
    text-align: center;
}

.success {
    color: green;
    margin-top: 10px;
    text-align: center;
}
       
    </style>
    <script>
        function validateForm(event) {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            
            if (!username || !password) {
                document.getElementById("error").innerText = "Username or Password cannot be empty.";
                event.preventDefault();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="login" method="post" onsubmit="return validateForm(event)">
            <div class="form-group">
                <label for="username">Username: </label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password: </label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Login">
            </div>
            <div id="error" class="error">
                <% if (request.getAttribute("error") != null) { %>
                    <%= request.getAttribute("error") %>
                <% } %>
            </div>
            <div id="success" class="success">
                <% if (request.getAttribute("success") != null) { %>
                    <%= request.getAttribute("success") %>
                <% } %>
            </div>
        </form>
    </div>
</body>
</html>
