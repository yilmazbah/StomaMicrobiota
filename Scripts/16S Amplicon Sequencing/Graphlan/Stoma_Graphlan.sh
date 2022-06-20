#!/bin/sh
graphlan_annotate.py SkinvsFeces.txt SkinvsFeces.xml --annot SkinvsFeces_anno.txt
graphlan.py SkinvsFeces.xml SkinvsFeces.pdf --dpi 300 --size 8 --pad 0

graphlan_annotate.py Stoma_CRC_Ileum_Colon.txt Stoma_CRC_Ileum_Colon.xml --annot Stoma_CC_IBD_Control_anno.txt
graphlan.py Stoma_CRC_Ileum_Colon.xml Stoma_CRC_Ileum_Colon.pdf --dpi 300 --size 16 --pad 0


cd /Users/bahti/Dropbox/Ambizione/Gut\ Bacteria\ Isolation/Graphlan

graphlan_annotate.py IsolatedStrains.txt IsolatedStrains.xml --annot IsolatedStrains_anno_simplified.txt
graphlan.py IsolatedStrains.xml IsolatedStrains.pdf --dpi 300 --size 22 --pad 0