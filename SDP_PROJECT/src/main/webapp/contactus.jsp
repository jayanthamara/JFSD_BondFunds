<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        :root {
            --primary-color: #007bff; /* Primary color used throughout */
            --secondary-color: #6c757d;
            --text-color: #fff;
            --background-color: #f8f9fa;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            margin: 0;
        }

        .navbar {
            background-color: #454545; /* Light black navbar */
            box-shadow: 0 2px 4px rgba(0,0,0,.1);
        }

        .navbar-brand {
            color: var(--text-color) !important;
            font-weight: bold;
            font-size: 1.75rem;
        }

        .nav-link {
            color: var(--text-color) !important;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: var(--secondary-color) !important;
        }

        .dropdown-menu {
            border: none;
            background-color: var(--primary-color);
        }

        .dropdown-item {
            color: var(--text-color);
            transition: background-color 0.3s ease;
        }

        .dropdown-item:hover {
            background-color: #0056b3;
        }

        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), 
                        url('https://source.unsplash.com/1600x900/?money,finance') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 4rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .hero-section p {
            font-size: 1.5rem;
            margin-bottom: 2rem;
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .btn-primary {
            padding: 10px 30px;
            font-size: 1.25rem;
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            color: var(--text-color);
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        
        /* Form Styling */
        .form-container {
            background-color: #ffffff;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top: 50px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container input, .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .form-container input[type="submit"] {
            background-color: var(--primary-color);
            color: white;
            font-size: 1.25rem;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <%@ include file="mainnav.jsp" %>

    <!-- Form for collecting user input -->
    <div class="container form-container">
        <h2>Submit Your Data</h2>
        <form action="submitData.jsp" method="POST">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username" required><br>

            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" required><br>

            <label for="message">Message:</label><br>
            <textarea id="message" name="message" required></textarea><br>

            <input type="submit" value="Submit">
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
