function waypoints = task4_drawing_waypoints(...
    gripperOpenPos, gripperPenCubeHoldPos...
)
%GETTASK3VIDEOWAYPOINTS Returns the waypoints for executing the task 3
%video specific drawing. The waypoints don't include the start pose.
    
    drawingHeight = 0.09;

    % Pick up pen
    penAbovePickUp.x = 0.125;
    penAbovePickUp.y = 0.125;
    penAbovePickUp.z = 0.075;
    penAbovePickUp.theta = -pi/2;
    penAbovePickUp.gripper = gripperOpenPos;
    penAbovePickUp.groupToPrevious = false;
    penAbovePickUp.timeForTrajectory = 0.4;
    penAbovePickUp.name = "Pen above pick up";
    
    penPickUp.x = 0.125;
    penPickUp.y = 0.125;
    penPickUp.z = 0.02;
    penPickUp.theta = -pi/2;
    penPickUp.gripper = gripperPenCubeHoldPos;
    penPickUp.groupToPrevious = false;
    penPickUp.timeForTrajectory = 0.1;
    penPickUp.name = "Pen pick up";
    
    penAbovePickUp1.x = 0.125;
    penAbovePickUp1.y = 0.125;
    penAbovePickUp1.z = drawingHeight + 0.05;
    penAbovePickUp1.theta = 0.0;
    penAbovePickUp1.gripper = gripperPenCubeHoldPos;
    penAbovePickUp1.groupToPrevious = false;
    penAbovePickUp1.timeForTrajectory = 0.25;
    penAbovePickUp1.name = "Pen above pick up";
    
    pickUpWaypoints = [penAbovePickUp, penPickUp, penAbovePickUp1];

    
    % Drawing Letter E
    E_line1Above.x = 0.18;
    E_line1Above.y = 0.155;
    E_line1Above.z = drawingHeight + 0.02;
    E_line1Above.timeForTrajectory = 0.3;
    E_line1Above.name = "Above E start";

    E_line1Start.x = 0.18;
    E_line1Start.y = 0.155;
    E_line1Start.z = drawingHeight;
    E_line1Start.timeForTrajectory = 0.1;
    E_line1Start.name = "E start";
    E_line1End.x = 0.2;
    E_line1End.y = 0.155;
    E_line1End.z = drawingHeight;
    E_line1End.timeForTrajectory = 0.5;
    E_line1End.name = "Horizontal line end";
    E_line2End.x = 0.2;
    E_line2End.y = 0.195;
    E_line2End.z = drawingHeight;
    E_line2End.timeForTrajectory = 0.8;
    E_line2End.name = "Vertical line end";
    E_line3End.x = 0.18;
    E_line3End.y = 0.195;
    E_line3End.z = drawingHeight;
    E_line3End.timeForTrajectory = 0.5;
    E_line3End.name = "Horizontal line end";
    E_line3AboveEnd.x = 0.18;
    E_line3AboveEnd.y = 0.195;
    E_line3AboveEnd.z = drawingHeight + 0.02;
    E_line3AboveEnd.timeForTrajectory = 0.2;
    E_line3AboveEnd.name = "Horizontal line end above";
    E_line4Above.x = 0.2;
    E_line4Above.y = 0.175;
    E_line4Above.z = drawingHeight + 0.02;
    E_line4Above.timeForTrajectory = 0.3;
    E_line4Above.name = "Above line 4 start";
    E_line4Start.x = 0.2;
    E_line4Start.y = 0.175;
    E_line4Start.z = drawingHeight;
    E_line4Start.timeForTrajectory = 0.1;
    E_line4Start.name = "Horizontal start";
    E_line4End.x = 0.18;
    E_line4End.y = 0.175;
    E_line4End.z = drawingHeight;
    E_line4End.timeForTrajectory = 0.35;
    E_line4End.name = "Horizontal end";
    E_line4EndAbove.x = 0.18;
    E_line4EndAbove.y = 0.175;
    E_line4EndAbove.z = drawingHeight + 0.02;
    E_line4EndAbove.timeForTrajectory = 0.35;
    E_line4EndAbove.name = "Horizontal end";
    
    E_lineWaypoints = [E_line1Above, E_line1Start, E_line1End, E_line2End, E_line3End, ...
                       E_line3AboveEnd, E_line4Above,E_line4Start, E_line4End, ...
                       E_line4EndAbove];

   % Drawing Letter N
   
    N_line1Above.x = 0.17;
    N_line1Above.y = 0.195;
    N_line1Above.z = drawingHeight + 0.02;
    N_line1Above.timeForTrajectory = 0.3;
    N_line1Above.name = "Above E start";

    N_line1Start.x = 0.17;
    N_line1Start.y = 0.195;
    N_line1Start.z = drawingHeight;
    N_line1Start.timeForTrajectory = 0.1;
    N_line1Start.name = "N start";
    N_line1End.x = 0.17;
    N_line1End.y = 0.155;
    N_line1End.z = drawingHeight;
    N_line1End.timeForTrajectory = 0.5;
    N_line1End.name = "Vertical line end";
    N_line2End.x = 0.15;
    N_line2End.y = 0.195;
    N_line2End.z = drawingHeight;
    N_line2End.timeForTrajectory = 0.8;
    N_line2End.name = "Diagnoal line end";
    N_line3End.x = 0.15;
    N_line3End.y = 0.155;
    N_line3End.z = drawingHeight;
    N_line3End.timeForTrajectory = 0.5;
    N_line3End.name = "Vertical line end";
    N_line3AboveEnd.x = 0.15;
    N_line3AboveEnd.y = 0.155;
    N_line3AboveEnd.z = drawingHeight + 0.02;
    N_line3AboveEnd.timeForTrajectory = 0.2;
    N_line3AboveEnd.name = "Horizontal line end above";

    N_lineWaypoints = [N_line1Above, N_line1Start, N_line1End, N_line2End, N_line3End, N_line3AboveEnd];
    
    line_waypoints = [E_lineWaypoints, N_lineWaypoints];
    % Constant for lines
    for i = 1 : length(line_waypoints)
       line_waypoints(i).theta = 0.0;
       line_waypoints(i).gripper = gripperPenCubeHoldPos;
       % Lines are more straight if they are defined by start and end waypoints
       % that are not grouped together. Multiple intermediate waypoints for
       % lines works less well.
       line_waypoints(i).groupToPrevious = false;
    end

    % Combine waypoints
    waypoints = [
       pickUpWaypoints,...
       E_lineWaypoints,...
       N_lineWaypoints
    ];


%     
%     % Draw arc
%     arc = drawArc([-0.06, 0.2, drawingHeight], [-0.10, 0.2, drawingHeight], pi, 0.1, false);
%     arcWaypoints = generateWaypointsByList(arc, 0.0, 0.0);
%     for i = 1 : length(arcWaypoints)
%         arcWaypoints(i).theta = 0.0;
%         arcWaypoints(i).gripper = gripperPenCubeHoldPos;
%         % Directly group to last line point as otherwise we have a delay before starting arc
%         arcWaypoints(i).groupToPrevious = true;
%         arcWaypoints(i).timeForTrajectory = 1;
%         arcWaypoints(i).name = "arc";
%     end
% 
%     aboveArcEnd.x = -0.14;
%     aboveArcEnd.y = 0.2;
%     aboveArcEnd.z = drawingHeight + 0.05;
%     aboveArcEnd.theta = 0.0;
%     aboveArcEnd.gripper = gripperPenCubeHoldPos;
%     aboveArcEnd.groupToPrevious = false;
%     aboveArcEnd.timeForTrajectory = 0.1;
%     aboveArcEnd.name = "Above arc end";
%     
%     

end
