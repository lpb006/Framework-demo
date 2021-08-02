### iOS Framework工程中添加测试工程
####需求描述
在一个工程中同时包含Frameweork工程、demo测试工程、并且能使用cocopods导入三方库。
项目结构如图所示  
![项目结构.jpg](https://upload-images.jianshu.io/upload_images/2955178-90b2f16abfefe924.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
####工程构建步骤  
#####步骤1：创建demo工程  
* 创建demo工程、如上图所示工程为`testFrameworkDemo`  

#####步骤2：创建framework工程    
* 创建framework工程、如上图所示工程为`Framework` (创建新的项目) 

#####步骤3：初始化pod    
* 初始化cocopods：在`testFrameworkDemo` 中初始化`pod init`

#####步骤4：关联项目 
* 将`Framework`文件夹放入`testFrameworkDemo` 文件下，并且将`Framework.xcodeproj`拖入`testFrameworkDemo`工程。如图
![文件目录.jpg](https://upload-images.jianshu.io/upload_images/2955178-ce0f0e451901f321.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![拖入.jpg](https://upload-images.jianshu.io/upload_images/2955178-9917682d830832ad.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![勾选.jpg](https://upload-images.jianshu.io/upload_images/2955178-da15fe6e3627711a.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
#####步骤5：设置podfile
* 设置podfile  

```
# Uncomment the next line to define a global platform for your project
 platform :ios, '9.0'
 
#这里需要添加
workspace 'testFrameworkDemo.xcworkspace'

target 'testFrameworkDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for testFrameworkDemo

pod 'MJExtension'

end

target 'Framework' do
#这里需要添加
  project './Framework/Framework.xcodeproj'

pod 'MJExtension'
  
end
```  
#####步骤6：工程联调
* 打包设置不赘述  
* 在demo中需要使用的时候，先在framework工程中`command + B`
* demo中引入头文件`#import <Framework/Framework.h>`

[github链接 Framework-demo](https://github.com/lpb006/Framework-demo.git)

