<script type="text/javascript">
$(document).ready(function(){
  $("code").map(function(){
    match = /^\$(.*)\$$/.exec($(this).html());
    if (match){
      //$(this).after("<span class=mathjax_inline>" + match + "</span>");
      //$(this).hide();
      $(this).replaceWith("<span class=hpl_mathjax_inline>" + $(this).html() + "</span>");
      MathJax.Hub.Queue(["Typeset",MathJax.Hub,$(this).get(0)]);
    }
  });
});
</script>
{% if theme.mathjax.enable %}
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      tex2jax: {
        inlineMath: [ ['$','$'], ["\\(","\\)"]  ],
        processEscapes: true,
        skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code']
      }
    });
  </script>

  <script type="text/x-mathjax-config">
    MathJax.Hub.Queue(function() {
      var all = MathJax.Hub.getAllJax(), i;
      for (i=0; i < all.length; i += 1) {
        all[i].SourceElement().parentNode.className += ' has-jax';
      }
    });
  </script>
  <script type="text/javascript" src="{{ theme.mathjax.cdn }}"></script>
{% endif %}
