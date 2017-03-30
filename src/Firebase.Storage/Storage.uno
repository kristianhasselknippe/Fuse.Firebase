using Uno;
using Uno.UX;
using Uno.Collections;
using Uno.Compiler.ExportTargetInterop;
using Fuse;
using Fuse.Triggers;
using Fuse.Controls;
using Fuse.Controls.Native;
using Fuse.Controls.Native.Android;
using Uno.Threading;

namespace Firebase.Storage
{

    [ForeignInclude(Language.Java, "java.util.ArrayList", "java.util.List", "android.graphics.Color",
                    "com.google.android.gms.tasks.OnCompleteListener",
                    "com.google.android.gms.tasks.Task",
                    "com.google.firebase.auth.AuthResult",
                    "com.google.firebase.auth.FirebaseAuth",
                    "com.google.firebase.auth.FirebaseUser",
					"com.google.firebase.storage.FirebaseStorage")]
    [Require("Gradle.Dependency.Compile", "com.google.firebase:firebase-storage:10.2.0")]
    //[Require("AppDelegate.SourceFile.Declaration", "#include <@{Firebase.Authentication.AuthService:Include}>")]
    //[extern(iOS) Require("Source.Include", "Firebase/Firebase.h")]
    //[extern(iOS) Require("Source.Include", "FirebaseAuth/FirebaseAuth.h")]
    //[extern(iOS) Require("Cocoapods.Podfile.Target", "pod 'Firebase/Auth'")]
    extern(mobile)
    internal static class StorageService
	{
		[Foreign(Language.Java)]
		void GetStorage()
		@{
			FirebaseStorage storage = FirebaseStorage.getInstance();

		@}

	}
}
