// SerialFlashLoader.v

// Generated using ACDS version 16.0 211

`timescale 1 ps / 1 ps
module SerialFlashLoader (
		input  wire  asdo_in,             //             asdo_in.sdoin
		input  wire  asmi_access_granted, // asmi_access_granted.asmi_access_granted
		output wire  asmi_access_request, // asmi_access_request.asmi_access_request
		output wire  data0_out,           //           data0_out.data0out
		input  wire  dclk_in,             //             dclk_in.dclkin
		input  wire  ncso_in,             //             ncso_in.scein
		input  wire  noe_in               //              noe_in.noe
	);

	altera_serial_flash_loader #(
		.INTENDED_DEVICE_FAMILY  ("Cyclone IV E"),
		.ENHANCED_MODE           (1),
		.ENABLE_SHARED_ACCESS    ("ON"),
		.ENABLE_QUAD_SPI_SUPPORT (0),
		.NCSO_WIDTH              (1)
	) serial_flash_loader_0 (
		.dclk_in             (dclk_in),             //             dclk_in.dclkin
		.ncso_in             (ncso_in),             //             ncso_in.scein
		.asdo_in             (asdo_in),             //             asdo_in.sdoin
		.noe_in              (noe_in),              //              noe_in.noe
		.asmi_access_granted (asmi_access_granted), // asmi_access_granted.asmi_access_granted
		.data0_out           (data0_out),           //           data0_out.data0out
		.asmi_access_request (asmi_access_request)  // asmi_access_request.asmi_access_request
	);

endmodule
