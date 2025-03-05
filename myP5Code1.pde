setup = function() {
    size(600, 400);
};

//Background Images
var openingImage = loadImage("https://www.shutterstock.com/image-vector/vector-illustration-background-forest-scenery-600nw-1807427365.jpg");

var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

var caveImage = loadImage("https://cdn.glitch.global/2e530cf9-8faf-4f27-a5a6-27d249a5ebc7/istockphoto-690817022-612x612.jpg?v=1741018559980");

var waterfallImage = loadImage("https://cdn.glitch.global/2e530cf9-8faf-4f27-a5a6-27d249a5ebc7/depositphotos_563993118-stock-illustration-cave-landscape-cartoon-style-illustration.jpg?v=1741019091874");

var groveImage = loadImage("https://cdn.glitch.global/2e530cf9-8faf-4f27-a5a6-27d249a5ebc7/sabdb.jpg?v=1741191492540");

var mountainImage = loadImage("https://cdn.glitch.global/2e530cf9-8faf-4f27-a5a6-27d249a5ebc7/Draw-Mountains.jpg?v=1741192510916");

var pondImage = loadImage("https://cdn.glitch.global/2e530cf9-8faf-4f27-a5a6-27d249a5ebc7/Screenshot%202025-03-05%20114747.png?v=1741193277828");

var randomColor = color(random(0,255), random(0,255), random(0,255))

//Variable Declarations
var sceneImage = openingImage;
var sceneText = "Searching for Foxes! Where do you want to go?  [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       randomColor = color(random(100,255), random(100,255), random(100,255));
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to restart]";
     } 
     
     if(key == 'w'){
       randomColor = color(random(100,255), random(100,255), random(100,255));
       sceneImage = waterfallImage;   
       sceneText = "Didn't find him :(  [Press s to restart]";
     } 
     
    if(key == 'c'){
       randomColor = color(random(100,255), random(100,255), random(100,255));
       sceneImage = caveImage;   
       textSize(5);
       sceneText = "You hear a fox yip! Where do you go next? [w for Waterfall and g for Grove]";
     } 
     
    if(key == 'g'){
       randomColor = color(random(100,255), random(100,255), random(100,255));
       sceneImage = groveImage;   
       textSize(5);
       sceneText = "The yipping is getting louder! One more turn! [p for Pond and m for Mountain]";
     } 
     
    if(key == 'm'){
    randomColor = color(random(100,255), random(100,255), random(100,255));
       sceneImage = mountainImage;   
       textSize(5);
       sceneText = "You took a wrong turn, no fox here... nice view though [press s to restart]";
     }  

    if(key == 'p'){
    randomColor = color(random(100,255), random(100,255), random(100,255));
       sceneImage = pondImage;   
       textSize(5);
       sceneText = "Omg you found the fox! Look at how happy he is... now steal him [press s to restart]";
     }  
     
     if(key == 's'){
      randomColor = color(random(100,255), random(100,255), random(100,255));
      sceneImage = openingImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(randomColor);
    textSize(15);
   
   text(sceneText, 10, 375);
};



