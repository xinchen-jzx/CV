#import "template.typ": *
#import "PersonalInfos.typ": *
#import "Projects.typ": *
#import "Extracurriculars.typ": *
#import "Awards.typ": *
#import "Icons.typ": *

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
= #Name

#info(
  color: themeColor,
  (icon: faPhone, content: PhoneNumber),
  (icon: faEnvelope, content: MailAddress, link: "mailto:" + MailAddress),
  (icon: faBlog, content: HomePage, link: HomePageLink),
)

#h(2em) #Intro

#h(2em) #LifeCreed
]

== #faGraduationCap Education Background

#sidebar(withLine: true, sideWidth: 20%)[
  *_Sep.2021 \~ present_*

  *Changsha, China*
][
  *National University of Defense Technology (NUDT)*
  
  _B.E. Student, School of Computer Science_
  
  Advised by Dr. Zengkun
]

#sidebar(withLine: true, sideWidth: 20%)[
  *_Jun.2024 \~ present_*

  *Beijing, China*
][
  *Chinese Academy of Sciences (CAS)*
  
  _Visiting Student, Institute of Computing Technology (ICT) _
  
  co-Advised by Dr. Huimin Cui and Dr. Chenxi Wang
]

== #faPaper Research & Publications

- *[NeurIPS\'24 CCF-A]* Zhihua Wen, Zhiliang Tian, #underline[*Zexin Jian*], Zhen Huang, Pei Ke, Yifu Gao, Minlie Huang, Dongsheng Li. _Perception of Knowledge Boundaries for LLMs via Semi-open-ended Question Answering_.
- *[ACL\'23 CCF-A]* Zhihua Wen, Zhiliang Tian, Zhen Huang, Yuxin Yang, #underline[*Zexin Jian*], Changjian Wang, Dongsheng Li. _GRACE: Gradient-guided Controllable Retrieval for Augmenting Attribute-based Text Generation_.

== #faCode Projects

#for project in Projects [
  #project
  #v(0.2em)
]

== #faWrench Expertise

#sidebar(withLine: false, sideWidth: 20%)[
  *Programming*
  
  *Skills*

  *Basic*

  ~
  
  *Advanced*
][
  #ProgrammingLanguages

  #Skills
  
  #CourseCS1
  
  #CourseCS2
  
  #CourseAI
]

== #faAward Awards

#Awards

== #faBuildingColumns Leadership and Extracurricular Activities 

#Extracurriculars
