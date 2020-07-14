Import blitz3d.blitz3dsdk

Import "player.bmx"
Import "obstacle.bmx"
Import "tilemap.bmx"
Import "yengine.bmx"

'////////////////game_world/////////////////////

Type game_world Extends yworld

	Method update()
		Super.update()
		
	End Method
	
	Method init()
		Super.init()
		

		
		Local tstmap:String[][] = [["1","1","1"],["1","1","1"],["2","2","2"],["1","2","1"],["1","2","1"],["2","2","2"],["2","1","2"],["1","1","1"],["1","1","1"]]
		
		tm:ytilemap = ytilemap.Create()
		add(tm)
		tm.lmap = tstmap
		tm.make_tilemap()
		
		
		
		c =  bbCreateCube()
		add( player.Create( 0,-5,7,c,0.2 ) )
		
		c2 =  bbCreateCube()
		add( obstacle.Create( 0,-5,18,c2,0 ) )
		c3 =  bbCreateCube()
		add( obstacle.Create( -3,-3,18,c3,0 ) )
	

	
	End Method
	
	Function Create:game_world()
		
		tst:game_world=  New game_world

		
		Return tst
	
	End Function

End Type

'////////////////end game_world/////////////////////