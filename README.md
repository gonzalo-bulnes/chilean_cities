Comunas de Chile
================

A flat table of the Chilean _comunas_ as described by the [SUBDERE][subdere].

  [subdere]: http://www.subdere.gov.cl


Disclaimer
----------

This library is not developed, supported nor endorsed in any way by the Chilean [Subsecretaría de Desarrollo Regional y Administrativo (SUBDERE)][subdere], nor any related institution.

Data Sources
------------

This library is based on the publicly available information from the SUBDERE related to the [Codificación Única Territorial][source]. The sources quoted by [the document on which this library is based][1] are:

- Decreto Supremo No 1439, del Ministerio del Interior, publicado en el Diario Oficial del 8 de Mayo de 2000
- Decreto Supremo No 1352, del Ministerio del Interior, publicado en el Diario Oficial del 23 de Agosto de 2008
- Decreto Exento No 910, del Ministerio del Interior, publicado en el Diario Oficial del 14 de Junio de 2007
- Decreto Exento No 817, del Ministerio del Interior, publicado en el Diario Oficial del 26 de Marzo de 2010

  [source]: http://www.subdere.gov.cl/documentacion/regiones-provincias-y-comunas-de-chile
  [1]: http://www.subdere.gov.cl/sites/default/files/documentos/articles-73111_recurso_2.pdf


Usage
-----

Add the gem to your Gemfile:

    gem 'chilean_cities', git: 'git@github.com:gonzalo-bulnes/chilean_cities.git'

Generate the seed and run it:

    rails generate chilean_cities:install
    bundle exec rake db:seed
