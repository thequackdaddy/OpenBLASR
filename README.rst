|Appveyor Build Status|

Overview
========

This project is used to compile openblas_ on Windows so that it can be used
as a faster BLAS alternative to the default BLAS provided with R_ on Windows.

This is used in the companion r-openblas_ tools--an openblas optimized 64-bit R
for Windows.

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

GCC can be configured either through a ``Makefile`` or using environment
variables. In this example, I'll use environment variables to avoid having
to copy files around. We can configured the environment variables using
an ``appveyor.yml`` file.

GNU ``make`` needs to be run from within a ``bash`` shell environment. However,
it is **very** important to use the ``gcc`` and ``gfortran`` that are shipped
with Rtools. Typically in Windows GUI this could be accomplished by opening an
``MSYS2`` shell, running
``export PATH=\C\Rtools\bin:\C\Rtools\mingw_64\bin:$PATH``, then ``make all``.
This project accomplish the same thing using a ``bash`` script.

Once this is completed, the compiled library is avaiable as a downloadable
Artifact from Appveyor. Go to the project's Appveyor site:

https://ci.appveyor.com/project/thequackdaddy/openblasr

Currently, I we are only building drivers for Intel's Haswell, Sandybridge, and
Nehalem architectures. Others could be easily added by just adding to the
appveyor.yml file.

Pick the most recent build that succeeded and select the Artifact tab to
download it.

.. _openblas: http://www.openblas.net/
.. _r-openblas: https://www.github.com/thequackdaddy/r-openblas
.. _R: https://www.r-project.org/
.. _Rtools: https://cran.r-project.org/bin/windows/Rtools/
.. _MSYS2: http://www.msys2.org/
.. _Appveyor: http://appveyor.com/
.. _`blog post`: https://www.avrahamadler.com/r-tips/build-openblas-for-windows-r64/
.. |Appveyor Build Status| image:: https://ci.appveyor.com/api/projects/status/9xm30c47u8hp894h/branch/master?svg=true
   :target: https://ci.appveyor.com/project/thequackdaddy/openblasr/branch/master
