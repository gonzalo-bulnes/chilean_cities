Comunas de Chile
================

[![Build Status](https://api.travis-ci.org/gonzalo-bulnes/chilean_cities.png)](https://travis-ci.org/gonzalo-bulnes/chilean_cities)

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

Then copy the migrations to your application and apply them:

    rake chilean_cities:install:migrations
    rake db:migrate

Add the line `# Load the chilean cities here please` in `db/seeds.rb` if
your application has one. (If it doesn't, the generator will create one.)
Finally, generate the seed and run it:

    rails generate chilean_cities:seeds
    bundle exec rake db:seed

License
-------

    ChileanCities provides a Ruby implementation of the Chilean _comunas_.
    Copyright (C) 2013  Gonzalo Bulnes Guilpains

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
