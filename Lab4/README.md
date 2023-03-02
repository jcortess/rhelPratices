# Who is using a port ???
###  👋

<table>
<tr>
<td> Using lsof </td>
	<td>lsof -i -P -n | grep LISTEN | awk '{print $9 "\t" $1 "\t"}' | tr -d '*:'</td>
</tr>
<tr>
<td> Using ss </td>
		<td>ss --listen --tcp --process  | awk '{print $4 "\t" $6 "\t" $7}'</td>
</tr>
</table>
