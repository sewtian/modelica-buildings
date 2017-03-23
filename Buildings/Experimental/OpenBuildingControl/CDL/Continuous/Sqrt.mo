within Buildings.Experimental.OpenBuildingControl.CDL.Continuous;
block Sqrt
  "Output the square root of the input (input >= 0 required)"

  Interfaces.RealInput u "Connector of Real input signal"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}}),
        iconTransformation(extent={{-140,-20},{-100,20}})));

  Interfaces.RealOutput y "Connector of Real output signal"
    annotation (Placement(transformation(extent={{100,-10},{120,10}}),
        iconTransformation(extent={{100,-10},{120,10}})));

equation
  y = sqrt(u);
  annotation (
    defaultComponentName="sqrt",
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={  Rectangle(
        extent={{-100,-100},{100,100}},
        lineColor={0,0,127},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
        Line(points={{-90,-80},{68,-80}}, color={192,192,192}),
        Polygon(
          points={{90,-80},{68,-72},{68,-88},{90,-80}},
          lineColor={192,192,192},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-80,-80},{-79.2,-68.7},{-78.4,-64},{-76.8,-57.3},{-73.6,-47.9},
              {-67.9,-36.1},{-59.1,-22.2},{-46.2,-6.49},{-28.5,10.7},{-4.42,
              30},{27.7,51.3},{69.5,74.7},{80,80}},
          smooth=Smooth.Bezier),
        Polygon(
          points={{-80,90},{-88,68},{-72,68},{-80,90}},
          lineColor={192,192,192},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Line(points={{-80,-88},{-80,68}}, color={192,192,192}),
        Text(
          extent={{-8,-4},{64,-52}},
          lineColor={192,192,192},
          textString="sqrt")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
            100,100}}), graphics={Line(points={{-92,-80},{84,-80}}, color={
          192,192,192}),Polygon(
            points={{100,-80},{84,-74},{84,-86},{100,-80}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),Line(points={{-80,-80},{-79.2,-68.7},
          {-78.4,-64},{-76.8,-57.3},{-73.6,-47.9},{-67.9,-36.1},{-59.1,-22.2},
          {-46.2,-6.49},{-28.5,10.7},{-4.42,30},{27.7,51.3},{69.5,74.7},{80,
          80}}),Polygon(
            points={{-80,98},{-86,82},{-74,82},{-80,98}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),Line(points={{-80,-90},{-80,84}},
          color={192,192,192}),Text(
            extent={{-71,98},{-44,78}},
            lineColor={160,160,164},
            textString="y"),Text(
            extent={{60,-52},{84,-72}},
            lineColor={160,160,164},
            textString="u"),
        Text(
          lineColor={0,0,255},
          extent={{-140,106},{160,146}},
          textString="%name")}),
    Documentation(info="<html>
<p>
Block that outputs square root of the input <code>y = sqrt(u)</code>,
where <code>u</code> is an input. All elements of the input vector shall be non-negative.
</p>
</html>", revisions="<html>
<ul>
<li>
March 15, 2017, by Jianjun Hu:<br/>
First implementation, based on the implementation of the
Modelica Standard Library.
</li>
</ul>
</html>"));
end Sqrt;
