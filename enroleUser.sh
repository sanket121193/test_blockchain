

echo
echo "POST request Enroll on Manufacturer..."
curl -s -X POST http://localhost:3001/users -H "content-type: application/x-www-form-urlencoded" -d 'username=a0006@liquor.com&orgName=Manufacturer'
echo "POST request Enroll on Manufacturer... completed."




echo
echo "POST request Enroll on AdminTeam..."
curl -s -X POST http://localhost:3001/users -H "content-type: application/x-www-form-urlencoded" -d 'username=a0003@liquor.com&orgName=AdminTeam'
echo "POST request Enroll on AdminTeam... completed."







