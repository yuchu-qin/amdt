options
	center_gui_cells = false

typeside DataTypeObjects = literal {
    imports sql
    external_functions
    	stringToDouble : String -> Double =
     	"x => {if(x.isEmpty()) {return java.util.Optional.empty()} else {return java.util.Optional.of(java.lang.Double.parseDouble(x.get()))}}"
     	stringToInteger : String -> Integer =
     	"x => {if(x.isEmpty()) {return java.util.Optional.empty()} else {return java.util.Optional.of(java.lang.Integer.parseInt(x.get()))}}"
}

instance InstancesOfPLD = import_csv "E:/ProdData/" : DataTypeObjects

schema LinkCategoryCp = literal : DataTypeObjects {
	entities
    	LpbfPart
	attributes
    	partSN : LpbfPart -> String
    	partName : LpbfPart -> String
    	reqAnal : LpbfPart -> String
		prodDes : LpbfPart -> String
		procPlng : LpbfPart -> String
		partBld : LpbfPart -> String
		postProc : LpbfPart -> String
		qualInsp : LpbfPart -> String
		operUse : LpbfPart -> String
		endOfLife : LpbfPart -> String
}

schema LocalCategoryC1 = literal : DataTypeObjects {
	entities
    	ReqAnal
	attributes
		analNo : ReqAnal -> String
}

schema LocalCategoryC2 = literal : DataTypeObjects {
	entities
    	ProdDes
	attributes
		desNo : ProdDes -> String 
		partFunct : ProdDes -> String
		partForm : ProdDes -> String
		partSketch : ProdDes -> String
		bldMachine : ProdDes -> String
		bldMaterial : ProdDes -> String
		geomModel : ProdDes -> String
		tessModel : ProdDes -> String
		tmLength : ProdDes -> Double
		tmWidth : ProdDes -> Double
		tmHeight : ProdDes -> Double
		tmSurfArea : ProdDes -> Double
		tmVolume : ProdDes -> Double
		nOfFacets : ProdDes -> Integer
		dGeomAcc : ProdDes -> Double
		dSurfRgh : ProdDes -> Double
}

schema LocalCategoryC3 = literal : DataTypeObjects {
	entities
		ProcPlng

	attributes
		plngNo : ProcPlng -> String
		bldPos : ProcPlng -> String
		bldOrnt : ProcPlng -> String
		supStr : ProcPlng -> String
		ssGeom : ProcPlng -> String
		ssShape : ProcPlng -> String
		sliceData : ProcPlng -> String
		lsBeamType : ProcPlng -> String
		lsBeamMode : ProcPlng -> String
		lsBeamWav : ProcPlng -> Double
		spotDiam : ProcPlng -> Double
		scanPattern : ProcPlng -> String
		lyrThickness : ProcPlng -> Double
		laserPower : ProcPlng -> Double
		scanSpeed : ProcPlng -> Double
		hatchDist : ProcPlng -> Double
}

schema LocalCategoryC4 = literal : DataTypeObjects {
	entities
    	PartBld
	attributes
		bldNo : PartBld -> String
}

schema LocalCategoryC5 = literal : DataTypeObjects {
	entities
    	PostProc
	attributes
		procNo : PostProc -> String
}

schema LocalCategoryC6 = literal : DataTypeObjects {
	entities
		QualInsp

	attributes
		inspNo : QualInsp -> String
		geomAccMT : QualInsp -> String
		mGeomAcc : QualInsp -> Double
		surfRghMT : QualInsp -> String
		mSurfRgh : QualInsp -> Double
}

schema LocalCategoryC7 = literal : DataTypeObjects {
	entities
    	OperUse
	attributes
		useNo : OperUse -> String
}

schema LocalCategoryC8 = literal : DataTypeObjects {
	entities
    	EndOfLife
	attributes
		eolNo : EndOfLife -> String
}

