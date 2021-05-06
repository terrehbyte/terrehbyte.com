---
layout: page
title: about me
tagline: A word about Terry Nguyen.
permalink: /about me/
navbarid: 0
author: terrehbyte
---

<div class="projects">
{% for project in site.data.projects %}
  <div style="overflow: hidden;">
    <h2>{{ project['projectname'] }}</h2>
    <!-- Showcase !-->
    <div class="project-showcase">
      <ul>
        <li>
          <div id="thumb">
            <img src="{{site.baseurl}}{{ project.imagepath }}" alt="{{project.gamename}}">
          </div>
        </li>
        <li>
          <div id="desc">
            <p>
              <em>{{ project.role }}</em>
              <br>
              <em>{{ project.date }}</em>
            </p>
            <p>
              {{ project.description }}
            </p>
          </div>
        </li>
      </ul>
    </div>
    <!-- Table of Links !-->
    <table class="project-linktable">
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
  <br>
{% endfor %}
</div>