(component
  (core module (;0;)
    (type (;0;) (func (param i32) (result i32)))
    (type (;1;) (func (result i32)))
    (import "[export]foo:bar/name" "[resource-new]name" (func $new (;0;) (type 0)))
    (func (;1;) (type 1) (result i32)
      i32.const 100
      call $new
    )
    (export "foo:bar/name#foo" (func 1))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (type (;0;) (resource (rep i32)))
  (core func (;0;) (canon resource.new 0))
  (core instance (;0;)
    (export "[resource-new]name" (func 0))
  )
  (core instance (;1;) (instantiate 0
      (with "[export]foo:bar/name" (instance 0))
    )
  )
  (type (;1;) (own 0))
  (type (;2;) (func (result 1)))
  (alias core export 1 "foo:bar/name#foo" (core func (;1;)))
  (func (;0;) (type 2) (canon lift (core func 1)))
  (component (;0;)
    (import "import-type-name" (type (;0;) (sub resource)))
    (import "import-type-handle" (type (;1;) (eq 0)))
    (type (;2;) (own 1))
    (type (;3;) (func (result 2)))
    (import "import-func-foo" (func (;0;) (type 3)))
    (export (;4;) "name" (type 0))
    (export (;5;) "handle" (type 4))
    (type (;6;) (own 5))
    (type (;7;) (func (result 6)))
    (export (;1;) "foo" (func 0) (func (type 7)))
  )
  (instance (;0;) (instantiate 0
      (with "import-func-foo" (func 0))
      (with "import-type-name" (type 0))
      (with "import-type-handle" (type 0))
    )
  )
  (export (;1;) "foo:bar/name" (instance 0))
  (alias export 1 "name" (type (;3;)))
  (alias export 1 "handle" (type (;4;)))
  (component (;1;)
    (import "import-type-name" (type (;0;) (sub resource)))
    (import "import-type-handle" (type (;1;) (eq 0)))
    (export (;2;) "handle" (type 1))
  )
  (instance (;2;) (instantiate 1
      (with "import-type-name" (type 3))
      (with "import-type-handle" (type 4))
    )
  )
  (export (;3;) "name" (instance 2))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)