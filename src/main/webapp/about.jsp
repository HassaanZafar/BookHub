<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
<meta charset="UTF-8">
<title>About Us</title>
<%@include file="all_component/allCss.jsp"%>

<style>
    
    body {
        background-image: url("img/book.jpg");
        background-size: cover;
        background-position: center;
    }

 .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: rgba(242, 242, 242, 0.5);
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h1 {
        margin-top: 10px;
        text-align: center;
        margin-bottom: 20px;
        font-family: 'Pacifico';
        font-size: 40px;
    }

    p {
        line-height: 1.5;
        margin-bottom: 15px;
        font-size: 18px;
        color: white;
    }
   .monogram-images {
        display: flex;
        justify-content: center;
        margin-top: 30px;
    }

    .monogram-images img {
        width: 160px;
        height: 160px;
        margin: 0 50px;
        border-radius: 50%;
        object-fit: cover;
        cursor: pointer;
    }

    .monogram-images figure {
        text-align: center;
    }

    .monogram-images figcaption {
        margin-top: 10px;
        font-family: 'Sofia';
        display: none;
        text-align:center;
        font-size:20px;
    }
    
    
</style>

<script>
    function showCaption(captionId) {
        var captions = document.getElementsByClassName('caption');
        for (var i = 0; i < captions.length; i++) {
            captions[i].style.display = 'none';
        }
        var caption = document.getElementById(captionId);
        caption.style.display = 'block';
    }
</script>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>

<div class="container mt-4">
    <h1>About Us</h1>
   <p>Welcome to HJ Bookhub, your ultimate destination for a wide range of ebooks. We are passionate about providing our customers with access to a vast collection books covering various genres and topics.</p>
        <p>With our user-friendly platform, you can browse through our extensive catalog, discover new titles, and instantly buy books. We offer a diverse selection of fiction, non-fiction, self-help, educational, and many other genres to cater to every reader's preferences.</p>
        <p>Customer satisfaction is our top priority.If you have any questions, feedback, or need assistance, our friendly customer support team is here to help.</p>
        <p>Thank you for choosing HJ Bookhub as your companion. Start exploring our vast library today and embark on a journey of knowledge, imagination, and inspiration.</p>
    
    <div class="monogram-images">
        <figure>
            <a href="javascript:void(0);" onclick="showCaption('caption1');">
                <img src="img/j.jpeg" alt="Image 1">
            </a>
            <figcaption id="caption1" class="caption">Javeria Khalid<br> CEO </figcaption>
        </figure>

        <figure>
            <a href="javascript:void(0);" onclick="showCaption('caption2');">
                <img src="img/h.jpeg" alt="Image 2">
            </a>
            <figcaption id="caption2" class="caption">Muhammad Hassaan Zafar<br> Founder </figcaption>
        </figure>
    </div>
</div>

</body>
</html>