schema GlobalCategoryC = literal : DataTypeObjects {
	entities
    	LpbfPart
    	ReqAnal
    	ProdDes
    	ProcPlng
    	PartBld
    	PostProc
    	QualInsp
    	OperUse
    	EndOfLife
	attributes
    	partSN : LpbfPart -> String
    	partName : LpbfPart -> String
    	reqAnal : LpbfPart -> String
		prodDes : LpbfPart -> String
		procPlng : LpbfPart -> String
		partBld : LpbfPart -> String
		postProc : LpbfPart -> String
		qualInsp : LpbfPart -> String
		operUse : LpbfPart -> String
		endOfLife : LpbfPart -> String

    	analNo : ReqAnal -> String 
		functReq : ReqAnal -> String 
		qualReq : ReqAnal -> String 
		geomReq : ReqAnal -> String 
		materReq : ReqAnal -> String
		procReq : ReqAnal -> String
		operReq : ReqAnal -> String 
		compReq : ReqAnal -> String
		prodConstr : ReqAnal -> String 
		feasAssmt : ReqAnal -> String
		riskConsid : ReqAnal -> String

		desNo : ProdDes -> String 
		partFunct : ProdDes -> String
		partForm : ProdDes -> String
		partSketch : ProdDes -> String
		bldMachine : ProdDes -> String
		bldMaterial : ProdDes -> String
		geomModel : ProdDes -> String
		tessModel : ProdDes -> String
		tmLength : ProdDes -> Double
		tmWidth : ProdDes -> Double
		tmHeight : ProdDes -> Double
		tmSurfArea : ProdDes -> Double
		tmVolume : ProdDes -> Double
		nOfFacets : ProdDes -> Integer
		dDimAcc : ProdDes -> Double
		dGeomAcc : ProdDes -> Double
		dSurfRgh : ProdDes -> Double
		dSurfWav : ProdDes -> Double
		dUTS : ProdDes -> Double
		dYieldStr : ProdDes -> Double
		dVickHard : ProdDes -> Double
		dElong : ProdDes -> Double
		dFatigStr : ProdDes -> Double
		dTough : ProdDes -> Double
		dResdStr : ProdDes -> Double
		dDensity : ProdDes -> Double
		dPorosity : ProdDes -> Double

		plngNo : ProcPlng -> String 
		bldPos : ProcPlng -> String 
		bldOrnt : ProcPlng -> String 
		supStr : ProcPlng -> String 
		ssGeom : ProcPlng -> String 
		ssShape : ProcPlng -> String 
		ssVol : ProcPlng -> Double
		srArea : ProcPlng -> Double
		sliceData : ProcPlng -> String
		contGeom : ProcPlng -> String
		lsBeamType : ProcPlng -> String
		lsBeamMode : ProcPlng -> String
		lsBeamWav : ProcPlng -> Double
		spotDiam : ProcPlng -> Double
		pulseFreq : ProcPlng -> Double
		pulseWidth : ProcPlng -> Double
		scanPattern : ProcPlng -> String
		lyrThickness : ProcPlng -> Double
		laserPower : ProcPlng -> Double
		scanSpeed : ProcPlng -> Double
		hatchDist : ProcPlng -> Double
		recSpeed : ProcPlng -> Double
		dosPerLyr : ProcPlng -> Double
		bulkTemp : ProcPlng -> Double 
		oxygenLevel : ProcPlng -> Double
		chPressure : ProcPlng -> Double 
		gasFlowSpd : ProcPlng -> Double 
		ambTemp : ProcPlng -> Double

		bldNo : PartBld -> String
		bldTime : PartBld -> Double
		bldCost : PartBld -> Double
		pHeatTemp : PartBld -> Double
		chTemp : PartBld -> Double
		mpTemp : PartBld -> Double
		mpGeom : PartBld -> String
		plumeSig : PartBld -> String
		spatterSig : PartBld -> String
		aeLevel : PartBld -> Double
		trackDepth : PartBld -> Double
		trackWidth : PartBld -> Double
		trackCont : PartBld -> Double
		trackOvl : PartBld -> Double
		trackMc : PartBld -> String
		trackCons : PartBld -> String
		thermImg : PartBld -> String
		intensVar : PartBld -> Double
		lyrSurfTopo : PartBld -> String
		lyrSurfTemp : PartBld -> Double
		lyrDefect : PartBld -> String
		pbSurfTopo : PartBld -> String
		pbAnomaly : PartBld -> String
		procDev : PartBld -> String

		procNo : PostProc -> String
		procTime : PostProc -> Double
		procCost : PostProc -> Double
		heatTrtMtd : PostProc -> String
		heatTrtSeq : PostProc -> String
		heatTrtAtm : PostProc -> String 
		heatingRate : PostProc -> Double 
		finalTemp : PostProc -> Double
		holdingTime : PostProc -> Double
		coolingRate : PostProc -> Double
		coolingMed : PostProc -> String
		removalMtd : PostProc -> String
		removalTime : PostProc -> Double
		removalSett : PostProc -> String
		waterType : PostProc -> String
		wireDiam : PostProc -> Double
		fixtureSetup : PostProc -> String
		machType : PostProc -> String
		machMtd : PostProc -> String
		machPlan : PostProc -> String
		finishMtd : PostProc -> String
		finishPlan : PostProc -> String
		paintingMtd : PostProc -> String
		paintingPlan : PostProc -> String

		inspNo : QualInsp -> String
		dimAccMT : QualInsp -> String
		mDimAcc : QualInsp -> Double
		geomAccMT : QualInsp -> String
		mGeomAcc : QualInsp -> Double
		surfRghMT : QualInsp -> String
		mSurfRgh : QualInsp -> Double
		surfWavMT : QualInsp -> String
		mSurfWav : QualInsp -> Double
		utsMT : QualInsp -> String
		mUTS : QualInsp -> Double
		yieldStrMT : QualInsp -> String
		mYieldStr : QualInsp -> Double
		vickHardMT : QualInsp -> String
		mVickHard : QualInsp -> Double
		elongMT : QualInsp -> String
		mElong : QualInsp -> Double
		fatigStrMT : QualInsp -> String
		mFatigStr : QualInsp -> Double
		toughMT : QualInsp -> String
		mTough : QualInsp -> Double
		resdStrMT : QualInsp -> String
		mResdStr : QualInsp -> Double
		densityMT : QualInsp -> String
		mDensity : QualInsp -> Double
		porosityMT : QualInsp -> String
		mPorosity : QualInsp -> Double
		passOrFail : QualInsp -> String

		useNo : OperUse -> String
		operEnv : OperUse -> String
		useFreq : OperUse -> Integer
		servLife : OperUse -> Double
		remLife : OperUse -> Double
		prodCond : OperUse -> String
		replHist : OperUse -> String
		maintSch : OperUse -> String
		maintRec : OperUse -> String
		incReport : OperUse -> String
		repairRec : OperUse -> String

		eolNo : EndOfLife -> String
		returnInfo : EndOfLife -> String
		reuseAnal : EndOfLife -> String
		partRefurb : EndOfLife -> String
		materRecyc : EndOfLife -> String
		wasteDisp : EndOfLife -> String
		envImpact : EndOfLife -> String
}

