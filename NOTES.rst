.. toctree::
   :maxdepth: 2
   
Configuration and usage notes on the installed plugins.

NERDTREE
========
Side buffer for exploring directories.

To launch it:

.. code::

  :NERDTree

or (if you want the same structure as a previous one):

.. code::

  :NERDTreeMirror

Usage
+++++

Main functions
--------------

* ``m``: menu, permette di creare nuove cartelle o spostare file

----

* ``o``: open file
* ``s``: open with vsplit
* ``i``: open with split
* ``go/s/i``: go open (open file but stay on nerdtree)
* ``t``: open in new tab
* ``T``: open in new tab but keep focus on current

----

* ``C``: change the rootdir to current
* ``p``: go to parent directory
* ``x``: close parent directory
* ``O``: open children directory recursively

----

* ``A``: temporaly maximize the NERDTree window
* ``R``: refresh the tree
* ``q``: close NERTree window
* ``I``: show hidden files
* ``F``: show files

Bookmarks
+++++++++

* ``B``: visualizza/nascondi bookmarks
* ``:Bookmark myname``: crea un bookmark di nome myname del nodo dove ho il cursore
* ``D``  => delete current bookmark

Other options
+++++++++++++
To hide some files:

.. code::

  let NERDTreeIgnore = ['\.pyc$']


Nerdtree-git-plugin
+++++++++++++++++++

Show the file git state inside of Nerdtree.

GIT
===
Main plugins: ``git-vim`` e ``gitv``.

.. code::

 :Gstatus => show "git status"
 :Gitv    => clone of gitk

Programming
===========

Syntastic
+++++++++
Autocheck of errors when saving a file.

``:SyntasticToggleMode`` you can toggle Syntastic into passive mode, which will disable auto-checking. You can then check a file by running ``:SyntasticCheck`` instead.

For more infos:
``:help syntastic-commands``

Taglist
+++++++
``Requirements``: ctags install on system.

Usage:

* ``:TlistOpen`` for opening tag window, then


 - ``scape``: get infos about function
 - ``enter``: go to function
 - ``ctl+t``: go back
 - ``ctl-]``: go to function
 - ``x``: zoom-in and zoom-out
 - ``+`` or ``-``: open/close a fold (``*`` or ``=`` for opening/closing all).

For more options see `the manual <http://vim-taglist.sourceforge.net/manual.html>`_.

*installation notes*: installed from zip, no tracking on repository. 

Tagbar
++++++
Source: `Github <https://github.com/majutsushi/tagbar>`_.

Similar to Taglist, but more visual. Usufull for help browsing code.

Now opening with ``F8``.

GRAPHICS
========
If using solarize theme on terminal like konsole:
`konsole solarized colors <https://github.com/phiggins/konsole-colors-solarized>`_
(as described also `here <http://superuser.com/questions/423709/vim-how-to-configure-solarized-colorscheme-in-konsole>`_)
