---
layout: page
title: about me
tagline: A word about Terry Nguyen.
permalink: /about me/
navbarid: 0
author: terrehbyte
---

<div class="projects">
{% for project in site.data.gamejams %}
  <div style="overflow: hidden;">
    <h2>{{ project['jamname'] }}</h2>
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
              <em>{{ project.gamename }}</em>
              <br>
              <em>{{ project.jamtheme }}</em>
            </p>
            <p>
              <br>
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