constraints ConstraintsOnC = literal : GlobalCategoryC {
  	forall p:LpbfPart ->
    	exists s1:ReqAnal
    	where p.reqAnal = s1.analNo

  	forall p:LpbfPart ->
    	exists s2:ProdDes
    	where p.prodDes = s2.desNo

  	forall p:LpbfPart ->
    	exists s3:ProcPlng
    	where p.procPlng = s3.plngNo

  	forall p:LpbfPart ->
    	exists s4:PartBld
    	where p.partBld = s4.bldNo

  	forall p:LpbfPart ->
    	exists s5:PostProc
    	where p.postProc = s5.procNo

  	forall p:LpbfPart ->
    	exists s6:QualInsp
    	where p.qualInsp = s6.inspNo

  	forall p:LpbfPart ->
    	exists s7:OperUse
    	where p.operUse = s7.useNo

  	forall p:LpbfPart ->
    	exists s8:EndOfLife
    	where p.endOfLife = s8.eolNo

   	forall x y : LpbfPart
		where 
			x.partSN = y.partSN
		->
		where
		  	x.partName = y.partName
		  	x.reqAnal = y.reqAnal
		  	x.prodDes = y.prodDes
		  	x.procPlng = y.procPlng
		  	x.partBld = y.partBld
		  	x.postProc = y.postProc
		  	x.qualInsp = y.qualInsp
		  	x.operUse = y.operUse
		  	x.endOfLife = y.endOfLife

	forall x y : ReqAnal
  		where
    		x.analNo = y.analNo
  		->
  		where
		    x.functReq = y.functReq
		    x.qualReq = y.qualReq
		    x.geomReq = y.geomReq
		    x.materReq = y.materReq
		    x.procReq = y.procReq
		    x.operReq = y.operReq
		    x.compReq = y.compReq
		    x.prodConstr = y.prodConstr
		    x.feasAssmt = y.feasAssmt
		    x.riskConsid = y.riskConsid

	forall x y : ProdDes
  		where
    		x.desNo = y.desNo
  		->
  		where
		    x.partFunct = y.partFunct
		    x.partForm = y.partForm
		    x.partSketch = y.partSketch
		    x.bldMachine = y.bldMachine
		    x.bldMaterial = y.bldMaterial
		    x.geomModel = y.geomModel
		    x.tessModel = y.tessModel
		    x.tmLength = y.tmLength
		    x.tmWidth = y.tmWidth
		    x.tmHeight = y.tmHeight
		    x.tmSurfArea = y.tmSurfArea
		    x.tmVolume = y.tmVolume
		    x.nOfFacets = y.nOfFacets
		    x.dDimAcc = y.dDimAcc
		    x.dGeomAcc = y.dGeomAcc
		    x.dSurfRgh = y.dSurfRgh
		    x.dSurfWav = y.dSurfWav
		    x.dUTS = y.dUTS
		    x.dYieldStr = y.dYieldStr
		    x.dVickHard = y.dVickHard
		    x.dElong = y.dElong
		    x.dFatigStr = y.dFatigStr
		    x.dTough = y.dTough
		    x.dResdStr = y.dResdStr
		    x.dDensity = y.dDensity
		    x.dPorosity = y.dPorosity

	forall x y : ProcPlng
  		where
    		x.plngNo = y.plngNo
  		->
  		where
		    x.bldPos = y.bldPos
		    x.bldOrnt = y.bldOrnt
		    x.supStr = y.supStr
		    x.ssGeom = y.ssGeom
		    x.ssShape = y.ssShape
		    x.ssVol = y.ssVol
		    x.srArea = y.srArea
		    x.sliceData = y.sliceData
		    x.contGeom = y.contGeom
		    x.lsBeamType = y.lsBeamType
		    x.lsBeamMode = y.lsBeamMode
		    x.lsBeamWav = y.lsBeamWav
		    x.spotDiam = y.spotDiam
		    x.pulseFreq = y.pulseFreq
		    x.pulseWidth = y.pulseWidth
		    x.scanPattern = y.scanPattern
		    x.lyrThickness = y.lyrThickness
		    x.laserPower = y.laserPower
		    x.scanSpeed = y.scanSpeed
		    x.hatchDist = y.hatchDist
		    x.recSpeed = y.recSpeed
		    x.dosPerLyr = y.dosPerLyr
		    x.bulkTemp = y.bulkTemp
		    x.oxygenLevel = y.oxygenLevel
		    x.chPressure = y.chPressure
		    x.gasFlowSpd = y.gasFlowSpd
		    x.ambTemp = y.ambTemp

	forall x y : PartBld
  		where
    		x.bldNo = y.bldNo
  		->
  		where
		    x.bldTime = y.bldTime
		    x.bldCost = y.bldCost
		    x.pHeatTemp = y.pHeatTemp
		    x.chTemp = y.chTemp
		    x.mpTemp = y.mpTemp
		    x.mpGeom = y.mpGeom
		    x.plumeSig = y.plumeSig
		    x.spatterSig = y.spatterSig
		    x.aeLevel = y.aeLevel
		    x.trackDepth = y.trackDepth
		    x.trackWidth = y.trackWidth
		    x.trackCont = y.trackCont
		    x.trackOvl = y.trackOvl
		    x.trackMc = y.trackMc
		    x.trackCons = y.trackCons
		    x.thermImg = y.thermImg
		    x.intensVar = y.intensVar
		    x.lyrSurfTopo = y.lyrSurfTopo
		    x.lyrSurfTemp = y.lyrSurfTemp
		    x.lyrDefect = y.lyrDefect
		    x.pbSurfTopo = y.pbSurfTopo
		    x.pbAnomaly = y.pbAnomaly
		    x.procDev = y.procDev

	forall x y : PostProc
  		where
    		x.procNo = y.procNo
  		->
  	where
	    x.procTime = y.procTime
	    x.procCost = y.procCost
	    x.heatTrtMtd = y.heatTrtMtd
	    x.heatTrtSeq = y.heatTrtSeq
	    x.heatTrtAtm = y.heatTrtAtm
	    x.heatingRate = y.heatingRate
	    x.finalTemp = y.finalTemp
	    x.holdingTime = y.holdingTime
	    x.coolingRate = y.coolingRate
	    x.coolingMed = y.coolingMed
	    x.removalMtd = y.removalMtd
	    x.removalTime = y.removalTime
	    x.removalSett = y.removalSett
	    x.waterType = y.waterType
	    x.wireDiam = y.wireDiam
	    x.fixtureSetup = y.fixtureSetup
	    x.machType = y.machType
	    x.machMtd = y.machMtd
	    x.machPlan = y.machPlan
	    x.finishMtd = y.finishMtd
	    x.finishPlan = y.finishPlan
	    x.paintingMtd = y.paintingMtd
	    x.paintingPlan = y.paintingPlan

	forall x y : QualInsp
  		where
    		x.inspNo = y.inspNo
  		->
  		where
		    x.dimAccMT = y.dimAccMT
		    x.mDimAcc = y.mDimAcc
		    x.geomAccMT = y.geomAccMT
		    x.mGeomAcc = y.mGeomAcc
		    x.surfRghMT = y.surfRghMT
		    x.mSurfRgh = y.mSurfRgh
		    x.surfWavMT = y.surfWavMT
		    x.mSurfWav = y.mSurfWav
		    x.utsMT = y.utsMT
		    x.mUTS = y.mUTS
		    x.yieldStrMT = y.yieldStrMT
		    x.mYieldStr = y.mYieldStr
		    x.vickHardMT = y.vickHardMT
		    x.mVickHard = y.mVickHard
		    x.elongMT = y.elongMT
		    x.mElong = y.mElong
		    x.fatigStrMT = y.fatigStrMT
		    x.mFatigStr = y.mFatigStr
		    x.toughMT = y.toughMT
		    x.mTough = y.mTough
		    x.resdStrMT = y.resdStrMT
		    x.mResdStr = y.mResdStr
		    x.densityMT = y.densityMT
		    x.mDensity = y.mDensity
		    x.porosityMT = y.porosityMT
		    x.mPorosity = y.mPorosity
		    x.passOrFail = y.passOrFail

	forall x y : OperUse
  		where
    		x.useNo = y.useNo
  		->
  		where
		    x.operEnv = y.operEnv
		    x.useFreq = y.useFreq
		    x.servLife = y.servLife
		    x.remLife = y.remLife
		    x.prodCond = y.prodCond
		    x.replHist = y.replHist
		    x.maintSch = y.maintSch
		    x.maintRec = y.maintRec
		    x.incReport = y.incReport
		    x.repairRec = y.repairRec

	 forall x y : EndOfLife
  		where
    		x.eolNo = y.eolNo
  		->
  		where
		    x.returnInfo = y.returnInfo
		    x.reuseAnal = y.reuseAnal
		    x.partRefurb = y.partRefurb
		    x.materRecyc = y.materRecyc
		    x.wasteDisp = y.wasteDisp
		    x.envImpact = y.envImpact
}

