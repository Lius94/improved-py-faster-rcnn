log文件以模型版本+数据集名称作为文件名。

log文件与同名截图对应。

实验过程中不同实验组对比时产生的日志文件在此不全部上传，仅对不同实验节点的log文件进行提交。

原模型-CAVIAR.log文件在实验过程中误删，仅有截图。

CAVIAR数据集此前迭代10W次的日志文件没有保存，但在测试集精度曲线中可以得到，模型在迭代7W次时测试集精度达到峰值。基于CAVIAR数据集的日志文件准确可靠。
CVC数据集中日志文件包含全部10W次迭代，在迭代6W次时测试集精度到达峰值。因此日志文件末尾所得mAP和论文中基于CVC数据集的mAP有所区别，但数据本身准确可靠。