lappend auto_path "/usr/local/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {beh_sim}
set ::bali::simulation::Para(PROJECTPATH) {/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/proj}
set ::bali::simulation::Para(FILELIST) {"/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/async_fifo.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/calc_ber.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/dec_8b10b.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/deserializer.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ft601.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_recv.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/top_tb.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/ddrx1.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/prng_send.vhd" "/home/apurvan/GSoC/usb-plug-mod-working/BER_mesurement_x1/src/enc_8b10b.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {0}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
