#import "template.typ": *
#import "Icons.typ": *

#import "PersonalInfos.typ": *
#import "Projects.typ": *
#import "Extracurriculars.typ": *
#import "Awards.typ": *

// 主题颜色
#let themeColor = rgb(38, 38, 125)
#let NeedPhotograph = true

// 设置简历选项与头部
#show: resume.with(
  size: 10pt, 
  themeColor: themeColor, 
  top: 1.5cm, bottom: 2cm, left: 2cm, right: 2cm,
  photograph: Photograph, photographWidth: 9em, gutterWidth: 1em, 
  need_photograph: NeedPhotograph
)[

= #Name_zh

#info(
  color: themeColor,
  (icon: faPhone, content: PhoneNumber),
  (icon: faEnvelope, content: MailAddress, link: "mailto:" + MailAddress),
  (icon: faBlog, content: HomePage, link: HomePageLink),
)
// 手动顶行, 2em 代表两个字的宽度
#h(2em)  #Intro_zh

#h(2em) #LifeCreed_zh
]
== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 20%)[
  *_2021.09 \~ 现在_*

  计算机科学与技术
][
  *国防科技大学*

  工学学士, 计算机学院

  导师: 曾坤 - 副研究员
]

#sidebar(withLine: true, sideWidth: 20%)[
  *_2024.06 \~ 现在_*

  计算机科学与技术
][
  *中国科学院大学*

  访问学生, 计算技术研究所

  导师: 崔慧敏 - 教授; 王晨曦 - 副教授
]

== #faPaper Research & Publications

- *[NeurIPS\'24 CCF-A]* Zhihua Wen, Zhiliang Tian, #underline[*Zexin Jian*], Zhen Huang, Pei Ke, Yifu Gao, Minlie Huang, Dongsheng Li. _Perception of Knowledge Boundaries for LLMs via Semi-open-ended Question Answering_.
- *[ACL\'23 CCF-A]* Zhihua Wen, Zhiliang Tian, Zhen Huang, Yuxin Yang, #underline[*Zexin Jian*], Changjian Wang, Dongsheng Li. _GRACE: Gradient-guided Controllable Retrieval for Augmenting Attribute-based Text Generation_.

== #faCode 项目经历

#for project in Projects_zh [
  #project
  #v(0.3em)
]

== #faAward 获奖情况

#Awards_zh

// services
// == #faBuildingColumns Leadership and Extracurricular Activities 

// #Extracurriculars

== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 20%)[
  *编程语言*
  
  *知识技能*

  *专业课程*
][
  #ProgrammingLanguages

  #Skills

  #Course
]

// == #faBuildingColumns 校园经历

// #Extracurriculars_zh
