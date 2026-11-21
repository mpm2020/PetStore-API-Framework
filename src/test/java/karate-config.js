function fn(){
 karate.configure('connectTimeout', 10000);
 karate.configure('readTimeout', 15000);

   var env = karate.env || 'qa';
   karate.log('Ambiente Actual: ', env);

   var config= { baseUrl:'https://petstore3.swagger.io/api/v3'}; //QA

    if (env=='dev') {
     config.baseUrl = 'https://dev.petstore3.swaggwer.io/api/v3';
     }

  return config;

}