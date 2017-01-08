---
layout: projects
title: projects
tagline: Projects from a game programmer.
permalink: /projects/
navbarid: 1
author: terrehbyte
---

<div class="projects">
{% for project in site.data.projects %}
<div style="overflow: hidden;">
  <div style="overflow: hidden;">
    <h3>{{ project['projectname'] }}</h3>
    <img src="{{site.baseurl}}{{ project.imagepath }}" alt="{{project.gamename}}">

    <p>
      <em>{{ project.role }}</em>
      <br>
      <em>{{ project.date }}</em>
    </p>
    
    <br>
    
    <p>
      {{ project.description }}
    </p>

    <br>
  </div>
  <table>
    <tr>
      {% for link in project.links %}
      <th>{{ link['header'] }}</th>
      {% endfor %}
    </tr>
    <tr>
      {% for link in project.links %}
      <td><a href="{{ link['data'] }}">{{ link['display'] }}</a></td>
      {% endfor %}
    </tr>
  </table>
</div>
{% endfor %}
</div>