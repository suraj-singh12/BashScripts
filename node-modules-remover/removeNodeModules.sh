echo "Welcome to 'node_modules' remover"
echo "Press y to continue: "
read consent
if [ "$consent" = "y" ]
then
  echo "Removing ..."
  find . -name "node_modules" -exec rm -rf '{}' +
  echo "All node_modules removed recursively"
else
  echo "User Denied Permission! Exiting..!\n"
fi
