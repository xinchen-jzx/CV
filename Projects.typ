#import "template.typ": *
#import "PersonalInfos.typ": *

#let columns = (60%, 1fr, auto)

#let create-project = (name, type, url, techs, discription, start, end) => block[
  #item(columns:columns, link(url, [*#name*]), [*#type*], 
  display_duration(d1: start, d2: end))
  #techs
  #discription
]

// 2023 年 GROVE
#let GROVE23_name = "GROVE"
#let GROVE23_type = "NUDT"
#let GROVE23_type_zh = "国防科技大学"
#let GROVE23_url = "https://github.com/xinchen-jzx/GROVE"
#let GROVE23_techs = tech[#Python, LLM, Controllable Text Generation]
#let GROVE23start = datetime(year: 2023, month: 5, day: 1)
#let GROVE23end = datetime(year: 2023, month: 10, day: 1)
#let GROVE23_discription = [
- Led the development of the *GROVE retrieval-augmented story generation framework*, integrating large language models, conditional retrieval, and iterative reasoning to generate narratives with complex plot structures
- Designed the novel *Asking-Why prompting mechanism* to construct evidence chains for completing background reasoning and improving logical consistency
- Achieved state-of-the-art results across multiple evaluation metrics, significantly enhancing model *complexity, creativity, and controllability* in story generation tasks
]
#let GROVE23_discription_zh = [
- 主导研发 GROVE 检索增强故事生成框架，结合大语言模型、条件检索与迭代推理机制生成复杂情节故事
- 创新设计*追问式提示（Asking-Why）*构建证据链用于补全背景与逻辑，提升故事可读性与丰富度
- 在多个评测维度上取得领先效果，显著提升模型的复杂性、创造性与可控性
]

#let GROVE23_project = create-project(GROVE23_name, GROVE23_type, GROVE23_url, GROVE23_techs, GROVE23_discription, GROVE23start, GROVE23end)
#let GROVE23_project_zh = create-project(GROVE23_name, GROVE23_type_zh, GROVE23_url, GROVE23_techs, GROVE23_discription_zh, GROVE23start, GROVE23end)

// 2024 年全国大学生系统能力大赛 - 编译系统实现赛
#let SysY24_name = "SysY Compiler"
#let SysY24_type = "NUDT"
#let SysY24_type_zh = "国防科技大学"
#let SysY24_url = "https://github.com/xinchen-jzx/SysYCompiler2024"
#let SysY24_techs = tech[#CPP, #LLVM, RISCV, Compiler Design, Multi-Threads Parallel]
#let SysY24start = datetime(year: 2024, month: 2, day: 1)
#let SysY24end = datetime(year: 2024, month: 8, day: 26)
#let SysY24_discription = [
- Developed using C/C++, implementing a fully functional compiler system for SysY2022 (a subset of C)
- Key tasks included front-end lexical and semantic analysis, as well as low-level code generation and optimization for the RISC-V architecture (including code generation and register allocation)
]
#let SysY24_discription_zh = [
- 使用 C/C++ 开发，为 SysY2022（C 语言子集）实现了一个功能齐全的编译器系统
- 主要工作包括前端的词法分析和语义分析，以及面向 RISC-V 架构的底层代码生成和优化（包括代码生成和寄存器分配）
]
#let SysY24_project = create-project(SysY24_name, SysY24_type, SysY24_url, SysY24_techs, SysY24_discription, SysY24start, SysY24end)
#let SysY24_project_zh = create-project(SysY24_name, SysY24_type_zh, SysY24_url, SysY24_techs, SysY24_discription_zh, SysY24start, SysY24end)

// 2024 年红山开源系列竞赛 - 操作系统竞赛
#let RustOS24_name = "mini RustOS"
#let RustOS24_type = "NUDT"
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
- 使用 Rust 开发，从零实现了一个X86架构的实验性操作系统内核
- 本项目的出发点是探索不同的内核架构对内核安全性与性能的影响并尝试权衡二者。从宏内核出发，吸收借鉴微内核的设计模式来提高安全性的同时保证一定的性能
]
#let RustOS24_project = create-project(RustOS24_name, RustOS24_type, RustOS24_url, RustOS24_techs, RustOS24_discription, RustOS24start, RustOS24end)
#let RustOS24_project_zh = create-project(RustOS24_name, RustOS24_type_zh, RustOS24_url, RustOS24_techs, RustOS24_discription_zh, RustOS24start, RustOS24end)

