Shiny.addCustomMessageHandler('updateCSS', function(css) {
  var styleElement = document.getElementById('dynamic-css');
  if (!styleElement) {
    styleElement = document.createElement('style');
    styleElement.type = 'text/css';
    styleElement.id = 'dynamic-css';
    document.head.appendChild(styleElement);
  }
  styleElement.innerHTML = css;
});
