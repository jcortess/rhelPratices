# Who is using a port ???

<table>
###  👋
<td> Using lsof </td>
	lsof -i -P -n | grep LISTEN | awk '{print $9 "\t" $1 "\t"}' | tr -d '*:'
<td> Using ss </td>
		ss --listen --tcp --process  | awk '{print $4 "\t" $6 "\t" $7}'
</table>