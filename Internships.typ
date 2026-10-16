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
#let Huawei25_techs = tech[Ascend, MemFabric, MoE, MegaKernel]
#let Huawei25start = datetime(year: 2025, month: 12, day: 1)
#let Huawei25end = datetime(year: 2026, month: 09, day: 1)
#let Huawei25_description = [
- Co-led the *MemFabric* project: pooled heterogeneous DRAM/HBM on Ascend SuperPods with global-virtual-address direct access
- Co-led *CATCCOS* (Compute-Communication Overlap Subroutines) to pipeline compute with collectives and hide communication latency
- Co-led the *MegaKernel* project, fusing multi-layer compute and communication into a persistent kernel to cut launch overhead
- Led *STAP* (Sub-Tile Asynchronous Parallelism) for sub-tile async scheduling and compute/data-movement overlap
- Led *Ascend-MoonEP*, porting MoonEP expert-parallel communication to Ascend NPUs for MoE dispatch/combine
]
#let Huawei25_description_zh = [
- *MemFabric*：面向昇腾超节点的 *DRAM/HBM 异构内存池*，提供跨进程统一的全局虚拟地址空间，支持 NPU 算子直接访问跨节点内存及高效数据传输。相关论文在投。
- *CATCCOS*（Compute-Communication Overlap Subroutines）：面向昇腾 NPU 设计并实现*可复用的计算–通信重叠子程序*，通过计算与通信分块解耦、Block Cluster 级流水同步及 Rank 感知调度，实现 GEMM/GMM 与多类集合通信的高效重叠，降低分布式大模型计算中的通信等待开销。相关论文在投。
- *MegaKernel*：面向昇腾 NPU 大模型解码优化，研发持久化 Megakernel 编译与运行时系统；通过 *Tile 级依赖分析与图压缩*实现跨算子流水，结合 *AICPU 带外调度、寄存器通知与异构任务派发*协调 Cube/Vector 执行，并以 *Early Handoff* 分离调度就绪与数据就绪，将后继任务准备与前驱计算重叠。相关论文在投。
- *STAP*（Sub-Tile Asynchronous Parallelism）：面向昇腾超节点的 MoE 计算通信优化，设计并实现基于局部同步的子 Tile 异步传输机制，减少全核同步与完整 Token 拼接等待，实现 GMM 计算与跨卡通信的流水重叠。相关论文在投。
- *Ascend-MoonEP*：将 MoonEP 专家并行通信适配至昇腾，支撑 MoE dispatch/combine。
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
- *编程模型设计：* 提出面向异构存算架构的任务式张量编程模型，以顺序语义描述任务组合，屏蔽显式通信与同步，支持“顺序编程、异步执行”
- *依赖驱动的异步编译：* 基于 MLIR 构建统一中间表示，自动推导任务间张量数据依赖，挖掘可并行任务并生成异步执行调度，保证执行结果与顺序语义一致
- *架构感知的后端优化：* 使用 C/C++ 实现面向多种 RISC-V SRAM 存算一体芯片的编译后端，结合应用特征分析，将可加速计算映射为芯片专用指令
]

#let PKU25_internship = create-internship(PKU25_company, PKU25_role, PKU25_techs, PKU25_description, PKU25start, PKU25end)
#let PKU25_internship_zh = create-internship(PKU25_company_zh, PKU25_role_zh, PKU25_techs, PKU25_description_zh, PKU25start, PKU25end)

#let Internships = (Huawei25_internship, PKU25_internship)
#let Internships_zh = (Huawei25_internship_zh, PKU25_internship_zh)
