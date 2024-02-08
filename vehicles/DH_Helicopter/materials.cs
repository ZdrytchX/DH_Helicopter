
singleton Material(heli_dummy)
{
   mapTo = "heli_dummy";
   diffuseMap[0] = "vehicles/DH_Helicopter/Dummy.dds";
   specular[0] = "0.996078 0.996078 0.996078 1";
   specularPower[0] = "128";
   translucentBlendOp = "None";
   detailScale[0] = "4 4";
   materialTag0 = "Miscellaneous";
   detailMapScale0 = "5";
   beamngDiffuseColorSlot = "2";
   pixelSpecular[0] = "1";
};

singleton Material(heli_gauges_screen)
{
    mapTo = "heli_gauges_screen";
    diffuseMap[0] = "@heli_gauges_screen";
    opacityMap[0] = "vehicles/etk800/etk800_gauges_screen.dds";
    specularMap[0] = "vehicles/common/null.dds";
    diffuseColor[0] = "1 1 1 1";
    specularPower[0] = "32";
    useAnisotropic[0] = "1";
    castShadows = "0";
    translucent = "1";
    emissive[0] = "1";
    //cubemap = "global_cubemap_metalblurred";
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_glass)
{
    mapTo = "heli_glass";
    reflectivityMap[0] = "vehicles/DH_Helicopter/heli_glass_base.dds";
    diffuseMap[0] = "vehicles/DH_Helicopter/heli_glass_d.dds";
    opacityMap[0] = "vehicles/DH_Helicopter/heli_glass_d.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_glass_d.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/common/null_n.dds";
    diffuseColor[1] = "0.5 0.5 0.5 0.75";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    diffuseColor[0] = "1 1 1 1";
    useAnisotropic[0] = "1";
    castShadows = "0";
    translucent = "1";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_missile_sight_g)
{
    mapTo = "heli_missile_sight_g";
    reflectivityMap[0] = "vehicles/DH_Helicopter/heli_glass_base.dds";
    diffuseMap[0] = "vehicles/DH_Helicopter/heli_missile_lens_c.dds";
    opacityMap[0] = "vehicles/DH_Helicopter/heli_missile_lens_c.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_missile_lens_g.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/common/null_n.dds";
    diffuseColor[1] = "0.5 0.5 0.5 0.75";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    diffuseColor[0] = "1 1 1 1";
    useAnisotropic[0] = "1";
	glow[1] = "1";
    emissive[1] = "1";
    castShadows = "0";
    translucent = "1";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_missile_sight)
{
	mapTo = "heli_missile_sight";
	colorPaletteMap[2] = "vehicles/DH_Helicopter/heli_palette_red.dds";
	diffuseMap[2] = "vehicles/DH_Helicopter/heli_missile_frame_c.dds";
    specularMap[2] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[2] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_missile_frame_d.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
	specularPower[2] = "128";
    pixelSpecular[2] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
	diffuseColor[2] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
	useAnisotropic[2] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_turbo)
{
   mapTo = "heli_turbo";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_turbo_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_ai)
{
   mapTo = "heli_ai";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_ai.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_ai_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_dials)
{
   mapTo = "heli_dials";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_dials_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_dials_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_pilot_control)
{
   mapTo = "heli_pilot_control";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_pilotcontrol_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_console_lights)
{
   mapTo = "heli_console_lights";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_console_lights.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(decals_heligauges)
{
    mapTo = "decals_heligauges";
    diffuseMap[0] = "vehicles/DH_Helicopter/decals_heligauges.dds";
    diffuseColor[0] = "1 1 1 1";
    diffuseMap[1] = "vehicles/DH_Helicopter/decals_heligauges.dds";
    diffuseColor[1] = "1 1 1 0.35";
    castShadows = "0";
    translucent = "1";
    alphaTest = "0";
    alphaRef = "0";
    glow[1] = "1";
    emissive[1] = "1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    materialTag0 = "beamng"; materialTag1 = "vehicle"; materialTag2 = "decal";
};

singleton Material(heli_fuelwarn)
{
    mapTo = "heli_fuelwarn";
};

singleton Material(heli_engwarn)
{
    mapTo = "heli_engwarn";
};

singleton Material(heli_fueltank)
{
   mapTo = "heli_fueltank";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_fueltank_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_engine)
{
   mapTo = "heli_engine";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_engine_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_exhaust)
{
   mapTo = "heli_exhaust";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_exhaust_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_frame)
{
	mapTo = "heli_frame";
	colorPaletteMap[2] = "vehicles/DH_Helicopter/heli_palette_red.dds";
	diffuseMap[2] = "vehicles/DH_Helicopter/heli_frame_1_c.dds";
    specularMap[2] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[2] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_frame_1_d.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
	specularPower[2] = "128";
    pixelSpecular[2] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
	diffuseColor[2] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
	useAnisotropic[2] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_frame_low)
{
	mapTo = "heli_frame_low";
	colorPaletteMap[2] = "vehicles/DH_Helicopter/heli_palette_blue.dds";
    diffuseMap[2] = "vehicles/DH_Helicopter/heli_framelow_1_c.dds";
    specularMap[2] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[2] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_framelow_1_d.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
	specularPower[2] = "128";
    pixelSpecular[2] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
	diffuseColor[2] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
	useAnisotropic[2] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_tail)
{
	mapTo = "heli_tail";
	colorPaletteMap[2] = "vehicles/DH_Helicopter/heli_palette_green.dds";
    diffuseMap[2] = "vehicles/DH_Helicopter/heli_tail_1_c.dds";
    specularMap[2] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[2] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_tail_1_d.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
	specularPower[2] = "128";
    pixelSpecular[2] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
	diffuseColor[2] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
	useAnisotropic[2] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_missiles)
{
	mapTo = "heli_missiles";
	colorPaletteMap[2] = "vehicles/DH_Helicopter/heli_missile_palette.dds";
    diffuseMap[2] = "vehicles/DH_Helicopter/heli_missile_c.dds";
    specularMap[2] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[2] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_missile_d.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
	specularPower[2] = "128";
    pixelSpecular[2] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
	diffuseColor[2] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
	useAnisotropic[2] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_tailplane)
{
	mapTo = "heli_tailplane";
	colorPaletteMap[2] = "vehicles/DH_Helicopter/heli_palette_tailplane.dds";
    diffuseMap[2] = "vehicles/DH_Helicopter/heli_tailplane_1_c.dds";
    specularMap[2] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[2] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_tailplane_1_d.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_frame_1_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
	specularPower[2] = "128";
    pixelSpecular[2] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
	diffuseColor[2] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
	useAnisotropic[2] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_filter)
{
    mapTo = "heli_filter";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_filter.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_filter_s.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_filter_n.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_filter_n.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
	instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_swash)
{
   mapTo = "heli_swash";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_swash_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_rotor)
{
    mapTo = "heli_rotor";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_rotor_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_control)
{
   mapTo = "heli_control";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_control_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_seat)
{
   mapTo = "heli_seat";
    diffuseMap[1] = "vehicles/DH_Helicopter/heli_seat_1.dds";
    specularMap[1] = "vehicles/DH_Helicopter/heli_spec_blank.dds";
    normalMap[1] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    diffuseMap[0] = "vehicles/common/null.dds";
    specularMap[0] = "vehicles/common/null.dds";
    normalMap[0] = "vehicles/DH_Helicopter/heli_normal_blank.dds";
    specularPower[0] = "128";
    pixelSpecular[0] = "1";
    specularPower[1] = "32";
    pixelSpecular[1] = "1";
    specularColor[0] = "1 1 1 1";
    specularColor[1] = "1 1 1 1";
    diffuseColor[0] = "1 1 1 1";
    diffuseColor[1] = "1 1 1 1";
    useAnisotropic[0] = "1";
    useAnisotropic[1] = "1";
    castShadows = "1";
    translucent = "1";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    dynamicCubemap = true;
    instanceDiffuse[2] = true;
    materialTag0 = "beamng"; materialTag1 = "vehicle";
};

singleton Material(heli_oilcooler)
{
    mapTo = "heli_oilcooler";
    diffuseMap[0] = "vehicles/DH_Helicopter/oilcooler2_d.dds";
    specularMap[0] = "vehicles/DH_Helicopter/oilcooler2_s.dds";
    normalMap[0] = "vehicles/DH_Helicopter/oilcooler2_n.dds";
    diffuseColor[0] = "1.5 1.5 1.5 1";
    specularPower[0] = "128";
    useAnisotropic[0] = "1";
    castShadows = "1";
    translucent = "0";
    translucentBlendOp = "None";
    alphaTest = "0";
    alphaRef = "0";
    materialTag0 = "beamng"; materialTag1 = "vehicle";
    dynamicCubemap = true; //cubemap = "BNG_Sky_02_cubemap";
};

singleton SFXProfile(dh_missile)
{
    fileName = "vehicles/DH_Helicopter/sounds/woosh2.ogg";
    description = "AudioDefault3D";
};

singleton SFXProfile(dh_explode)
{
    fileName = "vehicles/DH_Helicopter/sounds/dh_explode.ogg";
    description = "AudioDefault3D";
};