mapping FunctorFromCpToPLD = literal : LinkCategoryCp -> schemaOf InstancesOfPLD {
  	entity
    	LpbfPart -> LpbfPart
  	attributes
    	partSN -> partSN
    	partName -> partName
    	reqAnal -> reqAnal
		prodDes -> prodDes
		procPlng -> procPlng
		partBld -> partBld
		postProc -> postProc
		qualInsp -> qualInsp
		operUse -> operUse
		endOfLife -> endOfLife
}

mapping FunctorFromC1ToPLD = literal : LocalCategoryC1 -> schemaOf InstancesOfPLD {
  	entity
    	ReqAnal -> ReqAnal
  	attributes
    	analNo -> analNo 
}

mapping FunctorFromC2ToPLD = literal : LocalCategoryC2 -> schemaOf InstancesOfPLD {
  	entity
    	ProdDes -> ProdDes
  	attributes
    	desNo -> desNo  
		partFunct -> partFunct
		partForm -> partForm
		partSketch -> partSketch
		bldMachine -> bldMachine
		bldMaterial -> bldMaterial
		geomModel -> geomModel
		tessModel -> tessModel
		tmLength -> lambda x. stringToDouble(x.tmLength)
		tmWidth -> lambda x. stringToDouble(x.tmWidth)
		tmHeight -> lambda x. stringToDouble(x.tmHeight)
		tmSurfArea -> lambda x. stringToDouble(x.tmSurfArea)
		tmVolume -> lambda x. stringToDouble(x.tmVolume)
		nOfFacets -> lambda x. stringToInteger(x.nOfFacets)
		dGeomAcc -> lambda x. stringToDouble(x.dGeomAcc)
		dSurfRgh -> lambda x. stringToDouble(x.dSurfRgh)
}

