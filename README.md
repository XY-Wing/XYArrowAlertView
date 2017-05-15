# XYArrowAlertView
一个带箭头的控件上方弹出试图
## 使用
```Objc
XYArrowAlertView *arrowAlertV = [[XYArrowAlertView alloc] initWithFrame:CGRectMake(0, 0, screenW, screenH) alertContentString:@"张三 李四 张三 李四 张三 李四 " withSpecificUI:btn];
    [self.view addSubview:arrowAlertV];
```
- 依赖Masonry
- 使用了两张图片作为背景
#
![image](https://github.com/XY-Wing/XYArrowAlertView/blob/master/GIF/AlertView.gif)
