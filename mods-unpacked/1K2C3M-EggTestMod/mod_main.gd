extends Node

const AUTHORNAME_MODNAME_DIR := "1K2C3M-EggTestMod"
const AUTHORNAME_MODNAME_LOG_NAME := "The1K2C3M-EggTestMod:Main"

var eggTextNode = preload("res://mods-unpacked/1K2C3M-EggTestMod/nodes/eggText.gd")  
var eggTextInstance

func _init() -> void:
    ModLoaderLog.debug("Init phase started", AUTHORNAME_MODNAME_LOG_NAME)
    ModLoaderLog.debug("Init phase finished", AUTHORNAME_MODNAME_LOG_NAME)

func _ready() -> void:
    eggTextInstance = eggTextNode.new()
    add_child(eggTextInstance)
    ModLoaderLog.info("Mod Ready!", AUTHORNAME_MODNAME_LOG_NAME)