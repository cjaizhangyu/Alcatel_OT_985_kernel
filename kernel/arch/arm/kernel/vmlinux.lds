/*
 * Automatically generated C config: don't edit
 * Linux kernel version: 2.6.35.7
 * Fri May 16 05:38:39 2014
 */
/* Align . to a 8 byte boundary equals to maximum function alignment. */
/* .data section */
/* Section used for early init (in .S files) */
/* init and exit section handling */
  /* Stabs debugging sections.  */
/* Simple shorthand for a section definition */
/* Are two types/vars the same type (ignoring qualifiers)? */
/* Compile time object size, -1 for unknown */
/* const.h: Macros for dealing with constants.  */
 /*
 * TCM memory whereabouts
 */
/* IO_VIRT = 0xF0000000 | (IO_PHYS[31:28] << 24) | IO_PHYS[27:0] */
/* handy sizes */
/*         END */
/* PAGE_SHIFT determines the page size */
OUTPUT_ARCH(arm)
ENTRY(stext)
jiffies = jiffies_64;
SECTIONS
{
 . = 0xC0000000 + 0x00008000;
 .init : { /* Init code and data		*/
  _stext = .;
  _sinittext = .;
   *(.head.text)
   *(.init.text) *(.cpuinit.text) *(.meminit.text)
  _einittext = .;
  __proc_info_begin = .;
   *(.proc.info.init)
  __proc_info_end = .;
  __arch_info_begin = .;
   *(.arch.info.init)
  __arch_info_end = .;
  __tagtable_begin = .;
   *(.taglist.init)
  __tagtable_end = .;
  . = ALIGN(16); __setup_start = .; *(.init.setup) __setup_end = .;
  __initcall_start = .; *(.initcallearly.init) __early_initcall_end = .; *(.initcall0.init) *(.initcall0s.init) *(.initcall1.init) *(.initcall1s.init) *(.initcall2.init) *(.initcall2s.init) *(.initcall3.init) *(.initcall3s.init) *(.initcall4.init) *(.initcall4s.init) *(.initcall5.init) *(.initcall5s.init) *(.initcallrootfs.init) *(.initcall6.init) *(.initcall6s.init) *(.initcall7.init) *(.initcall7s.init) __initcall_end = .;
  __con_initcall_start = .; *(.con_initcall.init) __con_initcall_end = .;
  __security_initcall_start = .; *(.security_initcall.init) __security_initcall_end = .;
  . = ALIGN((1 << 12)); __initramfs_start = .; *(.init.ramfs) __initramfs_end = .;

  __init_begin = _stext;
  *(.init.data) *(.cpuinit.data) *(.meminit.data) . = ALIGN(8); __ctors_start = .; *(.ctors) __ctors_end = .; *(.init.rodata) *(.cpuinit.rodata) *(.meminit.rodata)

 }

 . = ALIGN((1 << 12)); .data..percpu : AT(ADDR(.data..percpu) - 0) { __per_cpu_load = .; __per_cpu_start = .; *(.data..percpu..first) *(.data..percpu..page_aligned) *(.data..percpu) *(.data..percpu..shared_aligned) __per_cpu_end = .; }


 . = ALIGN((1 << 12));
 __init_end = .;


 /*
	 * unwind exit sections must be discarded before the rest of the
	 * unwind sections get included.
	 */
 /DISCARD/ : {
  *(.ARM.exidx.exit.text)
  *(.ARM.extab.exit.text)

  *(.ARM.exidx.cpuexit.text)
  *(.ARM.extab.cpuexit.text)
 }
 .text : { /* Real text segment		*/
  _text = .; /* Text and read-only data	*/
   __exception_text_start = .;
   *(.exception.text)
   __exception_text_end = .;
   . = ALIGN(8); *(.text.hot) *(.text) *(.ref.text) *(.devinit.text) *(.devexit.text) *(.text.unlikely)
   . = ALIGN(8); __sched_text_start = .; *(.sched.text) __sched_text_end = .;
   . = ALIGN(8); __lock_text_start = .; *(.spinlock.text) __lock_text_end = .;
   . = ALIGN(8); __kprobes_text_start = .; *(.kprobes.text) __kprobes_text_end = .;
   *(.fixup)
   *(.gnu.warning)
   *(.rodata)
   *(.rodata.*)
   *(.glue_7)
   *(.glue_7t)
  *(.got) /* Global offset table		*/
 }
 . = ALIGN(((1 << 12))); .rodata : AT(ADDR(.rodata) - 0) { __start_rodata = .; *(.rodata) *(.rodata.*) *(__vermagic) *(__markers_strings) *(__tracepoints_strings) } .rodata1 : AT(ADDR(.rodata1) - 0) { *(.rodata1) } .pci_fixup : AT(ADDR(.pci_fixup) - 0) { __start_pci_fixups_early = .; *(.pci_fixup_early) __end_pci_fixups_early = .; __start_pci_fixups_header = .; *(.pci_fixup_header) __end_pci_fixups_header = .; __start_pci_fixups_final = .; *(.pci_fixup_final) __end_pci_fixups_final = .; __start_pci_fixups_enable = .; *(.pci_fixup_enable) __end_pci_fixups_enable = .; __start_pci_fixups_resume = .; *(.pci_fixup_resume) __end_pci_fixups_resume = .; __start_pci_fixups_resume_early = .; *(.pci_fixup_resume_early) __end_pci_fixups_resume_early = .; __start_pci_fixups_suspend = .; *(.pci_fixup_suspend) __end_pci_fixups_suspend = .; } .builtin_fw : AT(ADDR(.builtin_fw) - 0) { __start_builtin_fw = .; *(.builtin_fw) __end_builtin_fw = .; } .rio_ops : AT(ADDR(.rio_ops) - 0) { __start_rio_switch_ops = .; *(.rio_switch_ops) __end_rio_switch_ops = .; } __ksymtab : AT(ADDR(__ksymtab) - 0) { __start___ksymtab = .; *(__ksymtab) __stop___ksymtab = .; } __ksymtab_gpl : AT(ADDR(__ksymtab_gpl) - 0) { __start___ksymtab_gpl = .; *(__ksymtab_gpl) __stop___ksymtab_gpl = .; } __ksymtab_unused : AT(ADDR(__ksymtab_unused) - 0) { __start___ksymtab_unused = .; *(__ksymtab_unused) __stop___ksymtab_unused = .; } __ksymtab_unused_gpl : AT(ADDR(__ksymtab_unused_gpl) - 0) { __start___ksymtab_unused_gpl = .; *(__ksymtab_unused_gpl) __stop___ksymtab_unused_gpl = .; } __ksymtab_gpl_future : AT(ADDR(__ksymtab_gpl_future) - 0) { __start___ksymtab_gpl_future = .; *(__ksymtab_gpl_future) __stop___ksymtab_gpl_future = .; } __kcrctab : AT(ADDR(__kcrctab) - 0) { __start___kcrctab = .; *(__kcrctab) __stop___kcrctab = .; } __kcrctab_gpl : AT(ADDR(__kcrctab_gpl) - 0) { __start___kcrctab_gpl = .; *(__kcrctab_gpl) __stop___kcrctab_gpl = .; } __kcrctab_unused : AT(ADDR(__kcrctab_unused) - 0) { __start___kcrctab_unused = .; *(__kcrctab_unused) __stop___kcrctab_unused = .; } __kcrctab_unused_gpl : AT(ADDR(__kcrctab_unused_gpl) - 0) { __start___kcrctab_unused_gpl = .; *(__kcrctab_unused_gpl) __stop___kcrctab_unused_gpl = .; } __kcrctab_gpl_future : AT(ADDR(__kcrctab_gpl_future) - 0) { __start___kcrctab_gpl_future = .; *(__kcrctab_gpl_future) __stop___kcrctab_gpl_future = .; } __ksymtab_strings : AT(ADDR(__ksymtab_strings) - 0) { *(__ksymtab_strings) } __init_rodata : AT(ADDR(__init_rodata) - 0) { *(.ref.rodata) *(.devinit.rodata) *(.devexit.rodata) } __param : AT(ADDR(__param) - 0) { __start___param = .; *(__param) __stop___param = .; . = ALIGN(((1 << 12))); __end_rodata = .; } . = ALIGN(((1 << 12)));
 _etext = .; /* End of text and rodata section */
 . = ALIGN(8192);
 __data_loc = .;
 .data : AT(__data_loc) {
  _data = .; /* address in memory */
  _sdata = .;
  /*
		 * first, the init task union, aligned
		 * to an 8192 byte boundary.
		 */
  . = ALIGN(8192); *(.data..init_task)
  . = ALIGN((1 << 12)); __nosave_begin = .; *(.data..nosave) . = ALIGN((1 << 12)); __nosave_end = .;
  . = ALIGN(32); *(.data..cacheline_aligned)
  /*
		 * The exception fixup table (might need resorting at runtime)
		 */
  . = ALIGN(32);
  __start___ex_table = .;
  *(__ex_table)
  __stop___ex_table = .;
  /*
		 * and the usual data section
		 */
  *(.data) *(.ref.data) *(.devinit.data) *(.devexit.data) . = ALIGN(128); __start___markers = .; *(__markers) __stop___markers = .; . = ALIGN(32); __start___tracepoints = .; *(__tracepoints) __stop___tracepoints = .; __start___imv = .; *(__imv) __stop___imv = .; . = ALIGN(8); __start___verbose = .; *(__verbose) __stop___verbose = .; __start___trace_bprintk_fmt = .; *(__trace_printk_fmt) __stop___trace_bprintk_fmt = .; . = ALIGN(32); __start_ftrace_events = .; *(_ftrace_events) __stop_ftrace_events = .; . = ALIGN(32);
  CONSTRUCTORS
  _edata = .;
 }
 _edata_loc = __data_loc + SIZEOF(.data);
        /*
	 * We align everything to a page boundary so we can
	 * free it after init has commenced and TCM contents have
	 * been copied to its destination.
	 */
 .tcm_start : {
  . = ALIGN((1 << 12));
  __tcm_start = .;
  __itcm_start = .;
 }
 /*
	 * Link these to the ITCM RAM
	 * Put VMA to the TCM address and LMA to the common RAM
	 * and we'll upload the contents from RAM to TCM and free
	 * the used RAM after that.
	 */
 .text_itcm (0xC0000000 - 0x00004000) : AT(__itcm_start)
 {
  __sitcm_text = .;
  *(.tcm.text)
  *(.tcm.rodata)
  . = ALIGN(4);
  __eitcm_text = .;
 }
 /*
	 * Reset the dot pointer, this is needed to create the
	 * relative __dtcm_start below (to be used as extern in code).
	 */
 . = ADDR(.tcm_start) + SIZEOF(.tcm_start) + SIZEOF(.text_itcm);
 __itcm_end = .;
 ASSERT((__itcm_end - __itcm_start) < 0x00004000, "Error!! codes are too big to fit in ITCM")
 .dtcm_start : {
  __dtcm_start = .;
 }
 /* TODO: add remainder of ITCM as well, that can be used for data! */
 .data_dtcm ((0xC0000000 - 0x00004000) - 0x00004000) : AT(__dtcm_start)
 {
  . = ALIGN(4);
  __sdtcm_data = .;
  *(.tcm.data)
  . = ALIGN(4);
  __edtcm_data = .;
 }
 /* Reset the dot pointer or the linker gets confused */
 . = ADDR(.dtcm_start) + SIZEOF(.data_dtcm);
 __dtcm_end = .;
 ASSERT((__dtcm_end - __dtcm_start) < 0x00004000, "Error!! data is too big to fit in DTCM")
 /* End marker for freeing TCM copy in linked object */
 .tcm_end : AT(ADDR(.dtcm_start) + SIZEOF(.data_dtcm)){
  . = ALIGN((1 << 12));
  __tcm_end = .;
 }
 . = ALIGN(0); __bss_start = .; . = ALIGN(0); .sbss : AT(ADDR(.sbss) - 0) { *(.sbss) *(.scommon) } . = ALIGN(0); .bss : AT(ADDR(.bss) - 0) { *(.bss..page_aligned) *(.dynbss) *(.bss) *(COMMON) } . = ALIGN(0); __bss_stop = .;
 _end = .;
 .stab 0 : { *(.stab) } .stabstr 0 : { *(.stabstr) } .stab.excl 0 : { *(.stab.excl) } .stab.exclstr 0 : { *(.stab.exclstr) } .stab.index 0 : { *(.stab.index) } .stab.indexstr 0 : { *(.stab.indexstr) } .comment 0 : { *(.comment) }
 .comment 0 : { *(.comment) }
 /* Default discards */
 /DISCARD/ : { *(.exit.text) *(.cpuexit.text) *(.memexit.text) *(.exit.data) *(.cpuexit.data) *(.cpuexit.rodata) *(.memexit.data) *(.memexit.rodata) *(.exitcall.exit) *(.discard) }
}
ASSERT((__proc_info_end - __proc_info_begin), "missing CPU support")
ASSERT((__arch_info_end - __arch_info_begin), "no machine record defined")
