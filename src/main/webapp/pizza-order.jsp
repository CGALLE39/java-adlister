<%--
  Created by IntelliJ IDEA.
  User: cynthiagallegos
  Date: 7/15/22
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="partials/head.jsp"%>

</head>
<body>
<%--<%@include file="partials/navbar.jsp"%>--%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Pizza World</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Order Online</a>
                </li>
                <li class="nav-item">
                <li class="nav-item">
                    <a class="nav-link disabled">Menu</a>
                </li>

            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Zipcode" aria-label="Search">
                <!--                <button class="btn btn-outline-success" type="submit">Search Stores near you!</button>-->
            </form>
            <button class="btn btn-outline-primary" type="submit">Search Stores near you!</button>
        </div>

    </div>
</nav>
<!-- Jumbotron -->
<div class="jumbotron" style="
    background-image: url('../img/pizza.png');
    height: 346px;
  ">
    <h1 class="bg-light p-2 text-dark bg-opacity-75 w-100 text-center justify-content-center align-items-center">Welcome to Pizza World uwu</h1>
</div>
<!-- Jumbotron -->
<h2>Build your own pizza!</h2>

<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Size and Crust</button>

    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Cheese and Sauce</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Toppings</button>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"><div class="tab-content" id="myTabContent0">
        <div
                class="tab-pane fade show active style=width: 100%;"
                id="home0"
                role="tabpanel"
                aria-labelledby="home-tab0">
            <div class="card">
                <div class="card-body">
                    <div class="card-header bg-primary text-light style=width: 100%;">Choose Size and Crust</div>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-dark">Hand Tossed</li>
                        <li class="list-group-item">Garlic seasoned crust with a rich, buttery taste.</li>
                        <li class="list-group-item">
                            <input name="pizza_crust" value="true" type="radio" checked> Small(10")</li>
                        <li class="list-group-item">
                            <input name="pizza_crust" value="true" type="radio" checked> Large(14")</li>

                    </ul>
                </div>
                <div class="card">
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-dark">Crispy Thin</li>
                            <li class="list-group-item">Thin enough for optimum crispy to crunchy ratio.</li>
                            <li class="list-group-item">
                                <input name="pizza_crust" value="true" type="radio" checked> Medium(12")</li>
                            <li class="list-group-item">
                                <input name="pizza_crust" value="true" type="radio" checked> Large(14")</li>

                        </ul>
                    </div>
                </div>
                <footer class="card-footer d-flex justify-content-end">button</footer>
            </div>
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"><div class="tab-content" id="myTabContent0">
            <div
                    class="tab-pane fade show active style=width: 100%;"
                    id="home0"
                    role="tabpanel"
                    aria-labelledby="home-tab0">
                <div class="card">
                    <div class="card-body">
                        <div class="card-header bg-primary text-light style=width: 100%;">Cheese and Sauce</div>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-dark">Cheese</li>
                            <li class="list-group-item">How much cheese u want?</li>
                            <li class="list-group-item">
                                <select name="cheese-pref">
                                    <option value="normal">Light</option>
                                    <option value="heavy">Normal</option>
                                    <option value="heavy">Extra</option>
                                    <option value="heavy">Double</option>
                                </select></li>


                        </ul>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item list-group-item-dark">Sauce</li>
                                <li class="list-group-item">What type of sauce?</li>
                                <li class="list-group-item">
                                    <select name="cheese-pref">
                                        <option value="tomato">Tomato</option>
                                        <option value="marinara">Marinara</option>
                                        <option value="tomato">Alfredo</option>
                                        <option value="tomato">Barbecue Lol</option>
                                    </select></li>
                                <li class="list-group-item">How Much Sauce?</li>
                                <li class="list-group-item">
                                    <select name="cheese-pref">
                                        <option value="normal">Light</option>
                                        <option value="heavy">Normal</option>
                                        <option value="heavy">Extra</option>
                                    </select></li>

                            </ul>
                        </div>
                    </div>
                </div></div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"><div class="tab-content" id="myTabContent0">
                <div
                        class="tab-pane fade show active style=width: 100%;"
                        id="home0"
                        role="tabpanel"
                        aria-labelledby="home-tab0">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-header bg-primary text-light style=width: 100%;">Choose Toppings</div>
                            <ul class="list-group">
                                <li class="list-group-item list-group-item-dark">Choose Meats</li>
                                <li class="list-group-item">
                                    <input name="pizza_meat" value="true" type="checkbox" checked> Beef</li>
                                <li class="list-group-item">
                                    <input name="pizza_meat" value="true" type="checkbox" checked> Ham</li>
                                <li class="list-group-item">
                                    <input name="pizza_meat" value="true" type="checkbox" checked> Philly Steak</li>
                                <li class="list-group-item">
                                    <input name="pizza_meat" value="true" type="checkbox" checked> Bacon</li>




                            </ul>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <ul class="list-group">
                                    <li class="list-group-item list-group-item-dark">Choose Non-Meats</li>
                                    <li class="list-group-item">
                                        <input name="pizza_veggies" value="true" type="checkbox" checked>Green Peppers</li>
                                    <li class="list-group-item">
                                        <input name="pizza_veggies" value="true" type="checkbox" checked>Mushrooms</li>
                                    <li class="list-group-item">
                                        <input name="pizza_veggies" value="true" type="checkbox" checked>Onions</li>
                                    <li class="list-group-item">
                                        <input name="pizza_veggies" value="true" type="checkbox" checked>Mushrooms</li>
                                    <li class="list-group-item">
                                        <input name="pizza_veggies" value="true" type="checkbox" checked>Jalapeno Peppers</li>

                                </ul>
                            </div>
                        </div>
                    </div></div>
            </div>




</body>
</html>
