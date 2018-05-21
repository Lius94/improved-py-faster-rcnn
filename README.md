本文件记录远距离行人检测系统源码及部分实验中的日志文件

./models/pascal_voc/ZF/faster_rcnn_end2end中保存修改后的model文件
./lib/fast_rcnn中config.py保存修改后NMS阈值后的参数配置
./lib/rpn中generate_anchors.py保存修改映射窗口大小后的参数配置

运行demo.py时需要将
prototxt = os.path.join(cfg.MODELS_DIR, NETS[args.demo_net][0],
                        'faster_rcnn_alt_opt', 'faster_rcnn_test.pt')
改为
prototxt = os.path.join(cfg.MODELS_DIR, NETS[args.demo_net][0],
                        'faster_rcnn_end2end', 'test.prototxt')

clean.sh用来清理训练后的缓存文件
draw_test.sh在训练完成后用来绘制训练集-验证集精度曲线
py-faster-rcnn运行可参考博客https://blog.csdn.net/sinat_30071459/article/details/51332084

数据集在此省略
log文件夹中保存部分训练的log文件以及截图（log文件中可见当前模型结构以及训练中的loss，训练完成后mAP）

由于迭代次数关系，日志文件中显示检测精度不代表最佳检测精度，论文中最佳检测精度由训练过程中模型在测试集和验证集上分别得到。
由于训练权重随机初始化，实验复现过程中可能不会得到完全相同结果，但可以得到类似结果。