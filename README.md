

> # counter_collection
 Practice test for job selection on BrainWeb
 - Para rodar o projeto será necessário mudar a branch do sdk do flutter então tente rodar os seguintes comandos:
 > flutter channel beta
 >
 > flutter upgrade
 

 - Foi utilizado MobX para o controle de estado da aplicação. O MobX exige que rode um comando no terminal. 
 Caso for alterar algo no Controller terá que executar o seguinte comando no terminal dentro do projeto

flutter pub run build_runner watch --delete-conflicting-outputs

> APK está disponível no [Link](https://drive.google.com/file/d/13VVDlYYHt3U26vUmOOvZO79Y2d9-XWDU/view?usp=sharing).
> 
>  WEB Como bônus foi gerado com o mesmo codigo uma versão web do app [[https://israelhudson.github.io/](https://israelhudson.github.io/)

Testes: Os testes podem ser encontrados na pasta: test/app/app_controller_test.dart
