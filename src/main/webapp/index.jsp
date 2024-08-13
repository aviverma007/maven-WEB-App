<html>
  <body>
    <h2>THIS IS A MAVEN PROJECt...!</h2>
  </body>
</html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>3D Webpage with Rotating Cube</title>
    <style>
      body {
        margin: 0;
        padding: 0;
        background: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }

      .container {
        perspective: 1000px;
      }

      .cube {
        position: relative;
        width: 200px;
        height: 200px;
        transform-style: preserve-3d;
        transform: rotateX(0deg) rotateY(0deg);
        transition: transform 1s;
      }

      .face {
        position: absolute;
        width: 200px;
        height: 200px;
        background: rgba(255, 255, 255, 0.9);
        border: 1px solid #ccc;
        text-align: center;
        line-height: 200px;
        font-size: 24px;
        color: #333;
      }

      .front {
        transform: translateZ(100px);
      }
      .back {
        transform: rotateY(180deg) translateZ(100px);
      }
      .left {
        transform: rotateY(-90deg) translateZ(100px);
      }
      .right {
        transform: rotateY(90deg) translateZ(100px);
      }
      .top {
        transform: rotateX(90deg) translateZ(100px);
      }
      .bottom {
        transform: rotateX(-90deg) translateZ(100px);
      }
    </style>
  </head>
  <body>
    <h2>Hello World!</h2>
    <div class="container">
      <div class="cube">
        <div class="face front">Front</div>
        <div class="face back">Back</div>
        <div class="face left">Left</div>
        <div class="face right">Right</div>
        <div class="face top">Top</div>
        <div class="face bottom">Bottom</div>
      </div>
    </div>
    <script>
      const cube = document.querySelector(".cube");
      let angleX = 0;
      let angleY = 0;

      function rotateCube() {
        angleX += 1;
        angleY += 1;
        cube.style.transform = `rotateX(${angleX}deg) rotateY(${angleY}deg)`;
        requestAnimationFrame(rotateCube);
      }

      rotateCube();
    </script>
  </body>
</html>
