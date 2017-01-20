<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>{{ browser_title is not empty ? browser_title : 'phpMyAnsibleAdmin' }}</title>
    <!-- Bootstrap CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- Datatables Bootstrap CSS -->
    <link href="//cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <!-- Start Bootstrap Template -- small business -->
    <link href="/css/small-business.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap select plugin (https://silviomoreto.github.io/bootstrap-select/) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css" rel="stylesheet" >

    <!-- Custom CSS.  Keep this last -->
    <link href="/css/custom.css" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--
                <a class="navbar-brand" href="#">
                    <img src="http://placehold.it/150x50&text=Logo" alt="">
                </a>
                -->
                <h1 class="logotext">
                    <a href="/">phpMyAnsibleAdmin</a>
                </h1>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                {% if is_logged_in %}
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/servers">Servers</a>
                    </li>
                    <li>
                        <a href="/groups">Groups</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/admin/users">Manage Users</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            Hello&nbsp;{{ header_data.first_name }}&nbsp;
                            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="/user/profile">
                                <i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                {% else %}
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/">Login</a>
                    </li>
                </ul>
                {% endif %}
            </div>
        </div>
    </nav>
    <div class="container">
        {% block content %}{% endblock %}
        <footer>
            <div class="row">
                <div class="col-md-12 text-right">
                    <p>Powered by <a href="https://github.com/kissit/phpMyAnsibleAdmin">phpMyAnsibleInventory</a></p>
                </div>
            </div>
        </footer>
    </div>
</body>
<!-- jQuery -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Datatables JS -->
<script src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="//cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
<!-- Selectpicker plugin (https://silviomoreto.github.io/bootstrap-select/) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.min.js"></script>
<!-- Bootstrap growl -->
<script src="/js/jquery.bootstrap-growl.min.js"></script>
<!-- Jqueryvalidation plugin -->
<script src="/jquery-validation/jquery.validate.min.js"></script>
<!-- Custom JS -->
<script src="/js/jquery.validate.defaults.js"></script>
<script src="/js/utility.js"></script>

<!-- Used for passing a user message from the server -->
<input type="hidden" id="flash_message" value="{{ flash_message }}">
<input type="hidden" id="flash_status" value="{{ flash_status }}">

{% block pagejs %}{% endblock %}
</html>
