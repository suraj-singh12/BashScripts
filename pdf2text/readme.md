## PDF2TEXT

convert pdf file with picture inside into .txt file
using imagemagick and tesseract OCR.

**Tesseract** is the free and probably the best OCR solution in the market. Since 2006 it has been sponsored by Google; previously, it was developed by Hewlett Packard in C and C++ between 1985 and 1998. The system can identify even handwriting; it can learn, increasing its accuracy, and is among the most developed and complete in the market.

## REQUIREMENTS
```
sudo apt install figlet

sudo apt install git

sudo apt install imagemagick

sudo apt install tesseract-ocr -y

sudo chmod 774 pdf2text.sh
```

install this package or run requirements.sh

change permission on root file in this directory
if you are using ImageMagick v6

```
sudo nano /etc/ImageMagick-6/policy.xml
```

change this line from 

```
＜policy domain="coder" rights="none" pattern="PDF"/>
```

to this line

```
＜policy domain="coder" rights="read | write" pattern="PDF"/>
```

## USAGE

put your pdf file inside this directory with .pdf extension
and run pdf2text.sh

```
./pdf2text.sh
```