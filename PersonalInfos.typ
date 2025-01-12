#import "template.typ": *
#import "OuterInfos.typ": *

// Personal Info
#let Name = "Zexin Jian"
#let Name_zh = "简泽鑫"

#let Photograph = "./images/avatar.jpg"

#let PhoneNumber = "(+86) 155-7423-3383"

#let MailAddress = "zexinjian@gmail.com"

#let HomePage = "xinchen-jzx.github.io"
#let HomePageLink = "https://xinchen-jzx.github.io/"

#let EnrollDay =  datetime(year: 1234, month: 9, day: 1)
#let GraduationDay = datetime(year: 2345, month: 8, day: 1)

// #let Today = datetime(year: 2024, month: 12, day: 1)
#let Today = datetime.today()

#let Intro = [
  My research interest includes:
  - Managed Runtime System
  - Machine Learning System
  - Large Language Models (LLM)
]
#let LifeCreed = [
  I will continue to search, even if the endless stars make my search hopeless, even if I am alone.
]

#let Intro_zh = [
  研究方向：
  - 运行时
  - 机器学习系统
  - 大语言模型
]
#let LifeCreed_zh = [
  我将继续寻找，就算这无尽的星辰令我的寻找希望渺茫，就算我将单枪匹马。
]


// 专业技能
#let ProgrammingLanguages = [
  // C++, Python, Rust
  #CPP, 
  #Python, 
  #Rust
]

#let Skills = [
  #Linux,
  #PyTorch,
  #CMake,
  #CUDA
]

