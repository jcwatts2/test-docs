FROM squidfunk/mkdocs-material as dev
RUN pip3 install mkdocs-build-plantuml-plugin
RUN pip3 install mkdocs-markdownextradata-plugin
#FROM minidocks/mkdocs as dev
#RUN pip3 install mkdocs-build-plantuml-plugin


#FROM minidocks/mkdocs as prod
#RUN pip3 install mkdocs-build-plantuml-plugin
