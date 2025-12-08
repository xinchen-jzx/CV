#import "template.typ": *
#import "PersonalInfos.typ": *

#let columns = (60%, 1fr, auto)

#let create-project = (name, type, url, techs, discription, start, end) => block[
  #item(columns:columns, link(url, [*#name*]), [*#type*], 
  display_duration(d1: start, d2: end))
  #techs
  #discription
]

// 2024 年全国大学生系统能力大赛 - 编译系统实现赛
#let SysY24_name = "SysY Compiler"
#let SysY24_type = "Compiler Design"
#let SysY24_type_zh = "国防科技大学"
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

// 2024 年红山开源系列竞赛 - 操作系统竞赛
#let RustOS24_name = "mini RustOS"
#let RustOS24_type = "Operating System Design"
#let RustOS24_type_zh = "国防科技大学"
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

// 2025 年 AI 编译器
#let CIM25_name = "AI Compiler for RISC-V CIM"
#let CIM25_type = "Compiler Design"
#let CIM25_type_zh = "北大信息技术高等研究院"
#let CIM25_url = "https://github.com/xinchen-jzx/mini-Rust"
#let CIM25_techs = tech[#CPP, #MLIR, RISCV, Compiler Design]
#let CIM25start = datetime(year: 2025, month: 5, day: 1)
#let CIM25end = datetime(year: 2028, month: 1, day: 1)
#let CIM25_discription = [
- Adapting a compiler for RISC-V Computing-in-Memory chip based on MLIR.
]
#let CIM25_discription_zh = [
- 使用 C/C++ 开发, 基于 MLIR 构建了可以面向不同 RISC-V SRAM 存算一体芯片进行自动后端优化的编译器系统
- 本项目的出发点是将应用程序翻译到该统一中间表示, 并在该中间表示上进行应用特征分析, 识别出可以加速的计算部分, 并转为特定的 RISC-V 加速指令, 充分利用 RISC-V 通用核心、NPU 加速核心的高效能特征
]

#let CIM25_project = create-project(CIM25_name, CIM25_type, CIM25_url, CIM25_techs, CIM25_discription, CIM25start, CIM25end)
#let CIM25_project_zh = create-project(CIM25_name, CIM25_type_zh, CIM25_url, CIM25_techs, CIM25_discription_zh, CIM25start, CIM25end)

// 2025 年 ServerlessAI
#let CloudMatrix25_name = "ServerlessAI"
#let CloudMatrix25_type = "Noah's Ark Lab, Huawei"
#let CloudMatrix25_type_zh = "华为诺亚方舟实验室"
#let CloudMatrix25_url = "https://github.com/xinchen-jzx/mini-Rust"
#let CloudMatrix25_techs = tech[NPU]
#let CloudMatrix25start = datetime(year: 2025, month: 12, day: 1)
#let CloudMatrix25end = datetime(year: 2026, month: 12, day: 1)
#let CloudMatrix25_discription = [

]
#let CloudMatrix25_discription_zh = [
]

#let CloudMatrix25_project = create-project(CloudMatrix25_name, CloudMatrix25_type, CloudMatrix25_url, CloudMatrix25_techs, CloudMatrix25_discription, CloudMatrix25start, CloudMatrix25end)
#let CloudMatrix25_project_zh = create-project(CloudMatrix25_name, CloudMatrix25_type_zh, CloudMatrix25_url, CloudMatrix25_techs, CloudMatrix25_discription_zh, CloudMatrix25start, CloudMatrix25end)

// 汇总
#let Projects = (RustOS24_project, SysY24_project)
#let Projects_zh = (CloudMatrix25_project_zh, CIM25_project_zh, RustOS24_project_zh, SysY24_project_zh)