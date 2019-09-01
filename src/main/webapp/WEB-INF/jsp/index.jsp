<!DOCTYPE html>
<html>
<head>
    <title>E</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" type="text/css" href="./css/text-field-outlined.css">
    <link rel="stylesheet" type="text/css" href="./css/button-outlined.css">
    <link rel="stylesheet" type="text/css" href="./css/button-contained.css">
    <script type="text/javascript" src="./js/index.js"></script>
</head>
<body>
<div class="container">

    <div class="header">
        <div><img src="./img/logo_animated.svg" class="logo_animated"></div>
    </div>

    <!-- Регистрация -->
    <form hidden="true" id="sign-up-form">
        <label class="matter-textfield-outlined">
            <input type="text" name="username" id="usernameSU" placeholder=" " onchange="unlockButton()"/>
            <span>Username</span>
        </label>
        <label class="matter-textfield-outlined">
            <input type="email" name="email" id="emailSU" placeholder=" " onchange="unlockButton()"/>
            <span>Email</span>
        </label>
        <label class="matter-textfield-outlined">
            <input type="password" name="password" id="passwordSU" placeholder=" " onchange="unlockButton()"/>
            <span>Password</span>
        </label>
        <!-- <input type="submit" value="Create Account" id="sign-up-submit-button" class="buttonDisable" disabled> -->
    </form>
    <!-- Авторизация -->
    <form hidden="true" id="log-in-form">
        <label class="matter-textfield-outlined">
            <input type="text" name="username" id="usernameLI" placeholder=" " onchange="unlockButton()"/>
            <span>Username</span>
        </label>
        <label class="matter-textfield-outlined">
            <input type="password" name="password" id="passwordLI" placeholder=" " onchange="unlockButton()"/>
            <span>Password</span>
        </label>
        <!-- <input type="submit" value="Log In" id="log-in-submit-button" class="buttonDisable" onclick="validateUser()" disabled> -->
    </form>

    <hr />

    <div class="footer">
        <div><button id="sign-up-button" class="matter-button-outlined" onclick="validate(true, this)">Sign Up</button></div>
        <div><button id="log-in-button" class="matter-button-contained" onclick="validate(false, this)">Log In</button></div>
    </div>

    <!-- <input type="submit" value="Log In" id="log-in-submit-button" class="buttonDisable" onclick="validateUser()"> -->

</div>
</body>
</html>