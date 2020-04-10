<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <title>{{title}}</title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css">

  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="apple-touch-icon" sizes="180x180" href="/static/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/static/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/static/favicon-16x16.png">


<style >
.warn {
    color: #b00020;
    font-weight: bold;
}

.left-border {
    border-left: 1px solid #ccc;
    padding-left: 12px;
    }

.bigger {
    font-size: 120%;
}

.hint {
    color: #c0c0c0;
}

</style>

</head>
<body>

  <div class="container">
    <div class="row">
      <div class="three columns" style="margin-top: 15%">
    <img src="/static/hs.png" class="u-max-full-width"/>
% if sect:
<a href="/">
<b>hackschool</b>
</a>
<div>
loc: <b>{{sect}}</b>
</div>
% end

% if hints:
% for h in hints:
<p class="hint"><b>hint</b> {{ h }} </p>
% end
% end


      </div>
      <div class="one column gray"> &nbsp;
      </div>
      <div class="eight columns left-border" style="margin-top: 15%">



