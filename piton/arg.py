def func(args):
 print(args)

def func2(*args):
 print(args)

def func3(**kwargs):
 print(kwargs["arg"])

func(21)
func2(21,51,31)
func3(arg = "First value")
