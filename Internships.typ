#import "template.typ": *
#import "PersonalInfos.typ": *

#let columns = (60%, 1fr, auto)

#let create-internship = (company, role, techs, description, start, end, url: none) => block[
  #item(
    columns: columns,
    if url != none { link(url, [*#company*]) } else { [*#company*] },
    [*#role*],
    display_duration(d1: start, d2: end)
  )
  #techs
  #description
]

// 2025 华为诺亚方舟实验室
#let Huawei25_company = "Noah's Ark Lab, Huawei"
#let Huawei25_company_zh = "华为诺亚方舟实验室"
#let Huawei25_role = "Research Intern"
#let Huawei25_role_zh = "研发实习生"
#let Huawei25_techs = tech[CloudMatrix384, Ascend, MemFabric, MoE EP, HCCL]
#let Huawei25start = datetime(year: 2025, month: 12, day: 1)
#let Huawei25end = datetime(year: 2026, month: 12, day: 1)
#let Huawei25_description = [
- Co-led the *MemFabric* project: pooled heterogeneous DRAM/HBM on Ascend SuperPods with global-virtual-address direct access
- Co-led *CATCCOS* (Compute-Communication Overlap Subroutines) to pipeline compute with collectives and hide communication latency
- Co-led the *MegaKernel* project, fusing multi-layer compute and communication into a persistent kernel to cut launch overhead
- Led *STAP* (Sub-Tile Asynchronous Parallelism) for sub-tile async scheduling and compute/data-movement overlap
- Led *Ascend-MoonEP*, porting MoonEP expert-parallel communication to Ascend NPUs for MoE dispatch/combine
]
#let Huawei25_description_zh = [
- 联合主导 *MemFabric*：面向昇腾超节点池化 DRAM/HBM 等异构内存，提供全局虚拟地址直接访问。目前论文在投。
- 联合主导 *CATCCOS*（Compute-Communication Overlap Subroutines）：设计计算-通信重叠子程序，隐藏集合通信时延。目前论文在投。
- 联合主导 *MegaKernel*：将多层计算与通信融合为持久化 kernel，降低 launch 开销。目前论文在投。
- 主导 *STAP*（Sub-Tile Asynchronous Parallelism）：实现子 Tile 级异步并行，提升计算与数据搬运重叠。目前论文在投。
- 主导 *Ascend-MoonEP*：将 MoonEP 专家并行通信适配至昇腾，支撑 MoE dispatch/combine。
]

#let Huawei25_internship = create-internship(Huawei25_company, Huawei25_role, Huawei25_techs, Huawei25_description, Huawei25start, Huawei25end)
#let Huawei25_internship_zh = create-internship(Huawei25_company_zh, Huawei25_role_zh, Huawei25_techs, Huawei25_description_zh, Huawei25start, Huawei25end)

// 2025 北大信息技术高等研究院
#let PKU25_company = "AIIT, PKU"
#let PKU25_company_zh = "北大信息技术高等研究院"
#let PKU25_role = "Compiler Intern"
#let PKU25_role_zh = "编译器研发实习生"
#let PKU25_techs = tech[#CPP, #MLIR, RISCV, Compiler Design]
#let PKU25start = datetime(year: 2025, month: 5, day: 1)
#let PKU25end = datetime(year: 2028, month: 1, day: 1)
#let PKU25_description = [
- Developed using C/C++, this compiler system, built on MLIR, enables automatic back-end optimization for various RISC-V SRAM computing-in-memory chips
- The project's starting point is to translate applications to this unified intermediate representation, perform application feature analysis on this representation, identify computationally accelerable parts, and translate them into specific RISC-V acceleration instructions
]
#let PKU25_description_zh = [
- 使用 C/C++ 开发，基于 MLIR 构建面向不同 RISC-V SRAM 存算一体芯片的自动后端优化编译器
- 将应用程序翻译到统一中间表示，进行应用特征分析，识别可加速计算部分并转为特定 RISC-V 加速指令
]

#let PKU25_internship = create-internship(PKU25_company, PKU25_role, PKU25_techs, PKU25_description, PKU25start, PKU25end)
#let PKU25_internship_zh = create-internship(PKU25_company_zh, PKU25_role_zh, PKU25_techs, PKU25_description_zh, PKU25start, PKU25end)

#let Internships = (Huawei25_internship, PKU25_internship)
#let Internships_zh = (Huawei25_internship_zh, PKU25_internship_zh)
