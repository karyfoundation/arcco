local M = {}

M.header = [[<!DOCTYPE html>

<html>
<head>
  <title style="text-transform: uppercase">%title%</title>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" media="all" href="locco.css" />
  <script type="text/javascript" src="http://web.arendelle.org/developer/marker.js"></script>
</head>
<body>
  <div id="container">
    <div id="background"></div>
    %jump%
    <table cellpadding="0" cellspacing="0">
      <thead>
        <tr>
          <th class="docs"><br>
            <h1>%title%</h1>
          </th>
        </tr>
      </thead>
      <tbody>
]]

M.jump_start = [[
<div id="jump_to">
  Jump To &hellip;
  <div id="jump_wrapper">
  <div id="jump_page">
]]

M.jump = [[
  <a class="source" href="%jump_html%">%jump_arendelle%</a>
]]

M.jump_end = [[
    </div>
  </div>
</div>
]]

M.table_entry = [[
<tr id="section-%index%">
<td class="docs">
  <div class="pilwrap">
    <a class="pilcrow" href="#section-%index%">&#182;</a>
  </div>
  %docs_html%
</td>
<td class="code">
  %code_html%
</td>
</tr>]]

M.footer = [[</tbody>
    </table>
  </div>
  <script type="text/javascript">markerInitHighlightingOnLoad()</script>
</body>
</html>]]

M.css = [[/*--------------------- Layout and Typography ----------------------------*/
body {
  font-family: 'PT Sans', 'Palatino Linotype', 'Book Antiqua', Palatino, FreeSerif, serif;
  font-size: 15px;
  line-height: 22px;
  color: #252519;
  margin: 0; padding: 0;
}

a {
  color: #261a3b;
}

a:visited {
  color: #261a3b;
}

p {
  margin: 2px 20px 15px 0;
}

h1, h2, h3, h4, h5, h6 {
  margin: 0px 0 15px 0;
  text-transform: uppercase;
  font-family: 'DIN Condensed';
}

h1 {
  font-size: 3rem;
  margin-top: 40px;
}

#container {
  position: relative;
}

#background {
  position: fixed;
  top: 0; left: 525px; right: 0; bottom: 0;
  background: #f5f5ff;
  border-left: 1px solid #e5e5ee;
  z-index: -1;
}
#jump_to, #jump_page {
  background: white;
  -webkit-box-shadow: 0 0 25px #777; -moz-box-shadow: 0 0 25px #777;
  -webkit-border-bottom-left-radius: 5px; -moz-border-radius-bottomleft: 5px;
  font: 10px Arial;
  text-transform: uppercase;
  cursor: pointer;
  text-align: right;
}
#jump_to, #jump_wrapper {
  position: fixed;
  right: 0; top: 0;
  padding: 5px 10px;
}
  #jump_wrapper {
    padding: 0;
    display: none;
  }
    #jump_to:hover #jump_wrapper {
      display: block;
    }
    #jump_page {
      padding: 5px 0 3px;
      margin: 0 0 25px 25px;
    }
      #jump_page .source {
        display: block;
        padding: 5px 10px;
        text-decoration: none;
        border-top: 1px solid #eee;
      }
        #jump_page .source:hover {
          background: #f5f5ff;
        }
        #jump_page .source:first-child {
        }
table td {
  border: 0;
  outline: 0;
}
  td.docs, th.docs {
    max-width: 450px;
    min-width: 450px;
    min-height: 5px;
    padding: 10px 25px 1px 50px;
    overflow-x: hidden;
    vertical-align: top;
    text-align: left;
  }
    .docs pre {
      margin: 15px 0 15px;
      padding-left: 15px;
    }
    .docs p tt, .docs p code {
      background: #f8f8ff;
      border: 1px solid #dedede;
      font-size: 12px;
      padding: 0 0.2em;
    }
    .pilwrap {
      position: relative;
    }
      .pilcrow {
        font: 12px Arial;
        text-decoration: none;
        color: #454545;
        position: absolute;
        top: 3px; left: -20px;
        padding: 1px 2px;
        opacity: 0;
        -webkit-transition: opacity 0.2s linear;
      }
        td.docs:hover .pilcrow {
          opacity: 1;
        }
  td.code, th.code {
    padding: 14px 15px 16px 25px;
    width: 100%;
    vertical-align: top;
    background: #f5f5ff;
    border-left: 1px solid #e5e5ee;
  }
    pre, tt, code {
      font-size: 12px; line-height: 22px;
      font-family: Menlo, Monaco, Consolas, "Lucida Console", monospace;
      margin: 0; padding: 0;
    }
]]

return M
