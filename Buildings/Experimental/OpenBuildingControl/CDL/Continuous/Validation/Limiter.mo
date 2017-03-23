within Buildings.Experimental.OpenBuildingControl.CDL.Continuous.Validation;
model Limiter "Validation model for the Limiter block"
  extends Modelica.Icons.Example;

  Buildings.Experimental.OpenBuildingControl.CDL.Continuous.Limiter limiter1(
    uMax = 2.5,
    uMin = 1.2)
    "Block that limit the range of a signal"
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Buildings.Experimental.OpenBuildingControl.CDL.Continuous.Ramp ramp1(
    duration=1,
    offset=0,
    height=4) "Block that generates ramp signal"
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
equation
  connect(ramp1.y, limiter1.u)
    annotation (Line(points={{-39,0},{-12,0}},         color={0,0,127}));
  annotation (
experiment(StopTime=1.0),
  __Dymola_Commands(file="modelica://Buildings/Resources/Scripts/Dymola/Experimental/OpenBuildingControl/CDL/Continuous/Validation/Limiter.mos"
        "Simulate and plot"),
    Documentation(info="<html>
<p>
Validation test for the block
<a href=\"modelica://Buildings.Experimental.OpenBuildingControl.CDL.Continuous.Limiter\">
Buildings.Experimental.OpenBuildingControl.CDL.Continuous.Limiter</a>.
</p>
<p>
The input <code>u</code> varies from <i>0.0</i> to <i>+2</i>. 
</p>
</html>", revisions="<html>
<ul>
<li>
March 20, 2017, by Jianjun Hu:<br/>
First implementation.
</li>
</ul>

</html>"));
end Limiter;
