<script src="https://unpkg.com/mermaid@8.0.0-rc.8/dist/mermaid.min.js"></script>

<div id="app"></div>
<script>
var mermaidAPI = mermaid.mermaidAPI;

mermaidAPI.initialize({
  startOnLoad:false
});

var element = document.getElementById("app");
var insertSvg = function(svgCode, bindFunctions) {
  element.innerHTML = svgCode;
};
var graphDefinition = `graph LR; Systemstart-->SomeIcon\nA-->B(<img src='https://iconscout.com/ms-icon-310x310.png' width='40' height='40' />)\nB-->R(<img src='https://github.com/jaynair/Mermaid/raw/master/lamp_off.png' width='40' height='40' />)`;
var graph = mermaidAPI.render("mermaid", graphDefinition, insertSvg);
</script>
