private double fractionLength =.8; 
private int smallestBranch =5; 
private double branchAngle = .72;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(20, 209, 189); 
	stroke(230,23,144);     
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2,230,23,144); 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int c1, int c2, int c3) 
{   
	double angle1, angle2;
	angle1=angle+branchAngle;
	angle2=angle-branchAngle;
	stroke(c1,c2,c3);
	branchLength=branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch){
		drawBranches(endX1,endY1,branchLength,angle1,c1-50,c2+50,c3-10);
		drawBranches(endX2,endY2,branchLength,angle2,c1-5,c2+5,c3-2);
	}
} 
