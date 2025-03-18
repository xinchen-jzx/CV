#import "template.typ": *
#import "PersonalInfos.typ": *

#let Scholarship_duration = display_duration(d1: datetime(year: 2023, month: 9, day: 1), d2: datetime(year: 2024, month: 9, day: 1), date_format: false)
#let OutstandingStudent_date = datetime(year: 1234, month: 9, day: 1)
#let Heaven_Modeling_Contest_date = datetime(year: 2023, month: 12, day: 1)
#let GPLT_Contest_date = datetime(year: 2024, month: 4, day: 1)
#let Compiler_Implement_Contest_date = datetime(year: 2024, month: 8, day: 1)
#let HSOS_Implement_Contest_date = datetime(year: 2024, month: 11, day: 1)

#let Awards = [
  #item(
    [ *Heaven Scholarship* ], [ *First* ],
    Scholarship_duration
  )
  #item(
    [ *The 1345th Heaven Modeling Contest* ],
    [ *Second Prize* ],
    display_date(d: Heaven_Modeling_Contest_date, date_format: false)
  )
]

#let Awards_zh = [
  #item(
    [ *国家励志奖学金* ], [ *2023/2024* ],
    Scholarship_duration
  )
  #item(
    [ *国防科技大学计算机学院* ], [ *优秀学员·学习标兵* ],
    display_duration(d1: datetime(year: 2021, month: 9, day: 1), d2: datetime(year: 2025, month: 6, day: 1), date_format: false)
  )
  #item(
    [ *第七届全军军事建模竞赛* ], [ *二等奖* ],
    display_date(d: Heaven_Modeling_Contest_date, date_format: false)
  )
  #item(
    [ *中国高校计算机大赛-团体程序设计天梯赛* ], [ *三等奖* ],
    display_date(d: GPLT_Contest_date, date_format: false)
  )
  #item(
    [ *全国大学生计算机系统能力大赛编译系统设计赛* ], [ *二等奖* ],
    display_date(d: Compiler_Implement_Contest_date, date_format: false)
  )
  #item(
    [ *第七届开源创新大赛“红山开源”操作系统-开源任务挑战赛* ], [ *一等奖* ],
    display_date(d: HSOS_Implement_Contest_date, date_format: false)
  )
]