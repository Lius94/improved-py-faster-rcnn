begin=$1
end=$2
interval=$3
for((i=$begin;i<=$end;i=i+$interval));  
do   
if [ -f "data/VOCdevkit2007/annotations_cache/annots.pkl" ]; then
	rm data/VOCdevkit2007/annotations_cache/annots.pkl
fi

./tools/test_net.py --gpu 0 --def models/pascal_voc/ZF/faster_rcnn_end2end/test.prototxt --net output/faster_rcnn_end2end/voc_2007_trainval/zf_faster_rcnn_iter_${i}.caffemodel --imdb voc_2007_val --cfg experiments/cfgs/faster_rcnn_end2end.yml 2>&1 | tee test${i}_val.log

grep 'AP = ' test${i}_val.log | awk '{print $4}' >> val.log

if [ -f "data/VOCdevkit2007/annotations_cache/annots.pkl" ]; then
	rm data/VOCdevkit2007/annotations_cache/annots.pkl
fi

./tools/test_net.py --gpu 0 --def models/pascal_voc/ZF/faster_rcnn_end2end/test.prototxt --net output/faster_rcnn_end2end/voc_2007_trainval/zf_faster_rcnn_iter_${i}.caffemodel --imdb voc_2007_test --cfg experiments/cfgs/faster_rcnn_end2end.yml 2>&1 | tee test${i}_test.log

grep 'AP = ' test${i}_test.log | awk '{print $4}' >> test.log
done  

python2 draw_test.py $1 $2 $3

