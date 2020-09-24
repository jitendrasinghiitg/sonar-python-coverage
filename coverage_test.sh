cd python
coverage erase
coverage run unit_test.py
coverage report
coverage xml

/sonarcube/sonar-scanner-cli-4.2.0.1873-linux/sonar-scanner-4.2.0.1873-linux/bin/sonar-scanner \
  -Dsonar.host.url=http://localhost:9000/ \
  -Dsonar.projectKey=my_python_project -Dsonar.language=py \
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.sources=./ \
  -Dsonar.python.coverage.reportPaths=coverage.xml \
  -Dsonar.login=admin \
  -Dsonar.password=admin

cd ../