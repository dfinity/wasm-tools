(component
  (type (;0;)
    (component
      (type (;0;)
        (instance
          (type (;0;) (func (param "arg" string)))
          (export (;0;) "log" (func (type 0)))
        )
      )
      (export (;0;) (interface "foo:console/console") (instance (type 0)))
    )
  )
  (export (;1;) "console" (type 0))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)