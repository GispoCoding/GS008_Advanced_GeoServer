# Advanced GeoServer

This is the source code repository for the Advanced GeoServer course.

## Editing content

The course materials are written using R Markdown and rendered to HTML using [Bookdown](https://bookdown.org).
Editing the .Rmd files triggers a GitHub workflow that renders the materials to the [docs/](docs) directory.
See the [Bookdown documentation](https://bookdown.org) for instructions on Rmd syntax.

You can also render locally with Docker using the [render.sh](render.sh) ([render.ps1](render.ps1) on Windows) script.
For Windows, you may need to enable script support first.
Open Powershell as an administrator and run the command `Set-ExecutionPolicy RemoteSigned`.

## Rendering

The [index.Rmd](src/index.Rmd) is a special file that always gets rendered first
Other Rmd files get rendered in alphabetic order to separate pages.
Use the YAML header section (separated by `---`) of index.Rmd to define a author, title, and abstract for the materials.

The HTML is rendered using custom HTML and CSS templates defined in the index.Rmd YAML header.
By default, these are [src/custom.html](src/custom.html) and [src/custom.css](src/custom.css).
Edit the template files to change the layout and appearance of the output.

Always preview the affect of changes to template files before committing changes.
This can be done by rendering the output HTML locally using [render.sh](render.sh).
After rendering, navigate to the out directory, start a http server (`python -m http.server`), and open [http://localhost:8000](http://localhost:8000).