mapping FunctorFromC3ToPLD = literal : LocalCategoryC3 -> schemaOf InstancesOfPLD {
  	entity
    	ProcPlng -> ProcPlng
  	attributes
    	plngNo -> plngNo
    	bldPos -> bldPos
    	bldOrnt -> bldOrnt
    	supStr -> supStr
    	ssGeom -> ssGeom
    	ssShape -> ssShape
    	sliceData -> sliceData
    	lsBeamType -> lsBeamType
    	lsBeamMode -> lsBeamMode
    	lsBeamWav -> lambda x. stringToDouble(x.lsBeamWav)
    	spotDiam -> lambda x. stringToDouble(x.spotDiam)
    	scanPattern -> scanPattern
    	lyrThickness -> lambda x. stringToDouble(x.lyrThickness)
    	laserPower -> lambda x. stringToDouble(x.laserPower)
    	scanSpeed -> lambda x. stringToDouble(x.scanSpeed)
    	hatchDist -> lambda x. stringToDouble(x.hatchDist)
}

mapping FunctorFromC4ToPLD = literal : LocalCategoryC4 -> schemaOf InstancesOfPLD {
  	entity
    	PartBld -> PartBld
  	attributes
    	bldNo -> bldNo 
}

mapping FunctorFromC5ToPLD = literal : LocalCategoryC5 -> schemaOf InstancesOfPLD {
  	entity
    	PostProc -> PostProc
  	attributes
    	procNo -> procNo 
}

