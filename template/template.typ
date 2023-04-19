#import "font.typ": *



#let Thesis(
  // 参考文献bib文件路径
) = {
  set page(paper:  "a4",
           margin: (
              top: 2.54cm,
              bottom: 2.54cm,
              left: 2.5cm,
              right: 2cm),
          footer: [
              #set align(center)
              #set text(size: 10pt, baseline: -3pt)
              #counter(page).display(
              "1")
            ]
  )

  // 封面
  include "cover.typ"

  set page(
    header: {
      set align(left)
      [#image("./images/zjgsu_page_logo.png", width: 30%)]
      set text(font: songti, 10pt, baseline: 8pt, spacing: 3pt)
      set align(right)
      [毕业论文：正文]
      line(length: 100%, stroke: 0.1pt)
    }
  )

  // 目录
  include "toc.typ"
  
  // 摘要
  include "abstract.typ"

  // 正文
  include "body.typ"

  // 致谢
  include "acknowledgement.typ"

  // 参考文献
  include "reference.typ"

  //附录
  include "appendix.typ"

}