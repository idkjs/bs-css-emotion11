open Css

insertRule(
  ".raw-css { display:block; background-color: green; width: 50px; height: 50px; }",
)

@react.component
let make = () =>
  <div className={style(list{background(hex("f5f5f5"))})}>
    <div
      className={style(list{
        marginLeft(px(20)),
        before(list{contentRule(#attr("class")), border(px(1), solid, black)}),
      })}>
      {"TEST"->React.string}
    </div>
    <Section name="content">
      <div
        className={style(list{
          marginLeft(px(20)),
          before(list{
            contentRule(
              Types.Gradient.linearGradient(
                deg(45.),
                list{(zero, red), (pct(100.), blue)},
              ),
            ),
            border(px(1), solid, black),
            display(#inlineBlock),
            height(px(18)),
            width(px(18)),
          }),
        })}>
        {"linear gradient"->React.string}
      </div>
      <div
        className={style(list{
          marginLeft(px(20)),
          before(list{
            contentRule(#attr("class")),
            border(px(1), solid, black),
          }),
        })}>
        {"linear gradient2"->React.string}
      </div>
      <div
        className={style(list{
          marginLeft(px(20)),
          before(list{
            contentRules(list{#openQuote, #text("foo"), #closeQuote}),
            border(px(1), solid, black),
          }),
        })}>
        {"contents (quotes)"->React.string}
      </div>
    </Section>
  </div>
