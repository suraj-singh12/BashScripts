figlet pdf2text
echo "script made by fazriachyar"
read -p "Enter file name (example: filename.pdf) :" namafile
echo "loading file..."
sleep 3
echo "inputting file..."
sleep 2
echo "wait a minute......."
convert -density 300 $namafile -depth 8 -strip -background white -alpha off result.tiff
echo "just a second..."
tesseract result.tiff exported
figlet finished
rm result.tiff