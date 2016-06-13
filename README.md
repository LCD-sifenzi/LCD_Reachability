# LCD_Reachability
Swift - 网络连接类型判断

使用swift版本的 Reachability。同时在Reachability.swift 中添加扩展的方式使得使用更简便。
我在原来的Reachability 中添加扩展
enum NetWorkType {
case WIFI
case WWAN
case NONE
}

// -- LCD => 扩展 接口
extension Reachability {
static func netWorkIsOk() -> Bool {
let reachability = self.reachabilityForInternetConnection()
//判断连接状态
if reachability!.isReachable(){
return true
}else{
return false
}
}
static func netWorkType() -> NetWorkType {
let reachability = self.reachabilityForInternetConnection()
//判断连接类型
if reachability!.isReachableViaWiFi() {
return .WIFI
}else if reachability!.isReachableViaWWAN() {
return .WWAN
}else {
return .NONE
}
}
}
使用：
if !Reachability.netWorkIsOk() {
let aler = UIAlertView.init(title: "亲！当前网络未连接！", message: nil, delegate: nil, cancelButtonTitle: "确定")
aler.show()

    }


    if Reachability.netWorkType() == .WIFI {
        let aler = UIAlertView.init(title: "连接类型：WIFI", message: nil, delegate: nil, cancelButtonTitle: "确定")
        aler.show()

    }

    if Reachability.netWorkType() == .WWAN {
        let aler = UIAlertView.init(title: "连接类型：蜂窝数据", message: nil, delegate: nil, cancelButtonTitle: "确定")
        aler.show()
    }

    if Reachability.netWorkType() == .NONE {
        let aler = UIAlertView.init(title: "当前网络未连接", message: nil, delegate: nil, cancelButtonTitle: "确定")
        aler.show()
    }
