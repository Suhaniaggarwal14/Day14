
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #f0f2f5; /* Light grey background */
}

.container {
    max-width: 500px;
    margin: 50px auto;
    padding: 30px;
    background: #ffffff; /* White background for the container */
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Subtle shadow */
}

h2 {
    text-align: center; /* Centered heading */
    color: #333; /* Dark grey for the text */
    margin-bottom: 30px; /* Space below heading */
}

.form-group {
    margin-bottom: 20px; /* Space between form groups */
}

.form-group label {
    display: block; /* Block display for labels */
    margin-bottom: 8px; /* Space below labels */
    font-weight: bold; /* Bold labels */
    color: #555; /* Dark grey for labels */
}

.form-group input,
.form-group select {
    width: 100%; /* Full width */
    padding: 12px; /* Padding inside fields */
    box-sizing: border-box; /* Include padding in width */
    border: 1px solid #ccc; /* Light border */
    border-radius: 5px; /* Rounded edges */
    transition: border-color 0.3s, box-shadow 0.3s; /* Smooth transition */
}

.form-group input:focus,
.form-group select:focus {
    border-color: #007bff; /* Blue border on focus */
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Light blue shadow */
    outline: none; /* Remove default outline */
}

.form-group input[type="submit"] {
    background-color: #28a745; /* Green background */
    color: white; /* White text */
    border: none; /* No border */
    padding: 12px; /* Padding inside button */
    border-radius: 5px; /* Rounded edges */
    cursor: pointer; /* Pointer cursor */
    font-size: 16px; /* Larger text */
    transition: background-color 0.3s; /* Smooth transition */
}

.form-group input[type="submit"]:hover {
    background-color: #218838; /* Darker green on hover */
}

.error {
    color: red; /* Red text for error messages */
    margin-top: 10px; /* Space above error messages */
    text-align: center; /* Center error messages */
}
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="register" method="post">
        
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required>
            </div>
            
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required>
            </div>
            
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="mobile">Mobile Number:</label>
                <input type="text" id="mobile" name="mobile" required>
            </div>
            
            <div class="form-group">
                <label for="accountType">Account Type:</label>
                <select id="accountType" name="accountType" required>
                    <option value="Savings">Savings</option>
                    <option value="Current">Current</option>
                </select>
            </div>
            <div class="form-group">
                <label for="password">PIN:</label>
                <input type="password" id="pin" name="pin" required>
            </div>
            	
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <div class="form-group">
                <input type="submit" value="Register">
            </div>
            <div id="message">
                <% if (request.getAttribute("error") != null) { %>
                    <p class="error"><%= request.getAttribute("error") %></p>
                <% } %>
            </div>
        </form>
    </div>
</body>
</html>
