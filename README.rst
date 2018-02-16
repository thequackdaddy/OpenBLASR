|Appveyor Build Status|

Overview
========

This project is used to compile openblas_ on Windows so that it can be used
as a faster BLAS alternative to the default BLAS provided with R_ on windows.

Acknowledgement
===============

First, I am grateful to Avraham Adler for his excellent `blog post`_ covering
this topic. If you want to read his script--which this package mostly follows--
please do so.

Procedure
=========

Prerequisites:

The key difficultly in getting this to work is R is built using the GNU tools
which have sometimes spotty and confusing windows support. However, the key
elemenets are that you need to download the following:

- Rtools_ Used for the actual ``gcc`` and ``gfortran`` compilers.
- MSYS2_ The compilation environment. MSYS2 ``bash`` must be used.
- Appveyor_ Is an online continuous integration system that essentially runs
Windows buils.

Strategy:

First, a ``Makefile.rule`` is created with some rather generic settings. I
personally am runnign this on an Intel Core i7 processor, so I used the
``HASWELL`` target. If you are using a different processor, another target
is necessary.

GNU ``make`` needs to be run from within a ``bash`` shell environment. However,
it is **very** important to use the ``gcc`` and ``gfortran`` that are shipped
with Rtools. Typically in Windows GUI this could be accomplished by opening an
``MSYS2`` shell, running
``export PATH=\C\Rtools\bin:\C\Rtools\mingw_64\bin:$PATH``, then ``make all``.
This project accomplish the same thing using a ``bash`` script instead.

Once this is completed, the compiled library is avaiable as a downloadable
Artifact from Appveyor. Go to the project's Appveyor site:

https://ci.appveyor.com/project/thequackdaddy/openblasr

Pick the most recent build that succeeded and select the Artifact tab to
download it.

.. _openblas: http://www.openblas.net/
.. _R: https://www.r-project.org/
.. _Rtools: https://cran.r-project.org/bin/windows/Rtools/
.. _MSYS2: http://www.msys2.org/
.. _Appveyor: http://appveyor.com/
.. _`blog post`: https://www.avrahamadler.com/r-tips/build-openblas-for-windows-r64/
.. |Appveyor Build Status| image:: https://ci.appveyor.com/api/projects/status/9xm30c47u8hp894h?svg=true
   :target: https://ci.appveyor.com/project/thequackdaddy/openblasr/branch/master
