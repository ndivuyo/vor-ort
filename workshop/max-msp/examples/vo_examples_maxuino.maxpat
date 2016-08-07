{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 111.0, 79.0, 758.0, 691.0 ],
		"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-14",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 22.0, 212.0, 96.0 ],
					"style" : "",
					"text" : "This patch is used to connect to Arduino with Maxuino (a Max/MSP patch developed to communicate with Arduino)",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.463989, 373.128967, 157.0, 37.0 ],
					"style" : "",
					"text" : "send values to arduino from elsewhere"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 429.963989, 639.5, 192.0, 37.0 ],
					"style" : "",
					"text" : "Send data incoming from arduino elsewhere"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 511.5, 496.0, 192.0, 37.0 ],
					"style" : "",
					"text" : "Max MSP patch to communicate with Arduino"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.463989, 273.628967, 157.0, 24.0 ],
					"style" : "",
					"text" : "menu to display devices"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.5, 60.680496, 213.0, 24.0 ],
					"style" : "",
					"text" : "send a bang when patch loads"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.963989, 614.5, 50.0, 35.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 234.0, 647.0, 50.0, 35.0 ],
					"style" : "",
					"text" : "analog 7 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.463989, 380.628967, 73.0, 22.0 ],
					"style" : "",
					"text" : "r toMaxuino"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 314.463989, 647.0, 89.0, 22.0 ],
					"style" : "",
					"text" : "s fromMaxuino"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 445.463989, 179.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.5, 220.698166, 192.0, 24.0 ],
					"style" : "",
					"text" : "output list of available devices"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.713989, 380.628967, 51.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 215.098999, 32.0, 29.0, 20.0 ],
					"style" : "",
					"text" : "#3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.5, 273.628967, 47.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 32.0, 29.0, 20.0 ],
					"style" : "",
					"text" : "#2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 331.463989, 133.628967, 55.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.5, 32.0, 29.0, 20.0 ],
					"style" : "",
					"text" : "#1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 314.463989, 380.628967, 32.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 215.098999, 70.5, 48.0, 22.0 ],
					"style" : "",
					"text" : "init"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 408.463989, 60.680496, 59.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.463989, 313.169861, 81.0, 22.0 ],
					"style" : "",
					"text" : "prepend port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 2,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 34.0, 79.0, 367.0, 526.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 148.0, 212.0, 52.0, 22.0 ],
									"style" : "",
									"text" : "select..."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "print", "bang", "clear" ],
									"patching_rect" : [ 63.5, 77.0, 188.0, 22.0 ],
									"style" : "",
									"text" : "t print b clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 80.5, 148.0, 56.0, 20.0 ],
									"style" : "",
									"text" : "route port"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.5, 314.0, 111.0, 20.0 ],
									"style" : "",
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 63.5, 110.0, 36.0, 20.0 ],
									"style" : "",
									"text" : "serial"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.5, 197.0, 25.0, 20.0 ],
									"style" : "",
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.5, 32.0, 32.0, 32.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 419.0, 34.0, 34.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 242.0, 405.0, 90.5, 405.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 408.463989, 221.698166, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p devices"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.463989, 131.628967, 48.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.5, 70.5, 52.0, 22.0 ],
					"style" : "",
					"text" : "update"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"arrow" : 0,
					"fontname" : "Trebuchet MS",
					"id" : "obj-65",
					"items" : [ "select...", ",", "Bluetooth-Incoming-Port", ",", "usbmodem1421" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 408.463989, 273.628967, 135.0, 22.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 70.5, 122.0, 22.0 ],
					"style" : "",
					"varname" : "serialPort[1]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Trebuchet MS",
					"fontsize" : 16.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 314.463989, 501.0, 171.0, 27.0 ],
					"style" : "",
					"text" : "maxuino c",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "maxuino"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 323.963989, 552.0, 119.463989, 552.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 204.963989, 488.0, 323.963989, 488.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-125::obj-950::obj-126" : [ "value[81]", "value", 0 ],
			"obj-1::obj-125::obj-1042::obj-126" : [ "value[104]", "value", 0 ],
			"obj-1::obj-125::obj-1094::obj-126" : [ "value[39]", "value", 0 ],
			"obj-1::obj-125::obj-958::obj-126" : [ "value[83]", "value", 0 ],
			"obj-1::obj-125::obj-1158::obj-126" : [ "value[63]", "value", 0 ],
			"obj-1::obj-125::obj-1166::obj-126" : [ "value[117]", "value", 0 ],
			"obj-1::obj-125::obj-966::obj-126" : [ "value[85]", "value", 0 ],
			"obj-1::obj-125::obj-1074::obj-126" : [ "value[57]", "value", 0 ],
			"obj-1::obj-125::obj-1090::obj-126" : [ "value[109]", "value", 0 ],
			"obj-1::obj-125::obj-930::obj-126" : [ "value[76]", "value", 0 ],
			"obj-1::obj-125::obj-974::obj-126" : [ "value[87]", "value", 0 ],
			"obj-1::obj-125::obj-1106::obj-126" : [ "value[110]", "value", 0 ],
			"obj-1::obj-125::obj-1102::obj-126" : [ "value[68]", "value", 0 ],
			"obj-1::obj-125::obj-982::obj-126" : [ "value[89]", "value", 0 ],
			"obj-1::obj-125::obj-942::obj-126" : [ "value[79]", "value", 0 ],
			"obj-1::obj-125::obj-990::obj-126" : [ "value[91]", "value", 0 ],
			"obj-1::obj-125::obj-16" : [ "live.text", "live.text", 0 ],
			"obj-1::obj-125::obj-998::obj-126" : [ "value[93]", "value", 0 ],
			"obj-1::obj-125::obj-1070::obj-126" : [ "value[38]", "value", 0 ],
			"obj-1::obj-125::obj-1138::obj-126" : [ "value[61]", "value", 0 ],
			"obj-1::obj-125::obj-1162::obj-126" : [ "value[116]", "value", 0 ],
			"obj-1::obj-125::obj-1054::obj-126" : [ "value[56]", "value", 0 ],
			"obj-1::obj-125::obj-1086::obj-126" : [ "value[67]", "value", 0 ],
			"obj-1::obj-125::obj-1114::obj-126" : [ "value[111]", "value", 0 ],
			"obj-1::obj-125::obj-1146::obj-126" : [ "value[62]", "value", 0 ],
			"obj-1::obj-125::obj-946::obj-126" : [ "value[80]", "value", 0 ],
			"obj-1::obj-125::obj-890::obj-126" : [ "value", "value", 0 ],
			"obj-1::obj-125::obj-894::obj-126" : [ "value[37]", "value", 0 ],
			"obj-1::obj-125::obj-1142::obj-126" : [ "value[114]", "value", 0 ],
			"obj-1::obj-125::obj-898::obj-126" : [ "value[55]", "value", 0 ],
			"obj-1::obj-125::obj-1154::obj-126" : [ "value[42]", "value", 0 ],
			"obj-1::obj-125::obj-1078::obj-126" : [ "value[66]", "value", 0 ],
			"obj-1::obj-125::obj-1122::obj-126" : [ "value[60]", "value", 0 ],
			"obj-1::obj-125::obj-938::obj-126" : [ "value[78]", "value", 0 ],
			"obj-1::obj-125::obj-914::obj-126" : [ "value[72]", "value", 0 ],
			"obj-1::obj-125::obj-918::obj-126" : [ "value[73]", "value", 0 ],
			"obj-1::obj-125::obj-1150::obj-126" : [ "value[115]", "value", 0 ],
			"obj-1::obj-125::obj-1134::obj-126" : [ "value[41]", "value", 0 ],
			"obj-1::obj-125::obj-1006::obj-126" : [ "value[95]", "value", 0 ],
			"obj-1::obj-125::obj-1058::obj-126" : [ "value[65]", "value", 0 ],
			"obj-1::obj-125::obj-1014::obj-126" : [ "value[97]", "value", 0 ],
			"obj-1::obj-125::obj-1110::obj-126" : [ "value[59]", "value", 0 ],
			"obj-1::obj-125::obj-934::obj-126" : [ "value[77]", "value", 0 ],
			"obj-1::obj-125::obj-1022::obj-126" : [ "value[99]", "value", 0 ],
			"obj-1::obj-125::obj-1062::obj-126" : [ "value[70]", "value", 0 ],
			"obj-1::obj-125::obj-1030::obj-126" : [ "value[101]", "value", 0 ],
			"obj-1::obj-125::obj-1130::obj-126" : [ "value[113]", "value", 0 ],
			"obj-1::obj-125::obj-1050::obj-126" : [ "value[106]", "value", 0 ],
			"obj-1::obj-125::obj-1038::obj-126" : [ "value[103]", "value", 0 ],
			"obj-1::obj-125::obj-954::obj-126" : [ "value[82]", "value", 0 ],
			"obj-1::obj-125::obj-1066::obj-126" : [ "value[107]", "value", 0 ],
			"obj-1::obj-125::obj-922::obj-126" : [ "value[74]", "value", 0 ],
			"obj-1::obj-125::obj-1002::obj-126" : [ "value[94]", "value", 0 ],
			"obj-1::obj-125::obj-1046::obj-126" : [ "value[105]", "value", 0 ],
			"obj-1::obj-125::obj-1118::obj-126" : [ "value[40]", "value", 0 ],
			"obj-1::obj-125::obj-962::obj-126" : [ "value[84]", "value", 0 ],
			"obj-1::obj-125::obj-1082::obj-126" : [ "value[108]", "value", 0 ],
			"obj-1::obj-125::obj-902::obj-126" : [ "value[64]", "value", 0 ],
			"obj-1::obj-125::obj-926::obj-126" : [ "value[75]", "value", 0 ],
			"obj-1::obj-125::obj-970::obj-126" : [ "value[86]", "value", 0 ],
			"obj-1::obj-125::obj-1010::obj-126" : [ "value[96]", "value", 0 ],
			"obj-1::obj-125::obj-1098::obj-126" : [ "value[58]", "value", 0 ],
			"obj-1::obj-125::obj-978::obj-126" : [ "value[88]", "value", 0 ],
			"obj-1::obj-125::obj-1018::obj-126" : [ "value[98]", "value", 0 ],
			"obj-1::obj-125::obj-906::obj-126" : [ "value[69]", "value", 0 ],
			"obj-1::obj-125::obj-910::obj-126" : [ "value[71]", "value", 0 ],
			"obj-1::obj-125::obj-986::obj-126" : [ "value[90]", "value", 0 ],
			"obj-1::obj-125::obj-1026::obj-126" : [ "value[100]", "value", 0 ],
			"obj-1::obj-125::obj-1126::obj-126" : [ "value[112]", "value", 0 ],
			"obj-1::obj-125::obj-994::obj-126" : [ "value[92]", "value", 0 ],
			"obj-1::obj-125::obj-1034::obj-126" : [ "value[102]", "value", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "maxuino.maxpat",
				"bootpath" : "~/Documents/Max 7/Maxuino",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino.js",
				"bootpath" : "~/Documents/Max 7/Maxuino/support",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-gui.maxpat",
				"bootpath" : "~/Documents/Max 7/Maxuino/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dpin.maxpat",
				"bootpath" : "~/Documents/Max 7/Maxuino/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Teensy++.png",
				"bootpath" : "~/Documents/Max 7/Maxuino/hardware",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-hardware.txt",
				"bootpath" : "~/Documents/Max 7/Maxuino/hardware",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-debug.maxpat",
				"bootpath" : "~/Documents/Max 7/Maxuino/support",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
