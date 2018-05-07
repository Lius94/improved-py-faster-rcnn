#clean_cache.sh
rm -f data/cache/voc_2007_trainval_gt_roidb.pkl
rm -f data/VOCdevkit2007/annotations_cache/annots.pkl
rm -f `find . -name '*.pyc'`
rm -rf output/faster_rcnn_end2end
