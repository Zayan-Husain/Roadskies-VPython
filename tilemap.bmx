
Import blitz3d.blitz3dsdk

Import "obstacle.bmx"
Import "yengine.bmx"

'////////////////tilemap////////////////////
Type ytilemap Extends yentity

	'mx =margin x
	Field lmap:String[][],mx=0,mz=30
	
	Method make_tile(id$,j,i)
	
		If id=1 Then
			c =  bbCreateCube()
			o:obstacle =  obstacle.Create( j,-5,i,c,0 )
			world.add(o)
		EndIf
		If id=2 Then
			c1 =  bbCreateCube()
			c2 =  bbCreateCube()
			o:obstacle =  obstacle.Create( j,-5,i,c1,0 )
			o2:obstacle =  obstacle.Create( j,-3,i,c2,0 )
			world.add(o)
			world.add(o2)
		EndIf
	
	End Method'end make_tile
	
		
	Method make_tilemap()
	
		
		
		rows = lmap.length 
		cols = lmap[0].length 	
	
		For i=0 To rows -1
			
		  For j=0 To cols -1
			 make_tile(lmap[i][j],j+mx,i+mz)
		  Next
		Next
	End Method'end make_tilemap
	

	
	Function Create:ytilemap(x#=0,y#=0,z#=0,grafic%=0,speed#=0)
		
		e:ytilemap =  New ytilemap
		'lmap = lmap2
		e.x = 0
		e.y = 0
		e.z = 0
		e.speed = 0
		e.grafic= 0
		e.ytype = "tilemap"

		
		Return e
	
	End Function

End Type


'////////////////end tilemap////////////////////