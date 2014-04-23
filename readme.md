#A WebApi2 IDependencyResolver wrapper for Structuremap 3.x

[**What it adds to your solution**]

2 directories to the root of your MVC project:

* App_Start (If not already in your solution)
* DependencyResolution

4 Files:

* App_Start/StructuremapWebApi.cs
* DependencyResolution/StructureMapWebApiDependencyResolver.cs 
* DependencyResolution/StructureMapWebApiDependencyScope.cs 
* DependencyResolution/IoC.cs (Structuremap's ObjectFactory Initialization, this is where you would define your mappings)


[**Default configuration**]

	public static IContainer Initialize() {
            ObjectFactory.Initialize(x =>
                        {
                            x.Scan(scan =>
                                    {
                                        scan.TheCallingAssembly();
                                        scan.WithDefaultConventions();
                                    });
            //                x.For<IExample>().Use<Example>();
                        });
            return ObjectFactory.Container;
        }

This configuration will *just work* for any Interfaces and concrete implementations that follow the default convention and are part of the project. I.E. ISomeService.cs implemented with SomeService.cs