mapping FunctorFromC6ToPLD = literal : LocalCategoryC6 -> schemaOf InstancesOfPLD {
  	entity
    	QualInsp -> QualInsp
  	attributes
    	inspNo -> inspNo
    	geomAccMT -> geomAccMT
    	mGeomAcc -> lambda x. stringToDouble(x.mGeomAcc)  	
    	surfRghMT -> surfRghMT
    	mSurfRgh -> lambda x. stringToDouble(x.mSurfRgh)	
}

mapping FunctorFromC7ToPLD = literal : LocalCategoryC7 -> schemaOf InstancesOfPLD {
  	entity
    	OperUse -> OperUse
  	attributes
    	useNo -> useNo 
}

mapping FunctorFromC8ToPLD = literal : LocalCategoryC8 -> schemaOf InstancesOfPLD {
  	entity
    	EndOfLife -> EndOfLife
  	attributes
    	eolNo -> eolNo 
}

instance InstancesOfCp = delta FunctorFromCpToPLD InstancesOfPLD

instance InstancesOfC1 = delta FunctorFromC1ToPLD InstancesOfPLD

instance InstancesOfC2 = delta FunctorFromC2ToPLD InstancesOfPLD

instance InstancesOfC3 = delta FunctorFromC3ToPLD InstancesOfPLD

instance InstancesOfC4 = delta FunctorFromC4ToPLD InstancesOfPLD

