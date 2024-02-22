
## Running rspec unit test cases
```
bundle exec rspec
```
## Running rspec in parallel
```
rake parallel:create # create databases
rake parallel:prepare # load develop schema in each database
rake parallel:migrate # run migration in each database
rake parallel:spec # run rspec parallelly
```
### Distributing parallel specs on processes based on time
```
parallel_test spec -t rspec --runtime-log tmp/parallel_runtime_rspec.log
```
