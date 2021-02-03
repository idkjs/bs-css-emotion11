open Css;

insertRule(
  ".raw-css { display:block; background-color: green; width: 50px; height: 50px; }",
);

[@react.component]
let make = () =>

    <div className={style([background(hex("f5f5f5"))])}>

        <div
          className={style([
            marginLeft(px(20)),
            before([
              contentRule(`attr("class")),
              border(px(1), solid, black),
            ]),
          ])}>
          "TEST"->React.string
        </div>
      <Section name="content">
        <div
          className={style([
            marginLeft(px(20)),
            before([
              contentRule(
                Types.Gradient.linearGradient(
                  deg(45.),
                  [(zero, red), (pct(100.), blue)],
                ),
              ),
              border(px(1), solid, black),
              display(`inlineBlock),
              height(px(18)),
              width(px(18)),
            ]),
          ])}>
          "linear gradient"->React.string
        </div>
        <div
          className={style([
            marginLeft(px(20)),
            before([
              contentRule(`attr("class")),
              border(px(1), solid, black),
            ]),
          ])}>
          "linear gradient2"->React.string
        </div>
        <div
          className={style([
            marginLeft(px(20)),
            before([
              contentRules([`openQuote, `text("foo"), `closeQuote]),
              border(px(1), solid, black),
            ]),
          ])}>
          "contents (quotes)"->React.string
        </div>
      </Section>
      </div>;
