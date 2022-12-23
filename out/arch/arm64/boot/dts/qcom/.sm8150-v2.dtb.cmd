cmd_arch/arm64/boot/dts/qcom/sm8150-v2.dtb := mkdir -p arch/arm64/boot/dts/qcom/ ; clang -E -Wp,-MD,arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.d.pre.tmp -nostdinc -I../scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.dts.tmp ../arch/arm64/boot/dts/qcom/sm8150-v2.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/qcom/sm8150-v2.dtb -b 0 -i../arch/arm64/boot/dts/qcom/ -i../scripts/dtc/include-prefixes -@ -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.d.dtc.tmp arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.dts.tmp ; cat arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.d.pre.tmp arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.d.dtc.tmp > arch/arm64/boot/dts/qcom/.sm8150-v2.dtb.d

source_arch/arm64/boot/dts/qcom/sm8150-v2.dtb := ../arch/arm64/boot/dts/qcom/sm8150-v2.dts

deps_arch/arm64/boot/dts/qcom/sm8150-v2.dtb := \
  ../arch/arm64/boot/dts/qcom/sm8150-v2.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150.dtsi \
  ../arch/arm64/boot/dts/qcom/skeleton64.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,camcc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,dispcc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gpucc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,scc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,videocc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,cpucc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,npucc-sm8150.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,rpmh.h \
  ../scripts/dtc/include-prefixes/dt-bindings/sound/qcom,gpr.h \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/qcom,aop-qmp.h \
  ../scripts/dtc/include-prefixes/dt-bindings/regulator/qcom,rpmh-regulator.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  ../scripts/dtc/include-prefixes/dt-bindings/soc/qcom,tcs-mbox.h \
  ../scripts/dtc/include-prefixes/dt-bindings/soc/qcom,dcc_v2.h \
  ../scripts/dtc/include-prefixes/dt-bindings/msm/msm-bus-ids.h \
    $(wildcard include/config/noc.h) \
  ../scripts/dtc/include-prefixes/dt-bindings/spmi/spmi.h \
  ../arch/arm64/boot/dts/qcom/sm8150-gdsc.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-sde-pll.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-sde.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/mdss-10nm-pll-clk.h \
  ../arch/arm64/boot/dts/qcom/msm-rdbg.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-camera.dtsi \
  ../arch/arm64/boot/dts/qcom/msm-qvr-external.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-pinctrl.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-slpi-pinctrl.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-regulator.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-ion.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-bus.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-pcie.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-smp2p.dtsi \
  ../arch/arm64/boot/dts/qcom/msm-arm-smmu-sm8150.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-qupv3.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-npu.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-pm.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-audio.dtsi \
  ../arch/arm64/boot/dts/qcom/msm-audio-lpass.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-vidc.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-thermal.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  ../arch/arm64/boot/dts/qcom/sm8150-usb.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/phy/qcom,sm8150-qmp-usb3.h \
  ../arch/arm64/boot/dts/qcom/sm8150-gpu.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-mhi.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-v2-camera.dtsi \
  ../arch/arm64/boot/dts/qcom/msm-arm-smmu-sm8150-v2.dtsi \
  ../arch/arm64/boot/dts/qcom/sm8150-gpu-v2.dtsi \

arch/arm64/boot/dts/qcom/sm8150-v2.dtb: $(deps_arch/arm64/boot/dts/qcom/sm8150-v2.dtb)

$(deps_arch/arm64/boot/dts/qcom/sm8150-v2.dtb):
