### Problem

When build project with `dotnet.exe` (3.1.301) and [`Costura.Fody`](https://github.com/Fody/Costura) package with `TargetFramework` is `net48` the resulting exe is unusable.

### Error message

    Unhandled Exception: System.TypeInitializationException: The type initializer for '<Module>' threw an exception. ---> System.IO.FileNotFoundException: Could not load file or as sembly 'System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e' or one of its dependencies. The system cannot find the file specified.
       at .cctor()
       --- End of inner exception stack trace ---

### Reproduce

- checkout this repo
- run `build-with-failed-output.cmd` in repository root