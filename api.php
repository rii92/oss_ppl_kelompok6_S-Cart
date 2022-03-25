<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "s-cart";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// True because $a is set
if (isset($_POST['first_name'])) {
    $first_name = $_POST['first_name'];
} else {
    $first_name = " ";
}

if (isset($_POST['last_name'])) {
    $last_name = $_POST['last_name'];
} else {
    $last_name = " ";
}

if (isset($_POST['first_name_kana'])) {
    $first_name_kana = $_POST['first_name_kana'];
} else {
    $first_name_kana = " ";
}

if (isset($_POST['last_name_kana'])) {
    $last_name_kana = $_POST['last_name_kana'];
} else {
    $last_name_kana = " ";
}

if (isset($_POST['email'])) {
    $email = $_POST['email'];
} else {
    $email = " ";
}

if (isset($_POST['job'])) {
    $job = $_POST['job'];
} else {
    $job = " ";
}

if (isset($_POST['phone'])) {
    $phone = $_POST['phone'];
} else {
    $phone = " ";
}

if (isset($_POST['address1'])) {
    $address1 = $_POST['address1'];
} else {
    $address1 = " ";
}

if (isset($_POST['address2'])) {
    $address1 = $_POST['address1'];
} else {
    $address1 = " ";
}

if (isset($_POST['address3'])) {
    $address1 = $_POST['address1'];
} else {
    $address1 = " ";
}

if (isset($_POST['company'])) {
    $company = $_POST['company'];
} else {
    $company = " ";
}

if (isset($_POST['country'])) {
    $country = $_POST['country'];
} else {
    $country = " ";
}

if (isset($_POST['sex'])) {
    $sex = $_POST['sex'];
} else {
    $sex = " ";
}

if (isset($_POST['birthday'])) {
    $birthday = $_POST['birthday'];
} else {
    $birthday = " ";
}

if (isset($_POST['group'])) {
    $group = $_POST['group'];
} else {
    $group = " ";
}

if (isset($_POST['password'])) {
    $password = $_POST['password'];
} else {
    $password = " ";
}

// $sql = "INSERT INTO 
// `sc_shop_customer` (`id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `address3`, `company`, `country`, `phone`, `store_id`, `remember_token`, `status`, `group`, `email_verified_at`, `created_at`, `updated_at`, `provider`, `provider_id`, `job`) 
// VALUES ('', '.$first_name.', '.$last_name.', '.$first_name_kana.', '.$last_name_kana.', '.$email.', '.$sex.', '.$birthday.', '.$password.', '.$address_id.', '.$address1.', '.$address2.', '.$address3.', '.$company.', '.$country.', '.$phone.', NULL, '1', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, '');";
