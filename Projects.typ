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
#let SysY24_techs = tech[#CPP, #LLVM, #RISCV, Compiler Design, Multi-Threads Parallel ]
#let SysY24_time = "_Feb.2024 \~ Aug.2024_"
#let SysY24start = datetime(year: 1234, month: 2, day: 1)
#let SysY24end = datetime(year: 2345, month: 9, day: 1)
#let SysY24_discription = [
In the journey to escort Master Tang and his disciples to the West in search of the sacred scriptures, I, as the central figure, relied on my extraordinary powers and wisdom to repeatedly avert crises and protect Master Tang from the threats of demons and monsters. Not only did I subdue countless fiends, but I also assisted Master Tang in overcoming numerous hardships, ultimately succeeding in obtaining the true scriptures. All four of us achieved enlightenment, and I was granted Buddhahood, honored as the "Victorious Fighting Buddha."

- Subduing Demons and Monsters: Using my Seventy-Two Transformations and the golden staff, I defeated many demons who sought to harm Master Tang, such as the White Bone Spirit and the Red Boy.  
- Averting Crises: In perilous places like the Flaming Mountain and the Heaven-Reaching River, I employed my wisdom and powers to guide the team safely through.  
- Protecting Master Tang: I remained steadfast in my loyalty, rescuing Master Tang from the brink of death multiple times, ensuring the success of the pilgrimage.  
- Mediating the Team: Among the four of us, I often acted as a mediator, resolving conflicts between Master Tang, Zhu Bajie, and Sha Wujing to maintain harmony within the group.  
- Attaining Buddhahood: For my exceptional contributions during the journey, I was granted the title of "Victorious Fighting Buddha," becoming one of the guardian deities of Buddhism.  
]
#let SysY24_discription_zh = [
在护送唐僧师徒前往西天取经的过程中，我作为核心人物，凭借其超凡的法力和智慧，多次化解危机，保护唐僧免受妖魔鬼怪的侵害。我不仅降服了众多妖怪，还协助唐僧克服了重重困难，最终成功取得真经，师徒四人皆得正果，我也因功成佛，被封为“斗战胜佛”。

- 降妖除魔：我凭借七十二变和金箍棒，多次击败企图加害唐僧的妖怪，如白骨精、红孩儿等。
- 化解危机：在火焰山、通天河等险境中，我运用智慧和法力，成功带领团队渡过难关。
- 保护唐僧：我始终忠诚守护唐僧，多次将其从生死边缘救回，确保取经任务顺利进行。
- 协调团队：在师徒四人中，我常充当调解者，化解唐僧与猪八戒、沙僧之间的矛盾，维持团队和谐。
- 最终成佛：因在取经过程中的卓越贡献，我被封为“斗战胜佛”，成为佛教护法神之一。
]

#let SysY24_project = create-project(SysY24_name, SysY24_type, SysY24_url, SysY24_techs, SysY24_discription, SysY24start, SysY24end)
#let SysY24_project_zh = create-project(SysY24_name, SysY24_type_zh, SysY24_url, SysY24_techs, SysY24_discription_zh, SysY24start, SysY24end)


// 汇总
#let Projects = ( SysY24_project, )
#let Projects_zh = ( SysY24_project_zh, )