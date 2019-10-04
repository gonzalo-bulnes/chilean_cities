Comunas de Chile
================

[![Build Status](https://api.travis-ci.org/gonzalo-bulnes/chilean_cities.png?branch=master)](https://travis-ci.org/gonzalo-bulnes/chilean_cities)
[![Code Climate](https://codeclimate.com/github/gonzalo-bulnes/chilean_cities.png)](https://codeclimate.com/github/gonzalo-bulnes/chilean_cities)
[![Dependency Status](https://gemnasium.com/gonzalo-bulnes/chilean_cities.svg)](https://gemnasium.com/gonzalo-bulnes/chilean_cities)
[![Inline docs](http://inch-ci.org/github/gonzalo-bulnes/chilean_cities.svg?branch=master)](http://inch-ci.org/github/gonzalo-bulnes/chilean_cities)

A Ruby representation of the Chilean _administrative areas_ as described by the [SUBDERE][subdere].

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
- Decreto Exento No 204, del Ministerio del Interior, publicado en el Diario Oficial del 14 de Febrero de 2018

  [source]: http://www.subdere.gov.cl/documentacion/regiones-provincias-y-comunas-de-chile
  [ref]: http://www.subdere.gov.cl/sites/default/files/documentos/articles-73111_recurso_2.pdf


Usage
-----

Add the gem to your Gemfile:

```ruby
# Gemfile

gem 'chilean_cities', '~> 1.0' # see semver.org
```

Then generate the chilean administrative areas:

```ruby
require 'chilean_cities'

chile = ChileanCities::Factory.instance

chile.generate!

# and use them as you want : )

chile.regiones.select{ |region| region.iso_3166_2 == 'CL-LL' }.first.name
# => "Región de los Lagos"

chile.provincias.select{ |provincia| provincia.name =~ /Magallanes/ }.first.comunas.map{ |comuna| comuna.name }
# => ["Punta Arenas", "Laguna Blanca", "Río Verde", "San Gregorio"]
 ```

### Schema.org

 The generated administrative areas representations do _partially_ enforce the **Place schema** (see [schema.org][schema] and [the schemas specs][schema-specs] for details):

```ruby
# comunas, provincias and regiones do implement the `contained_in` method:

chile.comunas.select{ |comuna| comuna.name == 'Quellón' }.first.contained_in.name
# => "Chiloé"
```

  [schema]: http://schema.org
  [schema-specs]: spec/support/schemas

**Note about the previous version** (`v0.1.0`)

If you were using this gem in the past and are looking for its ancient behaviour, please modify your `Gemfile` to checkout the `v0.1.0` tag:

```ruby
# Gemfile

gem 'chilean_cities', git: 'https://github.com/gonzalo-bulnes/chilean_cities.git', tag: 'v0.1.0'
```
The same tag does also [point to the corresponding documentation][deprecated-doc].

  [deprecated-doc]: https://github.com/gonzalo-bulnes/chilean_cities/blob/v0.1.0/README.md

See Also
--------

- The Wikipedia article about the [ISO 3166-2][iso] standard
- Comunas de Chile ([gist][json]) (a Ruby on Rails seed and a JSON document)
- The Schema.org [AdministrativeArea schema][schema]
- An interesting overview of [how the administrative areas can be categorized for mapping][administrative_mapping]
- The [OpenStreetMap relations][osm_boundaries] corresponding to the described administrative areas

  [iso]: https://en.wikipedia.org/wiki/ISO_3166-2:CL
  [json]: https://gist.github.com/gonzalo-bulnes/337ea1e916e3890fdefa
  [schema]: http://schema.org/AdministrativeArea
  [administrative_mapping]: http://wiki.openstreetmap.org/wiki/Tag:admin%20level=8?uselang=en-US
  [osm_boundaries]: http://www.openstreetmap.org/relation/164609

Credits
-------

Part of this gem was crafted during my 10% _free focus_ work time at [Acid Labs][acidlabs]. Thanks @acidlabs!

  [acidlabs]: https://github.com/acidlabs

License
-------

    ChileanCities provides a Ruby representation of the Chilean _administrative areas_.
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
