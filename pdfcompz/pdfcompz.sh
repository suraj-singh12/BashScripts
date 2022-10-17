figlet pdf2compz
echo "script made by fazriachyar"
read -p "Enter file name (example: filename.pdf) :" namafile
echo "loading file..."
sleep 3
echo "inputting file..."
sleep 2
echo "wait a minute......."
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=compressed.pdf $namafile
figlet finished