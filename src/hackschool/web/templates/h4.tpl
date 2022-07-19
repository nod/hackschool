% include page_hdr.tpl

<div class="instr">
<h4>agent note</h4>
<p>
AgentH: You must submit an override sequence (letters in the proper order).
</p>
<p>
Don't worry, you have unlimited tries to get this right.
</p>

<p>
Try guessing some sequences and submitting to see what happens.
</p>

</div>

% include page_sep.tpl

%if not ok:

<h1 > Intruder Detected </h1>

%if tries > 0:
<h2 class="warn"> INVALID SEQUENCE </h2>
%end

<div class="bigger"> Alarm  Override Sequence Required </div>

<form method="GET" action="/h3" >
<input type="hidden" name="tries" value="{{ tries }}" />
  <div class="row">

    <div class="two columns">
    <select class="u-full-width" id="loginInput" name="s1">
        <option value="26">Z</option>
        <option value="3">C</option>
        <option value="9">I</option>
    </select>
    </div>

    <div class="two columns">
    <select class="u-full-width" id="loginInput" name="s2">
        <option value="1">A</option>
        <option value="14">N</option>
        <option value="6">F</option>
    </select>
    </div>

    <div class="two columns">
    <select class="u-full-width" id="loginInput" name="s3">
        <option value="19">S</option>
        <option value="17">Q</option>
        <option value="4">D</option>
    </select>
    </div>

    <div class="two columns">
    <select class="u-full-width" id="loginInput" name="s4">
        <option value="11">K</option>
        <option value="13">M</option>
        <option value="1">A</option>
    </select>
    </div>

  </div>
  <input class="button-primary" type="submit" value="override">
</form>

%else:

<h2> Success! </h2>

<p>
So maybe you noticed that even if the displayed number says one thing, the
actual submitted value is something else.  This is a form of obfuscation.
</p>

<a href="/h4">move on to hack-4</a>

%end


% include page_ftr.tpl
