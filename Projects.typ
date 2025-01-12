#import "template.typ": *
#import "PersonalInfos.typ": *

#let columns = (60%, 1fr, auto)

#let create-project = (name, type, url, techs, discription, start, end) => block[
  #item(columns:columns, link(url, [*#name*]), [*#type*], 
  display_duration(d1: start, d2: end))
  #techs
  #discription
]

// 2024年全国大学生系统能力大赛 - 编译系统实现赛
#let SysY24_name = "SysY Compiler"
#let SysY24_type = "Compiler Design"
#let SysY24_type_zh = "编译器"
#let SysY24_url = "https://github.com/xinchen-jzx/SysYCompiler2024"
#let SysY24_techs = tech[#CPP, #LLVM, RISCV, Compiler Design, Multi-Threads Parallel]
#let SysY24start = datetime(year: 2024, month: 2, day: 1)
#let SysY24end = datetime(year: 2024, month: 8, day: 26)
#let SysY24_discription = [
- Developed a fully functional compiler system for SysY2022 (a C Subset) using C++ as the primary programming language.
- Successfully passed all functional test cases, supporting lexical analysis, syntax analysis, semantic analysis, and target code generation.
]
#let SysY24_discription_zh = [
- 使用C++开发, 为SysY2022 (C语言子集)实现了一个功能齐全的编译器系统
- 成功通过所有功能测试用例, 支持词法分析、语法分析、语义分析和目标代码生成
]

#let SysY24_project = create-project(SysY24_name, SysY24_type, SysY24_url, SysY24_techs, SysY24_discription, SysY24start, SysY24end)
#let SysY24_project_zh = create-project(SysY24_name, SysY24_type_zh, SysY24_url, SysY24_techs, SysY24_discription_zh, SysY24start, SysY24end)

// 2024年红山开源系列竞赛 - 操作系统竞赛
#let RustOS24_name = "mini RustOS"
#let RustOS24_type = "Operating System Design"
#let RustOS24_type_zh = "操作系统"
#let RustOS24_url = "https://github.com/xinchen-jzx/mini-Rust"
#let RustOS24_techs = tech[#Rust, X86, OS Design, Hybrid Kernel]
#let RustOS24start = datetime(year: 2024, month: 9, day: 1)
#let RustOS24end = datetime(year: 2024, month: 12, day: 1)
#let RustOS24_discription = [
- Developed an experimental operating system kernel for the X86 architecture using Rust as the primary programming language.
- Starting from the macro kernel, absorbing and learning from the design patterns of the micro kernel to improve security while ensuring certain performance.
]
#let RustOS24_discription_zh = [
- 使用Rust开发, 从零实现了一个X86架构的实验性操作系统内核
- 本项目的出发点是探索不同的内核架构对内核安全性与性能的影响并尝试权衡二者. 从宏内核出发，吸收借鉴微内核的设计模式来提高安全性的同时保证一定的性能
]

#let RustOS24_project = create-project(RustOS24_name, RustOS24_type, RustOS24_url, RustOS24_techs, RustOS24_discription, RustOS24start, RustOS24end)
#let RustOS24_project_zh = create-project(RustOS24_name, RustOS24_type_zh, RustOS24_url, RustOS24_techs, RustOS24_discription_zh, RustOS24start, RustOS24end)


// 汇总
#let Projects = (SysY24_project, RustOS24_project)
#let Projects_zh = (SysY24_project_zh, RustOS24_project_zh)