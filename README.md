# sonar-python-coverage


### Steps to set up the APP
Sonar itself is a dockerized container. 

Steps to get things working
1. Install Docker on host machine
2. Inside sonar directory execute

   ```sh start_sonar.sh``` 
   
   content of start.sh 
   
   ```sudo docker-compose -f docker-compose.yml up  --build```
3. Install coverage and requirements of the project

   ```pip install coverage ```
   
   ```pip install -r requirements.txt ```

4. Than run following command in python dir

    ```coverage erase``` 
    
    ```coverage run unit_test.py```
    
    ```coverage report```
    
    ```coverage xml```

5. Now we can scan our dir with sonar-scanner (which needs to be installed separately)

```
   sonar-scanner \
  -Dsonar.host.url=http://localhost:9000/ \
  -Dsonar.projectKey=my_python_project -Dsonar.language=py \
  -Dsonar.sourceEncoding=UTF-8 \
  -Dsonar.sources=./ \
  -Dsonar.python.coverage.reportPaths=coverage.xml \
  -Dsonar.login=admin \
  -Dsonar.password=admin
```

Make sure when you are doing so both the ports mentioned in docker-compose should be free.

Step 4 and 5 have been combined and written in coverage_test.sh 

After step 3 alternatively we can run coverage_test ,in the dir of coverage_test.sh

```sh coverage_test.sh```

### App Urls
**SONAR_URL :** `http://<your_IP_or_URL>:9000`


#### Default Admin Login credentials of Sonarqube
username: <b>admin</b> 

password: <b>admin</b>