instance InstancesOfC5 = delta FunctorFromC5ToPLD InstancesOfPLD

instance InstancesOfC6 = delta FunctorFromC6ToPLD InstancesOfPLD

instance InstancesOfC7 = delta FunctorFromC7ToPLD InstancesOfPLD

instance InstancesOfC8 = delta FunctorFromC8ToPLD InstancesOfPLD

mapping FunctorFromCpToC = literal : LinkCategoryCp -> GlobalCategoryC {
  	entity
    	LpbfPart -> LpbfPart 	
  	attributes
    	partSN -> partSN
    	partName -> partName
		reqAnal -> reqAnal
		prodDes -> prodDes
		procPlng -> procPlng
		partBld -> partBld
		postProc -> postProc
		qualInsp -> qualInsp
		operUse -> operUse
		endOfLife -> endOfLife
}

mapping FunctorFromC1ToC = literal : LocalCategoryC1 -> GlobalCategoryC {
  	entity
    	ReqAnal -> ReqAnal
  	attributes
    	analNo -> analNo
}

mapping FunctorFromC2ToC = literal : LocalCategoryC2 -> GlobalCategoryC {
  	entity
    	ProdDes -> ProdDes
  	attributes	
		desNo -> desNo
		partFunct -> partFunct
		partForm -> partForm
		partSketch -> partSketch
		bldMachine -> bldMachine
		bldMaterial -> bldMaterial
		geomModel -> geomModel
		tessModel -> tessModel
		tmLength -> tmLength
		tmWidth -> tmWidth
		tmHeight -> tmHeight
		tmSurfArea -> tmSurfArea
		tmVolume -> tmVolume
		nOfFacets -> nOfFacets
		dGeomAcc -> dGeomAcc
		dSurfRgh -> dSurfRgh
}

mapping FunctorFromC3ToC = literal : LocalCategoryC3 -> GlobalCategoryC {
  	entity
    	ProcPlng -> ProcPlng
  	attributes
    	plngNo -> plngNo
    	bldPos -> bldPos
    	bldOrnt -> bldOrnt
    	supStr -> supStr
    	ssGeom -> ssGeom
    	ssShape -> ssShape
    	sliceData -> sliceData
    	lsBeamType -> lsBeamType
    	lsBeamMode -> lsBeamMode
    	lsBeamWav -> lsBeamWav
    	spotDiam -> spotDiam
    	scanPattern -> scanPattern
    	lyrThickness -> lyrThickness
    	laserPower -> laserPower
    	scanSpeed -> scanSpeed
    	hatchDist -> hatchDist
}

mapping FunctorFromC4ToC = literal : LocalCategoryC4 -> GlobalCategoryC {
  	entity
    	PartBld -> PartBld
  	attributes
    	bldNo -> bldNo
}

mapping FunctorFromC5ToC = literal : LocalCategoryC5 -> GlobalCategoryC {
  	entity
    	PostProc -> PostProc
  	attributes
    	procNo -> procNo
}

mapping FunctorFromC6ToC = literal : LocalCategoryC6 -> GlobalCategoryC {
  	entity
    	QualInsp -> QualInsp
  	attributes
    	inspNo -> inspNo  	
    	geomAccMT -> geomAccMT
    	mGeomAcc -> mGeomAcc
    	surfRghMT -> surfRghMT 	
    	mSurfRgh -> mSurfRgh
}

mapping FunctorFromC7ToC = literal : LocalCategoryC7 -> GlobalCategoryC {
  	entity
    	OperUse -> OperUse
  	attributes
    	useNo -> useNo
}

mapping FunctorFromC8ToC = literal : LocalCategoryC8 -> GlobalCategoryC {
  	entity
    	EndOfLife -> EndOfLife
  	attributes
    	eolNo -> eolNo
}

instance InstancesOfCP = sigma FunctorFromCpToC InstancesOfCp

instance InstancesOfCa = sigma FunctorFromC1ToC InstancesOfC1

instance InstancesOfCb = sigma FunctorFromC2ToC InstancesOfC2

instance InstancesOfCc = sigma FunctorFromC3ToC InstancesOfC3

