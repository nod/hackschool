% include page_hdr.tpl

<!--
 _
| |__  ___
| '_ \/ __|
| | | \__ \
|_| |_|___/


Greetings AgentH.

Call me DeepSleep.  I'm a double agent, deep undercover.

I've hidden certain clues in the actual source code of the pages.

I can't be too obvious or The Them will catch me.

hack-1 clue: You are looking at the HTML source of the page.  Look around here,
I have hidden the clue in the source of this page.  Look for DeepSleep down in
the code, I know you can find it.

One more clue - once you find the username, the password is the same thing.

Good luck,
DeepSleep
-->



<div>
<h1 class="warn"> RESTRICTED AREA </h1>
</div>


%if not ok:

<p class="bigger"> This area is for authorized personnel only. </p>
<p class="bigger"> All intruders will be punished. </p>

%if tries > 0:
<h2> INVALID USERNAME AND/OR PASSWORD </h2>
%end


<form method="GET" action="/h1" >
<input type="hidden" name="tries" value="{{ tries }}" />
  <div class="row">
    <div class="six columns">

    <div>
    <label for="loginInput">user name</label>
    <select class="u-full-width" id="loginInput" name="name">
        <option value="letmein">letmein</option>
        <option value="coolguy123">coolguy123</option>
        <option value="george">george</option>
        <option value="supervillian">supervillian</option>
        <option value="qwerty">qwerty</option>
        <option value="evil" DeepSleep>evil</option>
        <option value="hello">hello</option>
        <option value="iamtrapped">iamtrapped</option>
        <option value="inhere">inhere</option>
        <option value="justkidding">justkidding</option>
    </select>
    </div>

    <div>
    <label for="passInput">password</label>
    <input class="u-full-width" name="passwd" placeholder="password" id="passInput">

    </div>

  </div>
  </div>
  <input class="button-primary" type="submit" value="login">
</form>

%else:

<h2> You did it! </h2>

<p>
If you didn't already find it, take a moment and right-click on this page and
look for something that says "View Source".
</p>

<p>
A message has been left there for you by a friend.  The message may have updated
since you gained authorization so be sure to look at it before and auth was
granted.
</p>

<!--
 _
| |__  ___
| '_ \/ __|
| | | \__ \
|_| |_|___/


Congrats AgentH.

I knew you could do it.  You're going to do great.

Remember, the source code is what makes the pages work.

Don't forget there's always something deeper than what you see.

DeepSleep out.

-->

<a href="/h2">move on to hack-2</a>

%end


% include page_ftr.tpl
