import { describe, it, expect } from "vitest"
import { Box } from "./box"
import { Text } from "./text"

describe("Box", () => {
  it("returns empty string if no params", () => {
    expect(new Box().render).toBe("<div ></div>")
  })

  it("returns attributes and data attributes", () => {
    expect(new Box({ id: "1", "data-foo": "bar" }).render).toBe(`<div id='1' data-foo='bar'></div>`)
  })

  it("returns attributes and data attributes with custom data attributes", () => {
    expect(new Box({ id: "1", data: { foo: "bar" } }).render).toBe(`<div id='1' data-foo='bar'></div>`)
    expect(new Box({ id: "1", data: { foo: "bar", baz: "qux" } }).render).toBe(`<div id='1' data-foo='bar' data-baz='qux'></div>`)
    expect(new Box({ id: "1", data: { foo: { baz: "qux", quux: "corge" } } }).render).toBe(`<div id='1' data-foo-baz='qux' data-foo-quux='corge'></div>`)
  })

  it("adds children", () => {
    expect(new Box().add(new Text("Hello, world!")).render).toBe(`<div >Hello, world!</div>`)
  })
})