instance InstancesOfCd = sigma FunctorFromC4ToC InstancesOfC4

instance InstancesOfCe = sigma FunctorFromC5ToC InstancesOfC5

instance InstancesOfCf = sigma FunctorFromC6ToC InstancesOfC6

instance InstancesOfCg = sigma FunctorFromC7ToC InstancesOfC7

instance InstancesOfCh = sigma FunctorFromC8ToC InstancesOfC8

instance InstancesOfC = coproduct InstancesOfCP + InstancesOfCa + InstancesOfCb + InstancesOfCc + InstancesOfCd + InstancesOfCe + InstancesOfCf + InstancesOfCg + InstancesOfCh : GlobalCategoryC

command checkConsistency = check ConstraintsOnC InstancesOfC

schema TargetCategory = literal : DataTypeObjects {
  entities
  	LpbfPart
  	ProdDes
    QualInsp
  attributes
  	partSN : LpbfPart -> String
  	partName : LpbfPart -> String
  	prodDes : LpbfPart -> String
  	qualInsp : LpbfPart -> String
  	desNo : ProdDes -> String
  	dGeomAcc : ProdDes -> Double
    dSurfRgh : ProdDes -> Double
    inspNo : QualInsp -> String
    mGeomAcc : QualInsp -> Double
    mSurfRgh : QualInsp -> Double
}

query VerifQuery = literal : GlobalCategoryC -> TargetCategory {
  entity
      LpbfPart -> {from x:LpbfPart
              attributes
                partSN -> x.partSN
                partName -> x.partName
                prodDes -> x.prodDes
                qualInsp -> x.qualInsp}
  entity
      ProdDes -> {from x:ProdDes
              attributes
				desNo -> x.desNo
                dGeomAcc -> x.dGeomAcc
                dSurfRgh -> x.dSurfRgh}           
  entity
      QualInsp -> {from x:QualInsp
              attributes
              	inspNo -> x.inspNo
                mGeomAcc -> x.mGeomAcc
                mSurfRgh -> x.mSurfRgh}
}

instance QueryResult = eval VerifQuery InstancesOfC

schema NewLocalCategoryC6 = literal : DataTypeObjects {
	entities
		QualInsp

	attributes
		inspNo : QualInsp -> String
		geomAccMT : QualInsp -> String
		mGeomAcc : QualInsp -> Double
		surfRghMT : QualInsp -> String
		mSurfRgh : QualInsp -> Double
		porosityMT : QualInsp -> String
		mPorosity : QualInsp -> Double
}

mapping FunctorFromOldC6ToNewC6 = literal : LocalCategoryC6 -> NewLocalCategoryC6 {
  	entity
    	QualInsp -> QualInsp
  	attributes
    	inspNo -> inspNo
    	geomAccMT -> geomAccMT
    	mGeomAcc -> mGeomAcc  	
    	surfRghMT -> surfRghMT
    	mSurfRgh -> mSurfRgh	
}

instance InstancesOfNewC6fromOldC6 = sigma FunctorFromOldC6ToNewC6 InstancesOfC6

query ExtendNewC6 = literal : NewLocalCategoryC6 -> NewLocalCategoryC6 {
  entity
    QualInsp -> {
      from q:QualInsp
      attributes
        inspNo -> q.inspNo
        geomAccMT -> q.geomAccMT
        mGeomAcc -> q.mGeomAcc
        surfRghMT -> q.surfRghMT
        mSurfRgh -> q.mSurfRgh
        porosityMT -> "Nikon XTH 225"
        mPorosity -> "0.2"
    }
}

instance InstancesOfNewC6 = eval ExtendNewC6 InstancesOfNewC6fromOldC6

query UpdateC6 = literal : LocalCategoryC6 -> LocalCategoryC6 {
  entity
    QualInsp -> {
      from q:QualInsp

      attributes
        inspNo -> q.inspNo
        geomAccMT -> q.geomAccMT
        mGeomAcc -> "48.0"
        surfRghMT -> q.surfRghMT
        mSurfRgh -> "18.0"
    }
}

instance InstancesOfUpdatedC6 = eval UpdateC6 InstancesOfC6