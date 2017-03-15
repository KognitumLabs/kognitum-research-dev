#Kognitum Research Box

##Bootstrap


- install [vagrant](http://www.vagrantup.com) and [virtual box](http://www.virtualbox.org);
```
git clone https://bitbucket.org/booteam/kognitum-research-dev.git kognitum-research-dev
cd blabs-research-dev
vagrant up
# wait for instalation process
vagrant ssh
# follow interactive configuration script
```

The projects will be on your home folder

## Project decisions and defaults

- we unit test with `py.test`
- the `tasks.py` script on the project home, is a `click` cli with operational tasks for the project (e.g: testing)
- always refer the packages dependencies versions
- on the setup.py use the `dependency_links` for refering private repos
- always check coverage with `./tasks.py test --cov`
- the common project encapsulates all utility methods and classes across projects
- develop using Pull Requests

## Code review checklist

- check code quality
- run tests (check if all pass +  coverage)
- documentation (README + pydocs)
- bump version (`setup.py`)
- update libs on requirements (if necessary)
- update libs on setup.py
- for projects that use scanboo_common check if the required tag is up to date
- version change log on CHANGES.md
- after merging tag version