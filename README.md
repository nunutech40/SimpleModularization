# SimpleModularization

This is simple modularization i create to start and understanding modularization better, then this is how i created it.

1. First i create Project App from XCode and save in Folder Modularization.
<img width="738" alt="Screenshot 2022-06-23 at 10 12 44 AM" src="https://user-images.githubusercontent.com/49187517/175200245-d9cf6684-1c75-4a1e-9f69-8f347589f718.png">

3. Then i create project common for framework with XCode save in Folder Modularization.
<img width="770" alt="Screenshot 2022-06-23 at 10 14 33 AM" src="https://user-images.githubusercontent.com/49187517/175199593-6545cf9e-71bf-47a4-ac4a-240c7783c1ad.png">
<img width="733" alt="Screenshot 2022-06-23 at 10 14 49 AM" src="https://user-images.githubusercontent.com/49187517/175200407-324735a3-dba2-4d3a-a06d-9ef886b3c8c5.png">


3. Open Terminal, go to directory from Folder Modularazation -> App, then type this in command line:
```
pod init
```

4. add name workspace for your modularization and add target for your project Common as Framework.
<img width="681" alt="Screenshot 2022-06-23 at 11 00 22 AM" src="https://user-images.githubusercontent.com/49187517/175206313-0da82abc-ed06-47b2-a63b-7e9b11514bad.png">

5. Open terminal again, still in directory App project type this command:
```
pod install
```

6. Close all project, and open again Modularization.xcworkspace, in App add target for Common framework.
<img width="1398" alt="Screenshot 2022-06-23 at 11 09 43 AM" src="https://user-images.githubusercontent.com/49187517/175207318-9094dbae-16f4-4716-86ec-a8a9e0a932aa.png">

7. Then, u can add anything in Common framework and import in app project.
<img width="1404" alt="Screenshot 2022-06-23 at 11 11 38 AM" src="https://user-images.githubusercontent.com/49187517/175207458-1cd4712e-9468-4290-9385-fa6c98c090e2.png">
<img width="1411" alt="Screenshot 2022-06-23 at 11 11 47 AM" src="https://user-images.githubusercontent.com/49187517/175207471-b97eb04c-82ba-4992-ac98-ee520f347566.png">



