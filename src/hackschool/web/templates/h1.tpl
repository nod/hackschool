% include page_hdr.tpl
% include page_sep.tpl


%if not ok:

<div class="instr">
<h4>agent note</h4>
<p>
Agent: Your mission here is to gain access to this system.  You will need to
guess the login username / password (the credentials) to achieve the mission.
</p>

<p>
There's no penalty for multiple guesses, you won't be locked out if you get the
wrong password.
</p>

<p>
Don't give up!  Keep trying quite a few things.  Every so often, if you've tried
enough times, maybe a hint will appear.
</p>
</div>

<div>
<h1 > RESTRICTED AREA </h1>
</div>

<p class="bigger"> This area is for authorized personnel only. </p>
<p class="bigger"> All intruders will be punished. </p>

%if tries > 0:
<h3 class="warn"> INVALID CREDENTIALS </h3>
%end

<!-- DeepSleep username:evil -->

<form method="GET" action="/h1" >
<input type="hidden" name="tries" value="{{ tries }}" />
  <div class="row">
    <div class="one-half column">
    <label for="loginInput">user name</label>
    <input class="u-full-width" name="name" placeholder="username" id="loginInput"/>
    </div>

    <div class="one-half column">
    <label for="passInput">password</label>
    <input class="u-full-width" name="passwd" placeholder="password" id="passInput"/>
    </div>

  </div>
  <input class="button-primary" type="submit" value="login">
</form>

%else:

<h1> ACCESS GRANTED </h1>


<div class="success">
<p>
If you hadn't already found it, take a moment and right-click on this page and
look for something that says "View Page Source" (or something similar).
</p>

<p>
A message has been left there for you by a friend.
</p>

<a href="/h2">continue to hack-2</a>
</div>

%end


% include page_ftr.tpl
