% if dsmsg:
<!--


 _                _             _                 _
| |__   __ _  ___| | _____  ___| |__   ___   ___ | |
| '_ \ / _` |/ __| |/ / __|/ __| '_ \ / _ \ / _ \| |
| | | | (_| | (__|   <\__ \ (__| | | | (_) | (_) | |
|_| |_|\__,_|\___|_|\_\___/\___|_| |_|\___/ \___/|_|


{{! dsmsg }}
-->
% end
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
    padding: 4px;
    background: #fff0f0;
    border: 1px solid #b00020;
    text-align: center;
}

.left-border {
    border-left: 1px solid #ccc;
    padding-left: 12px;
    }

.bigger {
    font-size: 120%;
}

.hint {
	color: #ffffff;
    background: #305060;
    padding: 10px;
    margin: 4%;
    margin-top: 0%;
}

.success {
	color: #006020;
	background: #f0f0f0;
	padding: 18px;
	border-radius: 12px;
	margin-bottom: 25px;
}

.instr {
	color: #002060;
	background: #f0f0f0;
	padding: 18px;
	border-radius: 12px;
	margin-bottom: 25px;
}

.instr p {
	margin-bottom: 5px;
}

</style>

</head>
<body>

  <div class="container">
    <div class="row" style="margin-top: 5%">
      <div class="two columns" >
    <img src="/static/hs.png" class="u-max-full-width"/>
% if sect:
<div>
<a href="/"><b>hackschool</b></a>
<div>
loc: <b>{{sect}}</b>
</div>
<div>
<a href="/?logout=1">logout</a>
</div>
</div>
% end

		</div>
		<div class="ten columns left-border" >


