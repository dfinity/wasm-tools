(component
  (type (;0;)
    (instance
      (type (;0;) (record (field "f" u8)))
      (export (;1;) "foo" (type (eq 0)))
    )
  )
  (import "foo:foo/foo" (instance (;0;) (type 0)))
  (core module (;0;)
    (type (;0;) (func (result i32)))
    (func (;0;) (type 0) (result i32)
      unreachable
    )
    (export "bar#foo" (func 0))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core instance (;0;) (instantiate 0))
  (alias export 0 "foo" (type (;1;)))
  (type (;2;) (func (result 1)))
  (alias core export 0 "bar#foo" (core func (;0;)))
  (func (;0;) (type 2) (canon lift (core func 0)))
  (alias export 0 "foo" (type (;3;)))
  (component (;0;)
    (type (;0;) (record (field "f" u8)))
    (import "import-type-foo" (type (;1;) (eq 0)))
    (import "import-type-bar" (type (;2;) (eq 1)))
    (type (;3;) (func (result 2)))
    (import "import-func-foo" (func (;0;) (type 3)))
    (export (;4;) "bar" (type 1))
    (type (;5;) (func (result 4)))
    (export (;1;) "foo" (func 0) (func (type 5)))
  )
  (instance (;1;) (instantiate 0
      (with "import-func-foo" (func 0))
      (with "import-type-foo" (type 3))
      (with "import-type-bar" (type 1))
    )
  )
  (export (;2;) "bar" (instance 1))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)