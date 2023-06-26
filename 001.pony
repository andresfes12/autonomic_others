actor Main
  new create(env: Env) =>
    let a: USize = 5 
    let b: USize = 3 
    let suma: USize = a + b
    env.out.print(suma.string())

  be Main(env: Env) =>
    create(env)
