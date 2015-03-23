<?php

/**
 * @file
 * Plugin definition and callbacks for a ${plugin_owner}:${plugin_type} plugin.
 *
 * @ingroup ${plugin_owner_camel}Plugin ${plugin_owner_camel}Plugin${plugin_type_camel}
 */

#if(!$required_hooks)#set($required_hooks = [])#end
#set($dev_null = $required_hooks.add("hook_ctools_plugin_directory"))
// Required hooks:
#foreach($required_hook in $required_hooks)
// - $required_hook
#end

${plugin_owner}_plugin_${plugin_type}
