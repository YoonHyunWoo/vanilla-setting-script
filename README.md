# install guide

first, you need Policy configuration for run ps1 script

```
Set-ExecutionPolicy Unrestricted
```

### running script
```
Invoke-WebRequest "https://raw.githubusercontent.com/rlawoals2590/vanilla-setting-script/master/vanilla-setting.ps1" -OutFile "vanilla-setting.ps1"
.\vanilla-setting.ps1
```

### config aws cli 2 
```
Invoke-WebRequest "https://raw.githubusercontent.com/rlawoals2590/vanilla-setting-script/master/awscli-config.ps1" -OutFile "awscli-config.ps1"
.\awscli-config.ps1
```
#### input your Access Key & Secret Access Key & Region
```
Input Youre AWS Access Key : Your_Access_key
Input Youre AWS Secret Key : Your_Secret_Key
Input Youre Use AWS Region : Your_Region

default region : us-west-2
```


# Trouble Shooting

* ERROR - Invoke-WebRequest : 요청이 중단되었습니다. SSL/TLS 보안 채널을 만들 수 없습니다.


  ```
  [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
  ```
