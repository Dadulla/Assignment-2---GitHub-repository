<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
	<html>
		<body>
			<h1>Employee records</h1>
			<table>
				<tr>
					<th style="text-align:left">Name</th>
					<th style="text-align:left">Surname</th>
					<th style="text-align:left">Nationality</th>
					<th style="text-align:left">Day of birth</th>
					<th style="text-align:left">Religion</th>
					<th style="text-align:left">Phone number</th>
					<th style="text-align:left">E-mail</th>
					<th style="text-align:left">Position</th>
					<th style="text-align:left">Department</th>
					<th style="text-align:left">Country of outpost</th>
					<th style="text-align:left">Outpost</th>
					<th style="text-align:left">User name</th>
				</tr>
				<xsl:for-each select="ListOfEmployees/Employee">
					<tr>
						<td><xsl:value-of select="PersonalData/Name"/></td>
						<td><xsl:value-of select="PersonalData/Surname"/></td>
						<td><xsl:value-of select="PersonalData/Nationality"/></td>
						<td><xsl:value-of select="PersonalData/DayOfBirth"/></td>
						<td><xsl:value-of select="SensitivePersonalInformation/Religion"/></td>
						<td><xsl:value-of select="ContactInformation/PhoneNumber"/></td>
						<td><xsl:value-of select="ContactInformation/Mail"/></td>
						<td><xsl:value-of select="WorkData/Position"/></td>
						<td><xsl:value-of select="WorkData/Department"/></td>
						<td><xsl:value-of select="WorkData/CountryOfOutpost"/></td>
						<td><xsl:value-of select="WorkData/Outpost"/></td>
						<td><xsl:value-of select="EmployeeAccount/UserName"/></td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
