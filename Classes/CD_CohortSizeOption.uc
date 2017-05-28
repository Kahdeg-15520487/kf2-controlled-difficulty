class CD_CohortSizeOption extends CD_RegulatedOption
	within CD_Survival;

protected function string ReadIndicator()
{
	return Outer.CohortSize;
}

protected function WriteIndicator( const out string Ind )
{
	Outer.CohortSize = Ind;
}

protected function float ReadValue()
{
	return float(Outer.CohortSizeInt);
}

protected function WriteValue( const out float Val )
{
	Outer.CohortSizeInt = int(Val);
}

protected function string PrettyValue( const float RawValue )
{
	return string(int(RawValue));
}

defaultproperties
{
	IniDefsArrayName="CohortSizeDefs"
	OptionName="CohortSize"
	DefaultSettingValue=0
	MinSettingValue=0
	MaxSettingValue=10000
}
