import 'dart:html';

import 'dart:async';

void main() {
  var time = new DivElement();
  document.body.children.add(time);

  var timer = new Timer.periodic(const Duration(seconds: 1), (t)=>update_time(time));
}

void update_time(HtmlElement e) {
  var d = new DateTime.now();
  num r = d.hour, g = d.minute, b = d.second;
  var rs = r.toString().padLeft(2, '0');
  var gs = g.toString().padLeft(2, '0');
  var bs = b.toString().padLeft(2, '0');
  e.text = "#$rs$gs$bs";
  document.body.style.background = '#$rs$gs$bs';
}
