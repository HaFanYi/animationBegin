# animationBegin
分别使用swift和OC编写的一个简单登录按钮动画
主要展示的是UIview下frame属性动画移动效果
动画分析步骤“三部曲”：动画起始阶段、动画进行阶段、动画结束阶段

动画起始阶段代码放在什么位置才合适？只要知道下面3个方法的执行顺序即可。
viewDidLoad() --应用启动后，这个方法会装载所有的view视图，但这些视图并不是可见的；
程序接着调用viewWillAppear方法，这是视图展现之前需要调用的方法；
最后调用viewDidAppear，表明所有视图已经可见。
所以动画起始阶段可以将代码放在viewDidload()方法中。
import UIKit
var loginButtion:UIButton?
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtion = UIButton(frame:CGRect(x:-394,y:230,width:self.view.frame.width-20*2,height:50))
        loginButtion!.backgroundColor = UIColor(red:50/255.0,green:185/255.0,blue:170/255.0,alpha:1.0)
        loginButtion!.setTitle("登录", for:UIControlState.normal)
        self.view.addSubview(loginButtion!)
        
    }
动画进行阶段和动画结束阶段
在view视图整体展现之前完成这两个阶段(如果视图已经显示了才设置动画效果，会有动画不连贯现象)，所以这部分代码要放在viewWillAppear方法中
  override func viewWillAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 1,animations:{
//            loginButtion!.frame = CGRect(x:20,y:loginButtion!.frame.origin.y,width:loginButtion!.frame.width,height:loginButtion!.frame.height)
//        })   
        
        UIView.beginAnimations(nil, context: nil)//动画开始
        UIView.setAnimationDuration(1);//动画周期设置
         loginButtion!.frame = CGRect(x:20,y:loginButtion!.frame.origin.y,width:loginButtion!.frame.width,height:loginButtion!.frame.height) //动画位置设置
        UIView.commitAnimations() //动画提交
    }
使用了两种方法：第一种是使用闭包的方式将动画代码追加进去，在闭包中只需要将动画结束状态设置完成，那么动画从开始到结束的中间过程，iOS会自动实现；
第二种通过commit相关方法的形式来实现。

动画实现步骤：
设置视图的动画初始状态-->添加视图的动画相应属性-->设置动画的最终状态
