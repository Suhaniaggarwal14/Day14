<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Details</title>
    <style>
        body {
    font-family: 'Helvetica Neue', Arial, sans-serif; 
    margin: 0;
    padding: 20px;
    background-color: #e9ecef; 
}

.container {
    max-width: 600px;
    margin: 0 auto;
    padding: 30px;
    background: #ffffff; 
    border-radius: 10px; 
    box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1); 
}

h2 {
    margin-top: 0;
    color: #343a40; 
    border-bottom: 3px solid #007bff; 
    padding-bottom: 10px; 
    font-size: 24px; 
}

p {
    font-size: 16px; 
    line-height: 1.5; 
    color: #495057; 
}

.form-group {
    margin-bottom: 20px; 
}

.form-group label {
    display: block;
    margin-bottom: 8px; 
    font-weight: bold; 
    color: #495057; 
    }

.form-group input, 
.form-group select {
    width: 100%; 
    padding: 12px; 
    box-sizing: border-box; 
    border: 1px solid #ced4da; 
    border-radius: 5px; 
    transition: border-color 0.3s, box-shadow 0.3s; 
}

.form-group input:focus,
.form-group select:focus {
    border-color: #007bff; 
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); 
    outline: none; 
}

.form-group input[type="submit"] {
    background-color: #007bff; 
    color: white; 
    border: none; 
    padding: 12px; 
    border-radius: 5px; 
    cursor: pointer; 
    font-size: 16px; 
    transition: background-color 0.3s; 
}

.form-group input[type="submit"]:hover {
    background-color: #0056b3; 
}

.error {
    color: #dc3545;
    margin-top: 10px; 
    text-align: center; 
}

.success {
    color: #28a745; 
    margin-top: 10px; 
    text-align: center; 
}

.logout-link {
    display: block;
    margin-top: 30px; 
    text-align: center; 
}

.logout-link a {
    text-decoration: none; 
    color: #ffffff; 
    background-color: #dc3545; 
    padding: 12px 20px;  
    border-radius: 5px; 
    font-weight: bold;
    transition: background-color 0.3s; 
}

.logout-link a:hover {
    background-color: #c82333; 
}
  </style>
</head>
<body>
    <div class="container">
        <h2>Account Details</h2>
        <p><strong>First Name:</strong> <%= request.getAttribute("firstName") %></p>
        <p><strong>Last Name:</strong> <%= request.getAttribute("lastName") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
        <p><strong>Mobile Number:</strong> <%= request.getAttribute("mobile") %></p>
        <p><strong>Account Number:</strong> <%= request.getAttribute("accountNumber") %></p>
        <p><strong>Account Type:</strong> <%= request.getAttribute("accountType") %></p>
        <p><strong>Balance:</strong> Rs.<%= request.getAttribute("balance") %></p>
        
        <form action="account" method="post">
            <div class="form-group">
                <label for="action">Action:</label>
                <select id="action" name="action" required>
                    <option value="Deposit">Deposit</option>
                    <option value="Withdrawal">Withdrawal</option>
                </select>
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" id="amount" name="amount" step="0.01" min="0" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
            <div id="message">
                <% if (request.getAttribute("success") != null) { %>
                    <p class="success"><%= request.getAttribute("success") %></p>
                <% } %>
                <% if (request.getAttribute("error") != null) { %>
                    <p class="error"><%= request.getAttribute("error") %></p>
                <% } %>
            </div>
        </form>
        
        <h2>Update PIN</h2>
        <form action="account" method="post">
            <div class="form-group">
                <input type="hidden" name="action" value="updatePin">
                <label for="oldPin">Old PIN:</label>
                <input type="password" id="oldPin" name="oldPin" required>
            </div>
            <div class="form-group">
                <label for="newPin">New PIN:</label>
                <input type="password" id="newPin" name="newPin" title="Enter a 4-digit New PIN">
            </div>
            <div class="form-group">
                <input type="submit" value="Update PIN">
            </div>
        </form>
        
        <div class="logout-link">
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>