// 2025 年 LLM as Compiler
#let LLMASCompiler25_name = "LLM as Compiler"
#let LLMASCompiler25_type = "ICT, CAS"
#let LLMASCompiler25_type_zh = "中科院计算技术研究所"
#let LLMASCompiler25_url = "https://arxiv.org/pdf/2506.02929"
#let LLMASCompiler25_techs = tech[LLM, Compiler Design, Machine Learning System]
#let LLMASCompiler25start = datetime(year: 2024, month: 9, day: 1)
#let LLMASCompiler25end = datetime(year: 2025, month: 4, day: 1)
#let LLMASCompiler25_discription = [
- Responsible for designing and optimizing the compiler module within the Large Processor Chip Model (LPCM) framework, enabling automatic conversion from source code to hardware-adaptive machine code
- Successfully automated the compilation process by introducing a Large Language Model (LLM), supporting hardware-software co-design. This has driven multi-level optimization of compilers from human-machine collaboration to automation
]
#let LLMASCompiler25_discription_zh = [
- 负责在大处理器芯片模型（LPCM）框架中设计并优化编译模块，实现源代码到硬件适配机器代码的自动转换
- 通过引入大语言模型（LLM），成功实现了编译过程的自动化，支持硬件-软件协同设计。推动了编译器从人机协作到自动化的多级优化
]
#let LLMASCompiler25_project = create-project(LLMASCompiler25_name, LLMASCompiler25_type, LLMASCompiler25_url, LLMASCompiler25_techs, LLMASCompiler25_discription, LLMASCompiler25start, LLMASCompiler25end)
#let LLMASCompiler25_project_zh = create-project(LLMASCompiler25_name, LLMASCompiler25_type_zh, LLMASCompiler25_url, LLMASCompiler25_techs, LLMASCompiler25_discription_zh, LLMASCompiler25start, LLMASCompiler25end)

// 2025 年 AI 编译器
#let CIM25_name = "AI Compiler for RISC-V CIM"
#let CIM25_type = "AIIT, PKU"
#let CIM25_type_zh = "北大信息技术高等研究院"
#let CIM25_url = "https://github.com/xinchen-jzx/mini-Rust"
#let CIM25_techs = tech[#CPP, #MLIR, RISCV, Compiler Design]
#let CIM25start = datetime(year: 2025, month: 5, day: 1)
#let CIM25end = datetime(year: 2028, month: 1, day: 1)
#let CIM25_discription = [
- Developed using C/C++, this compiler system, built on MLIR, enables automatic back-end optimization for various RISC-V SRAM computing-in-memory chips
- The project's starting point is to translate applications to this unified intermediate representation, perform application feature analysis on this representation, identify computationally accelerable parts, and translate them into specific RISC-V acceleration instructions, fully leveraging the high-performance features of the RISC-V general-purpose core and NPU acceleration core
]
#let CIM25_discription_zh = [
- 使用 C/C++ 开发，基于 MLIR 构建了可以面向不同 RISC-V SRAM 存算一体芯片进行自动后端优化的编译器系统
- 本项目的出发点是将应用程序翻译到该统一中间表示，并在该中间表示上进行应用特征分析，识别出可以加速的计算部分，并转为特定的 RISC-V 加速指令，充分利用 RISC-V 通用核心、NPU 加速核心的高效能特征
]

#let CIM25_project = create-project(CIM25_name, CIM25_type, CIM25_url, CIM25_techs, CIM25_discription, CIM25start, CIM25end)
#let CIM25_project_zh = create-project(CIM25_name, CIM25_type_zh, CIM25_url, CIM25_techs, CIM25_discription_zh, CIM25start, CIM25end)

// 2025 年 ServerlessAI
#let CloudMatrix25_name = "ServerlessAI"
#let CloudMatrix25_type = "Noah's Ark Lab, Huawei"
#let CloudMatrix25_type_zh = "华为诺亚方舟实验室"
#let CloudMatrix25_url = "https://github.com/xinchen-jzx/mini-Rust"
#let CloudMatrix25_techs = tech[CloudMatrix384]
#let CloudMatrix25start = datetime(year: 2025, month: 12, day: 1)
#let CloudMatrix25end = datetime(year: 2026, month: 12, day: 1)
#let CloudMatrix25_discription = [

]
#let CloudMatrix25_discription_zh = [
- Based on the CloudMatrix384 architecture, and using distributed computing and storage technologies, a high-performance serverless AI platform has been built
]

#let CloudMatrix25_project = create-project(CloudMatrix25_name, CloudMatrix25_type, CloudMatrix25_url, CloudMatrix25_techs, CloudMatrix25_discription, CloudMatrix25start, CloudMatrix25end)
#let CloudMatrix25_project_zh = create-project(CloudMatrix25_name, CloudMatrix25_type_zh, CloudMatrix25_url, CloudMatrix25_techs, CloudMatrix25_discription_zh, CloudMatrix25start, CloudMatrix25end)


#let Projects = (CloudMatrix25_project, 
                 CIM25_project, 
                 LLMASCompiler25_project, 
                 RustOS24_project, 
                 SysY24_project, 
                 GROVE23_project)

#let Projects_zh = (CloudMatrix25_project_zh, 
                    CIM25_project_zh, 
                    LLMASCompiler25_project_zh, 
                    RustOS24_project_zh, 
                    SysY24_project_zh, 
                    GROVE23_project_zh)