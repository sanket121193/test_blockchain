echo
echo "POST request Enroll on AdminTeam..."
curl -s -X POST http://localhost:3001/users -H "content-type: application/x-www-form-urlencoded" -d 'username=a0001@prime.com&orgName=AdminTeam'
echo "POST request Enroll on AdminTeam... completed."

echo
echo "POST request Enroll on Student..."
curl -s -X POST http://localhost:3001/users -H "content-type: application/x-www-form-urlencoded" -d 'username=a0002@prime.com&orgName=Student'
echo "POST request Enroll on Student... completed."


echo
echo "POST request Enroll on Employer..."
curl -s -X POST http://localhost:3001/users -H "content-type: application/x-www-form-urlencoded" -d 'username=a0003@prime.com&orgName=Employer'
echo "POST request Enroll on Employer... completed."



echo
echo "POST request Enroll on University..."
curl -s -X POST http://localhost:3001/users -H "content-type: application/x-www-form-urlencoded" -d 'username=a0004@prime.com&orgName=University'
echo "POST request Enroll on University... completed."




