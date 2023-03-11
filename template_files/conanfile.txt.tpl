[requires]
{% for pkg in dependencies -%}
rapidxml/1.13
{% endfor %}

[generators]
CMakeDeps
CMakeToolchain
