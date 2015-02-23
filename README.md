Comunas de Chile
================

[![Build Status](https://api.travis-ci.org/gonzalo-bulnes/chilean_cities.png)](https://travis-ci.org/gonzalo-bulnes/chilean_cities)
[![Code Climate](https://codeclimate.com/github/gonzalo-bulnes/chilean_cities.png)](https://codeclimate.com/github/gonzalo-bulnes/chilean_cities)
[![Dependency Status](https://gemnasium.com/gonzalo-bulnes/chilean_cities.svg)](https://gemnasium.com/gonzalo-bulnes/chilean_cities)
[![Inline docs](http://inch-ci.org/github/gonzalo-bulnes/chilean_cities.svg?branch=master)](http://inch-ci.org/github/gonzalo-bulnes/chilean_cities)

A Ruby representation of the Chilean _comunas_ as described by the [SUBDERE][subdere].

  [subdere]: http://www.subdere.gov.cl


Disclaimer
----------

This library is not developed, supported nor endorsed in any way by the Chilean [Subsecretaría de Desarrollo Regional y Administrativo (SUBDERE)][subdere], nor any related institution.

Data Sources
------------

This library is based on the publicly available information from the SUBDERE related to the [Codificación Única Territorial][source]. The sources quoted by [the document on which this library is based][ref] are:

- Decreto Supremo No 1439, del Ministerio del Interior, publicado en el Diario Oficial del 8 de Mayo de 2000
- Decreto Supremo No 1352, del Ministerio del Interior, publicado en el Diario Oficial del 23 de Agosto de 2008
- Decreto Exento No 910, del Ministerio del Interior, publicado en el Diario Oficial del 14 de Junio de 2007
- Decreto Exento No 817, del Ministerio del Interior, publicado en el Diario Oficial del 26 de Marzo de 2010

  [source]: http://www.subdere.gov.cl/documentacion/regiones-provincias-y-comunas-de-chile
  [ref]: http://www.subdere.gov.cl/sites/default/files/documentos/articles-73111_recurso_2.pdf


Usage
-----

Add the gem to your Gemfile:

    gem 'chilean_cities', '~> 1.0' # see semver.org


> I'm not sure yet how the collection of administrative areas will be created and/or persisted.
> However, I'm thinking that creating a collection of `save`able objects from a source file and providing helpers to persist them would be a way to keep the data accessible (readable and auditable).

Credits
-------

Part of this gem was crafted during my 10% _free focus_ work time at [Acid Labs][acidlabs]. Thanks for that!

  [acidlabs]: https://github.com/acidlabs

License
-------

    ChileanCities provides a Ruby representation of the Chilean _comunas_.
    Copyright (C) 2013, 2014, 2015  Gonzalo Bulnes Guilpain

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
