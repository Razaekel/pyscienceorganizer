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
TECHNOLOGY('construction-robotics'):add_prereq('robotics')

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

----------------------------------------------
-- Recipe Fixes
----------------------------------------------

RECIPE("iron-oxide-breakdown"):remove_unlock('coal-processing-1'):add_unlock('sulfur-processing')

if mods["pyrawores"] then
	RECIPE("quenching-tower"):remove_unlock('coal-processing-2'):add_unlock('coke-mk01')
end