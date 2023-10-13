<%@page import="entity.Route"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Routes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        #container {
            width: 90%;
            margin: 0 auto;
        }
        
        h1 {
            text-align: center;
            margin-top: 30px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        
        .btn-edit, .btn-delete {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .btn-edit {
            background-color: #4CAF50;
            color: white;
            margin-right: 5px;
        }
        
        .btn-delete {
            background-color: #f44336;
            color: white;
        }
        
        .btn-add {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #2196F3;
            color: white;
            margin-top: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div id="container">
        <h1>List of Routes</h1>
        
        <table>
            <thead>
                <tr>
                    <th>Route ID</th>
                    <th>Origin</th>
                    <th>Destination</th>
                    <th>Distance</th>
                    <th>Duration</th>
                    <th>Fare</th>
                    <th>Vehicle Type</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Route> listR = (List<Route>) request.getAttribute("listR");
                    for (Route route : listR) {
                %>
                <tr>
                    <td><%= route.getRouteId() %></td>
                    <td><%= route.getOrigin() %></td>
                    <td><%= route.getDestination() %></td>
                    <td><%= route.getDistance() %></td>
                    <td><%= route.getDuration() %></td>
                    <td><%= route.getFare() %></td>
                    <td><%= route.getVehicle() %></td>
                    <td><%= route.getStatus() %></td>
                    <td>
                        <!-- Edit Button -->
                        <button class="btn-edit" onclick="editRoute(<%= route.getRouteId()%>)"  >✏️ Edit</button>
                        <!-- Delete Button -->
                        <button class="btn-delete" onclick="deleteRoute(<%= route.getRouteId()%>)">❌ Delete</button>
                    </td>
                </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
        
        <!-- Add Route Button -->
        <button class="btn-add" onclick="addRoute()">➕ Add Route</button>
    </div>

    <!-- JavaScript code for CRUD operations -->
    <script>
        // Function to edit a route
        function editRoute(routeId) {
            // TODO: Implement the edit functionality
        }
        
        // Function to delete a route
        function deleteRoute(routeId) {
            // TODO: Implement the delete functionality
        }
        
        // Function to add a new route
        function addRoute() {
            // TODO: Implement the add functionality
        }
    </script>
</body>
</html>