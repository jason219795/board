<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
	
	text-shadow :1px 3px rgba(20%,20%,40%,0.5),2px 4px rgba(20%,20%,40%,0.5),3px 5px rgba(20%,20%,40%,0.5),4px 6px rgba(20%,20%,40%,0.5);
    padding: 1em;
	box-shadow:4px 4px rgba(20%,20%,40%,0.5);
    color: rgb(143, 189, 254);
	border: 2px solid gray;
    background-color: rgb(254, 249, 137);
    clear: left;
    
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
	
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
	background-color: rgb(173, 206, 253);
    padding: 1em;
    overflow: hidden;
}
</style>
</head>
<body>





<div class="container">

<header>
   <h1><b>心情留言板</b></h1>
   
</header>
  
<nav>
  <ul>
    <li><a href="#">登入</a></li>
    <li><a href="#">註冊</a></li>
    <li><a href="#">貼文</a></li>
	<br><br><br>
	<li><a href="back.php" target="iframe_a">出去</a> <---------------------</li>
  </ul>
</nav>

<article>
  <iframe height="400px" width="100%" src="out.php" name="iframe_a"></iframe>
  
</h1>
  
</article>

<footer>I3A11 I3A56</footer>

</div>
<audio src="bee.mp3" controls> </audio>
</body>
</html>
