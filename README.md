# Grunn.io
Grunn.io is een database vol met internet technologie, van de vruchtbare bodem van Groningen.

## Meebouwen aan Grunn.io?
Dat kan! Check de [issues](https://github.com/Grunnio/grunnio/issues?milestone=1&sort=updated&state=open) voor dingen-te-doen, of bedenk je eigen feature.
Fork deze repository, maak je wijzigingen (op develop) en dien een pull request in.

Meer weten? Neem contact op met [@serepo](https://github.com/serepo).

### Releases
#### 0.0.9
Beta versie.

### Vereisten
- Ruby 1.9.3
- Postgres 9.1.3 (momenteel ook nog voor dev)

### Development
`$ git clone git@github.com:Grunnio/grunnio.git`

`$ cd grunnio`

`$ bundle install`

`$ rake db:create`

`$ rake db:migrate`

`$ rails server`


### Git flow
De Grunn.io repository is ingedeeld volgens van het [Git flow](http://nvie.com/posts/a-successful-git-branching-model/) model.

Installeer de git flow utility op OS X met brew: `$ brew install git-flow`

- development: develop branch
- productie (stable): master branch

Start een nieuwe feature:
```bash
$ git flow feature start my-kickass-feature
```

Verhoog de versie en commit:

```bash
$ git flow feature finish my-kickass-feature
```


Release development naar master:

```bash
$ git flow release start 0.0.x
```

Verhoog de versie en commit:

```bash
$ git flow release finish 0.0.x
```
