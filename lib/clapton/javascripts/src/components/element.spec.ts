import { describe, it, expect } from "vitest"
import { Element } from "./element"
import { BlockQuote } from "./block-quote"
import { Text } from "./text"

describe("Element", () => {
  it("returns empty string if no params", () => {
    expect(new Element("blockquote").render).toBe("<blockquote ></blockquote>")
  })

  it("returns attributes and data attributes", () => {
    expect(new Element("blockquote", { id: "1", "data-foo": "bar" }).render).toBe(`<blockquote id='1' data-foo='bar'></blockquote>`)
  })

  it("returns attributes and data attributes with custom data attributes", () => {
    expect(new Element("blockquote", { id: "1", data: { foo: "bar" } }).render).toBe(`<blockquote id='1' data-foo='bar'></blockquote>`)
    expect(new Element("blockquote", { id: "1", data: { foo: "bar", baz: "qux" } }).render).toBe(`<blockquote id='1' data-foo='bar' data-baz='qux'></blockquote>`)
    expect(new Element("blockquote", { id: "1", data: { foo: { baz: "qux", quux: "corge" } } }).render).toBe(`<blockquote id='1' data-foo-baz='qux' data-foo-quux='corge'></blockquote>`)
  })

  it("adds children", () => {
    const text = new Text("Hello")
    const blockQuote = new Element("blockquote")
    blockQuote.add(text)
    expect(blockQuote.render).toBe(`<blockquote >Hello</blockquote>`)
  })
})
