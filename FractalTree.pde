private double fractionLength =.7; 
private int smallestBranch =3; 
private double branchAngle = .72;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(20, 209, 189); 
	line(320,240,320,480);
	stroke(23,34,48);
	fill(23,34,48);
	drawBranches(320,240,100,3*Math.PI/2);	
} 

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1, angle2;
	angle1=angle+branchAngle;
	angle2=angle-branchAngle;
	branchLength=branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle)  + x);
	int endY3 = (int)(branchLength*Math.sin(angle)  + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	line(x,y,endX3,endY3);
	ellipse(x,y,5,5);
	if(branchLength>smallestBranch){
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
		drawBranches(endX3,endY3,branchLength,angle);
	}
	
} 
