# Visual Studio Template for Manifold GIS Custom Add-In in C#
===============================================

### What's it for?
This template gets you started with Manifold GIS Add-Ins. It helps you to avoid many common mistakes along the way.


## Quick Usage
--------------
1. **Download** zip from [here](https://github.com/rkolka/Template-for-Manifold-GIS-Custom-Add-In-in-CSharp/archive/master.zip) and put it into your Visual Studio Project Templates directory e.g. %userprofile%\Documents\Visual Studio 2013\Templates\ProjectTemplates

2. **Create a new project** in Visual Studio with this new template that should appear under Visual C#. Pick a name for your add-in and click OK. 

3. After successful project creation you can **build the project** without modifying anything.

4. Browse to <projectdirectory>\bin\Debug directory. **Run install_*projectname*.bat**. It copies required files into Manifold's Config directory. NB! You have to have permission to modify Config directory. 

5. **Start a fresh** Manifold. Go to Tools->Add-Ins. Your add-in shuld be listed there. Click on the name.

6. A new pane with silly text and your chosen name should appear.

7. If problem occurs let me know

Read [the Fine Manual](http://georeference.org/doc/add_ins.htm) for more information!

## Custom Usage
---------------
Two files, those starting with triple underscore, are not part of template per se but useful if you want to modify this template. Download or clone these source files and use ___filestozip.txt and ___Install_This_Template.bat to ease your efforts.
The latter assumes you have 7-Zip installed.
