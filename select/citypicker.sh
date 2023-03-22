#! /bin/bash

# combining select and case statements

#Tokyo, London, Los Angeles, Moscow, Dubai, Manchester, New York, Paris
#Bangalore, Johannesburg, Istanbul, Milan, Abu Dhabi, Pune, Nairobi, Berlin, Karachi

PS3="Select a city: "

select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi ;
do
	#echo $city

	#echo the country the city is in
	case "$city" in
		"Los Angeles" | "New York") echo "$city is in the US" ;;
		"Nairobi") echo "$city in Kenya" ;;
		"Dubai" | "Abu Dhabi") echo "$city in the Middle East" ;;
		"Berlin" | "Istanbul" | "Bangalore") echo "$city in Germany" ;;
		"Tokyo") echo "$city in Japan" ;;
		Karachi) echo "$city in Pakistan" ;;
		"Johannersburg") echo "$city in S.Africa" ;;
		"London" | "Manchester") echo "$city in the United Kingdom" ;
		Bangalore | Pune) echo "$city in india"
		
	esac

	break;
done
