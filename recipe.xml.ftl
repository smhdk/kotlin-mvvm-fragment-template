<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <instantiate from="simple_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/<#if isGM>gm</#if><#if !isGM>standart</#if>/BaseFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.${ktOrJavaExt}" />
			   
    <instantiate from="root/src/app_package/<#if isGM>gm</#if><#if !isGM>standart</#if>/BaseViewModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewModelName}.${ktOrJavaExt}" />

	<open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.${ktOrJavaExt}" />
</recipe>
