{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}

{% block content %}
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
        {% for category in post.categories %}
            {% if category.name=='机器学习' %}
					{% if tag.name!='类页' %}
						{{ post_template.render(post, true) }}
					{% endif %}
            {% elseif category.name=='关于' %}
					{% if tag.name!='类页' %}
						{{ post_template.render(post, true) }}
					{% endif %}
            {% endif %}
        {% endfor %}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
