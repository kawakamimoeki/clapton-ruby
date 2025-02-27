class SampleComponent < Clapton::Component
  def render
    box = c(:div, { class: "sample-component" })
    text = Clapton::Text.new(@state.message)
    box
      .add(c(:a, "/tasks").add(c(:text, "Tasks")))
      .add(Clapton::BlockQuote.new.add(text))
      .add(c(:blockquote).add(text))
      .add(Clapton::Div.new.add(text))
      .add(c(:div).add(text))
      .add(Clapton::Button.new.add(text))
      .add(c(:button).add(text))
      .add(Clapton::Code.new(text))
      .add(c(:code).add(text))
      .add(Clapton::Element.new("p").add(text))
      .add(c(:el, "p").add(text))
      .add(Clapton::Embed.new("<p>Text</p>"))
      .add(c(:embed, "<p>Text</p>"))
      .add(Clapton::Emphasis.new(text))
      .add(c(:em).add(text))
      .add(Clapton::Form.new.add(text))
      .add(c(:form).add(text))
      .add(Clapton::Heading.new(1, text))
      .add(c(:h1).add(text))
      .add(Clapton::Image.new("https://example.com/image.png", "Image"))
      .add(c(:img, "https://example.com/image.png", "Image"))
      .add(Clapton::Link.new("https://example.com").add(text))
      .add(c(:a, "https://example.com").add(text))
      .add(Clapton::List.new.add(
        Clapton::ListItem.new.add(text),
        Clapton::ListItem.new.add(text),
      ))
      .add(c(:ul).add(
        c(:li).add(text),
        c(:li).add(text),
      ))
      .add(Clapton::OrderedList.new.add(
        Clapton::ListItem.new.add(text),
        Clapton::ListItem.new.add(text),
      ))
      .add(c(:ol).add(
        c(:li).add(text),
        c(:li).add(text),
      ))
      .add(Clapton::Paragraph.new(text))
      .add(c(:p).add(text))
      .add(Clapton::Quote.new(text))
      .add(c(:q).add(text))
      .add(Clapton::Select.new([], :HomeState, :boolean))
      .add(c(:select, [], :HomeState, :boolean))
      .add(Clapton::Span.new.add(text))
      .add(c(:span).add(text))
      .add(Clapton::TextArea.new(@state, :message, {}))
      .add(c(:textarea, @state, :message, {}))
      .add(Clapton::Input.new(@state, :message, {}))
      .add(c(:input, @state, :message, {}))
      .add(Clapton::Text.new("Hello World"))
      .add(c(:text, "Hello World"))
  end
end
