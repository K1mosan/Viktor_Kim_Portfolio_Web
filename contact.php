<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/grid.css" rel="stylesheet">
    <title>Viktor Kim Portfolio Project Page</title>
  </head>
  <body>

    <nav id="desktop-nav">
        <img src="images/my_logo_black.png" alt="">
      <div>
        <ul class="nav-links">
          <li><a href="#about">About</a></li>
          <li><a href="#skills">Skills</a></li>
          <li><a href="#demoreel">Video</a></li>
          <li><a href="#projects">Projects</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
    </nav>

    <nav id="hamburger-nav">
        <img src="images/my_logo_black.png" alt="">
      <div class="hamburger-menu">
        <div class="hamburger-icon" onclick="toggleMenu()">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="menu-links">
          <li><a href="#about" onclick="toggleMenu()">About</a></li>
          <li><a href="#skills" onclick="toggleMenu()">Skills</a></li>
          <li><a href="#demoreel" onclick="toggleMenu()">Video</a></li>
          <li><a href="#projects" onclick="toggleMenu()">Projects</a></li>
          <li><a href="#contact" onclick="toggleMenu()">Contact</a></li>
        </div>
      </div>
    </nav>

    <section id="contact">
      <h1 class="title">Contact me</h1>
      <form action="sendmail.php" method="post">
        <div class="skills-details-container">
          <div class="about-containers">
            <div class="details-container color-container">
              <div class="article-container">
                <div class="wrapper">
                  <div class="box">
                    <input type="text" name="firstname" id="fname" required>
                    <label for="fname">First name</label>
                  </div>
                  <div class="box">
                    <input type="text" name="lastname" id="lname" required>
                    <label for="lname">Last name</label>
                  </div>
                </div>
                <div class="wrapper">
                  <div class="box">
                    <input type="email" name="email" id="email" required>
                    <label for="email">Email</label>
                  </div>
                </div>
                <div class="wrapper">
                  <div class="box">
                    <textarea id="mes" required></textarea>
                    <label for="mes">Type your message</label>
                  </div>
                </div>
                <div>
                  <input type="submit" name="comments" value="send" class="btn btn_press">
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </section>

    <footer class="full-width-grid-con">
      <div class="col-start-1 col-end-4">
        <div class="footer_bottom">
          <p>Copyright &copy;2023 Designed by Viktor</p>
        </div>
      </div>
    </footer>

  </body>
</html>
