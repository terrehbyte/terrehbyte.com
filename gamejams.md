---
layout: projects
title: game jams
permalink: /game jams/
tagline: Game jams that I've attended over the years.
navbarid: 2
author: terrehbyte
test: jamname
---

<div class="projects">
{% for jam in site.data.gamejams %}
<div style="overflow: hidden;">
  <div style="overflow: hidden;">
    <h3>{{ jam['jamname'] }}</h3>
    <img src="{{site.baseurl}}{{ jam.imagepath }}" alt="{{jam.gamename}}">

    <p>
      <em>Game: {{ jam.gamename }}</em>
      <br>
      <em>Theme: {{ jam.jamtheme }}</em>
    </p>
    
    <br>
    
    <p>
      {{ jam.description }}
    </p>

    <br>
  </div>
  <table>
    <tr>
      {% for link in jam.links %}
      <th>{{ link['header'] }}</th>
      {% endfor %}
    </tr>
    <tr>
      {% for link in jam.links %}
      <td><a href="{{ link['data'] }}">{{ link['display'] }}</a></td>
      {% endfor %}
    </tr>
  </table>
</div>
{% endfor %}
</div>