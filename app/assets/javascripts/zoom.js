function zoom(event){
  var zoomer = event.currentTarget;
  x = event.offsetX/zoomer.offsetWidth*100
  y = event.offsetY/zoomer.offsetHeight*100
  zoomer.style.setProperty('--bg-x', x + '%');
  zoomer.style.setProperty('--bg-y', y + '%');
}