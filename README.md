# GatlingBookProject
This project built based on the Spark web microframework, 
Freemarker, Spring and HSQLDB (as an in-memory database).
 
## Introduction

## Prerequisites

## How to run it

### Via Maven

1. Clone the repository and go to the root directory.

2. Execute `mvn compile exec:java`

3. Open in your browser `http://localhost:4567/`

4. Log in as GUser001 with password user001 

### Via Docker

1. Clone the repository and go to the root directory.

2. Execute `docker build -t com/gatlingbook/config .`

3. Execute `docker run -d -p 4567:4567 -t com/gatlingbook/config`

4. Execute `curl localhost:4567`

4. Open in your browser `http://localhost:4567/`

5. Log in as GUser001 with password user001 