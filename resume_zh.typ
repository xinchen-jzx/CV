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
]
== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 20%)[
  #display_duration(d1: EnrollDay, d2: Today, date_format: false)

  #display_date(d: EnrollDay, date_format: false)
  
  #display_date(d: datetime(year: 2022, month: 9, day: 1), date_format: false)

  2023\~2024 
][
  #Grade
  
  #University_zh · #College_zh · #Major_zh
  
  #University_zh · #Lab1_zh

  #University_zh · #Lab2_zh
]

== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 20%)[
  *外门弟子技能*
  
  *内门弟子技能*

  *修道基础*

  *修道神通*
][
  #ProgrammingLanguages

  #Skills

  #CourseCS_zh
  
  #CourseAI_zh
]


== #faAward 获奖情况

#Awards_zh

== #faCode 项目经历

#for project in Projects_zh [
  #project
  #v(0.3em)
]

== #faBuildingColumns 校园经历

#Extracurriculars_zh
