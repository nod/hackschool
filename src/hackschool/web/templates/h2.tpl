% include page_hdr.tpl

<!--
 _
| |__  ___
| '_ \/ __|
| | | \__ \
|_| |_|___/


Hello Again AgentH,

Glad to see you're already looking for clues early on.

This one is a bit trickier.  The clues are there, just not as obvious.

An html form is the part of the document that can collect input.

it looks something like:

<form>
STUFF
</form>

Look at the html variables defined below and see if anything there sticks out.

Stay Vigilant,
DeepSleep
-->

<div>
<h1 class="warn"> ENHANCED RESTRICTED AREA </h1>
</div>
<p class="bigger"> Identity Verification Required </p>

%if not ok:

%if tries > 0:
<h2> INVALID VERIFICATION </h2>
%end

<form method="GET" action="/h2" >
  <div class="row">
    <div class="six columns">

    <!-- DeepSleep -->
    <input type="hidden" name="expectedvalue" value="iamevil"/>

    <div>
    <label for="passInput">Verification Code</label>
    <input class="u-full-width" name="verify" placeholder="code" id="passInput">
    </div>

  </div>
  </div>
  <input class="button-primary" type="submit" value="verify">
  <input type="hidden" name="tries" value="{{ tries }}" />
</form>

%else:

<h2> AUTHORIZATION APPROVED </h2>

<a href="/h3">continue to hack-3</a>

%end

% include page_ftr.tpl
