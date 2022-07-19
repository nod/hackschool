% include page_hdr.tpl

%include page_sep.tpl


%if not ok:

<div class="instr">
<h4>agent note</h4>
<p>
This will require you to verify your identity.  The trick is, you're only going
to be verifying who they think you are.
</p>
<p>
See if you can find a way to manipulate the system into accepting you.
</p>
</div>

<div>
<h1 > ENHANCED RESTRICTED AREA </h1>
</div>
<p class="bigger"> Identity Verification Required </p>

%if tries > 0:
<h4 class="warn"> INVALID VERIFICATION </h4>
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

<div class="success">
Yes! Good job AgentH.  Keep going!

<a href="/h3">continue to hack-3</a>
</div>

%end

% include page_ftr.tpl
