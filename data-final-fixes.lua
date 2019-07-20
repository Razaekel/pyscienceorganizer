----------------------------------------------
-- Logistic Science Pack
----------------------------------------------
RECIPE("logistic-science-pack"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')

RECIPE("alien-sample01"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')
RECIPE("bio-sample01"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')
RECIPE("ground-sample01"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')
RECIPE("lab-instrument"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')
RECIPE("equipment-chassi"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')
RECIPE("lens"):remove_unlock('coal-processing-1'):add_unlock('logistic-science-pack')

--add prerequisites
TECHNOLOGY("logistic-science-pack"):add_prereq('coal-processing-1')

if mods["pyrawores"] then
	TECHNOLOGY("logistic-science-pack"):remove_prereq('coal-processing-1'):add_prereq('aluminium-mk01')
end

if mods["pyrawores"] and mods["pypetroleumhandling"] then
	TECHNOLOGY("logistic-science-pack"):remove_prereq('aluminium-mk01'):add_prereq('rubber')
end

--fix other tech pre-reqs
TECHNOLOGY('military-2'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('automation-2'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('circuit-network'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('logistics-2'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('solar-energy'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('electric-energy-distribution-1'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('landfill'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('engine'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('toolbelt'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')
TECHNOLOGY('advanced-material-processing'):remove_prereq('coal-processing-1'):add_prereq('logistic-science-pack')


--if Py Raw Ores is enabled, engines don't require logistics
if mods["pyrawores"] then
	TECHNOLOGY('engine'):remove_prereq('logistic-science-pack')
end

--add missing pre-req
TECHNOLOGY('sulfur-processing'):add_prereq('logistic-science-pack')

----------------------------------------------
-- Chemical Science Pack
----------------------------------------------
RECIPE("chemical-science-pack"):remove_unlock('fine-electronics'):add_unlock('chemical-science-pack')

--add prerequisites
TECHNOLOGY('chemical-science-pack'):add_prereq('fine-electronics')

if mods["pyhightech"] then
	TECHNOLOGY("chemical-science-pack"):add_prereq('semiconductor-doping'):add_prereq('aluminium-mk02')
end

if mods["pyrawores"] and mods["pyhightech"] then
	TECHNOLOGY("chemical-science-pack"):add_prereq('iron-mk02')
end

--fix other tech pre-reqs
TECHNOLOGY('electric-energy-distribution-2'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('advanced-electronics-2'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('auto-character-logistic-trash-slots'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('braking-force-1'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('advanced-material-processing-2'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('personal-roboport-equipment'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('worker-robots-speed-1'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('worker-robots-storage-1'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('advanced-oil-processing'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('low-density-structure'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('military-3'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')
TECHNOLOGY('uranium-processing'):remove_prereq('fine-electronics'):add_prereq('chemical-science-pack')

--add missing pre-req
TECHNOLOGY('coal-processing-3'):add_prereq('chemical-science-pack')

----------------------------------------------
-- Production Science Pack (Modified by PyFusionEnergy)
----------------------------------------------
if mods["pyfusionenergy"] then
	RECIPE("production-science-pack"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')

	RECIPE("coated-container"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
	RECIPE("lead-container"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
	RECIPE("science-coating"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
	RECIPE("control-unit"):remove_unlock('advanced-mining-facilities'):add_unlock('production-science-pack')
	RECIPE("nuclear-sample"):remove_unlock('advanced-mining-facilities'):add_unlock('production-science-pack')

	--add prerequisites
	TECHNOLOGY('production-science-pack'):add_prereq('advanced-mining-facilities'):add_prereq('fuel-production')
	
	if mods['pyrawores'] then
		TECHNOLOGY('production-science-pack'):add_prereq('diamond-mining'):add_prereq('coal-processing-3')
	end

	--fix other tech pre-reqs
	TECHNOLOGY('automation-3'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('logistics-3'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('coal-liquefaction'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('kovarex-enrichment-process'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('nuclear-fuel-reprocessing'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('speed-module-3'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('productivity-module-3'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('effectivity-module-3'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('effect-transmission'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	TECHNOLOGY('fusion-mk01'):remove_prereq('diamond-mining'):add_prereq('production-science-pack')
	
	--add missing pre-req
	TECHNOLOGY('regolite-mining'):add_prereq('production-science-pack')	
end

----------------------------------------------
-- Technology Fixes
----------------------------------------------
TECHNOLOGY('advanced-electronics-2'):add_prereq('advanced-electronics')
TECHNOLOGY('construction-robotics'):add_prereq('robotics')

if mods['pyrawores'] then
	TECHNOLOGY('gold'):remove_pack('production-science-pack'):remove_prereq('machines-mk03')
	TECHNOLOGY('machines-mk04'):add_prereq('production-science-pack'):add_prereq('utility-science-pack')
	TECHNOLOGY('advanced-electronics-2'):remove_prereq('chemical-science-pack'):add_prereq('gold')
	TECHNOLOGY('fuel-production'):add_prereq('chemical-science-pack')
	TECHNOLOGY('advanced-material-processing-2'):add_prereq('iron-mk03')
end

if mods['pyindustry'] then
	TECHNOLOGY('py-warehouse-logistics-research'):add_prereq('chemical-science-pack')
end

----------------------------------------------
-- Recipe Fixes
----------------------------------------------
RECIPE("iron-oxide-breakdown"):remove_unlock('coal-processing-1'):add_unlock('sulfur-processing')

if mods["pyrawores"] then
	RECIPE("quenching-tower"):remove_unlock('coal-processing-2'):add_unlock('coke-mk01')
end