	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	18
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	368
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 8c81d503-ba08-4e9e-955b-8e3f46e6259d */
	.byte	0x03, 0xd5, 0x81, 0x8c, 0x08, 0xba, 0x9e, 0x4e, 0x95, 0x5b, 0x8e, 0x3f, 0x46, 0xe6, 0x25, 0x9d
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.DrawerLayout */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1d973306-500c-45bc-a7d7-f86648aa18d4 */
	.byte	0x06, 0x33, 0x97, 0x1d, 0x0c, 0x50, 0xbc, 0x45, 0xa7, 0xd7, 0xf8, 0x66, 0x48, 0xaa, 0x18, 0xd4
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.Common */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 972fff0b-ebb0-452d-b81b-441068f3622b */
	.byte	0x0b, 0xff, 0x2f, 0x97, 0xb0, 0xeb, 0x2d, 0x45, 0xb8, 0x1b, 0x44, 0x10, 0x68, 0xf3, 0x62, 0x2b
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CoordinatorLayout */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1529b919-4950-4974-b0b6-599585da2ab5 */
	.byte	0x19, 0xb9, 0x29, 0x15, 0x50, 0x49, 0x74, 0x49, 0xb0, 0xb6, 0x59, 0x95, 0x85, 0xda, 0x2a, 0xb5
	/* entry_count */
	.word	245
	/* duplicate_count */
	.word	121
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: c76ff11b-7138-4abb-8c41-f6ce0b2c9f68 */
	.byte	0x1b, 0xf1, 0x6f, 0xc7, 0x38, 0x71, 0xbb, 0x4a, 0x8c, 0x41, 0xf6, 0xce, 0x0b, 0x2c, 0x9f, 0x68
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.SavedState */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 977e7a21-58c6-419b-8cd5-337f4cf3927f */
	.byte	0x21, 0x7a, 0x7e, 0x97, 0xc6, 0x58, 0x9b, 0x41, 0x8c, 0xd5, 0x33, 0x7f, 0x4c, 0xf3, 0x92, 0x7f
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: LocalDropAndroid */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 15834755-8da6-478f-9b50-617be9d46e8f */
	.byte	0x55, 0x47, 0x83, 0x15, 0xa6, 0x8d, 0x8f, 0x47, 0x9b, 0x50, 0x61, 0x7b, 0xe9, 0xd4, 0x6e, 0x8f
	/* entry_count */
	.word	10
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Android.Material */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 6af61659-5025-49b3-9422-56a118315201 */
	.byte	0x59, 0x16, 0xf6, 0x6a, 0x25, 0x50, 0xb3, 0x49, 0x94, 0x22, 0x56, 0xa1, 0x18, 0x31, 0x52, 0x01
	/* entry_count */
	.word	10
	/* duplicate_count */
	.word	5
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	module7_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Fragment */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: d2b01d5a-b81d-4f62-80e2-c362d81d9cd9 */
	.byte	0x5a, 0x1d, 0xb0, 0xd2, 0x1d, 0xb8, 0x62, 0x4f, 0x80, 0xe2, 0xc3, 0x62, 0xd8, 0x1d, 0x9c, 0xd9
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 39474576-1024-4319-8815-86282e2971d8 */
	.byte	0x76, 0x45, 0x47, 0x39, 0x24, 0x10, 0x19, 0x43, 0x88, 0x15, 0x86, 0x28, 0x2e, 0x29, 0x71, 0xd8
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Loader */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b034fa80-29bd-4559-8354-26a743f74253 */
	.byte	0x80, 0xfa, 0x34, 0xb0, 0xbd, 0x29, 0x59, 0x45, 0x83, 0x54, 0x26, 0xa7, 0x43, 0xf7, 0x42, 0x53
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.AndroidX.Activity */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 9ac1089a-eef9-4b98-b18e-ecbbdf857cee */
	.byte	0x9a, 0x08, 0xc1, 0x9a, 0xf9, 0xee, 0x98, 0x4b, 0xb1, 0x8e, 0xec, 0xbb, 0xdf, 0x85, 0x7c, 0xee
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	module11_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 5d71c2a3-54dd-4890-8b03-0874d6551eff */
	.byte	0xa3, 0xc2, 0x71, 0x5d, 0xdd, 0x54, 0x90, 0x48, 0x8b, 0x03, 0x08, 0x74, 0xd6, 0x55, 0x1e, 0xff
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	module12_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CustomView */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 62276eba-8f88-496a-b058-4546e2f5da3c */
	.byte	0xba, 0x6e, 0x27, 0x62, 0x88, 0x8f, 0x6a, 0x49, 0xb0, 0x58, 0x45, 0x46, 0xe2, 0xf5, 0xda, 0x3c
	/* entry_count */
	.word	41
	/* duplicate_count */
	.word	20
	/* map */
	.xword	module13_managed_to_java
	/* duplicate_map */
	.xword	module13_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Core */
	.xword	.L.map_aname.13
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 0fc336bd-e4ce-4cc5-b13b-52810f0ac504 */
	.byte	0xbd, 0x36, 0xc3, 0x0f, 0xce, 0xe4, 0xc5, 0x4c, 0xb1, 0x3b, 0x52, 0x81, 0x0f, 0x0a, 0xc5, 0x04
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module14_managed_to_java
	/* duplicate_map */
	.xword	module14_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.VersionedParcelable */
	.xword	.L.map_aname.14
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 379d77c4-cf8a-4445-860b-68af3453eb4e */
	.byte	0xc4, 0x77, 0x9d, 0x37, 0x8a, 0xcf, 0x45, 0x44, 0x86, 0x0b, 0x68, 0xaf, 0x34, 0x53, 0xeb, 0x4e
	/* entry_count */
	.word	30
	/* duplicate_count */
	.word	17
	/* map */
	.xword	module15_managed_to_java
	/* duplicate_map */
	.xword	module15_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.AppCompat */
	.xword	.L.map_aname.15
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module16_managed_to_java
	/* duplicate_map */
	.xword	module16_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.xword	.L.map_aname.16
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 965ee4e5-b5e4-4fc6-9599-a10985f821f3 */
	.byte	0xe5, 0xe4, 0x5e, 0x96, 0xe4, 0xb5, 0xc6, 0x4f, 0x95, 0x99, 0xa1, 0x09, 0x85, 0xf8, 0x21, 0xf3
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module17_managed_to_java
	/* duplicate_map */
	.xword	module17_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel */
	.xword	.L.map_aname.17
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 1296
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554720
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	66

	/* #1 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	49

	/* #2 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	44

	/* #3 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554726
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	51

	/* #4 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	58

	/* #5 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554731
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	72

	/* #6 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554732
	/* java_name */
	.ascii	"android/app/Application"
	.zero	69

	/* #7 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	42

	/* #8 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554735
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	74

	/* #9 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554736
	/* java_name */
	.ascii	"android/app/Notification"
	.zero	68

	/* #10 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554737
	/* java_name */
	.ascii	"android/app/Notification$Builder"
	.zero	60

	/* #11 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554738
	/* java_name */
	.ascii	"android/app/NotificationChannel"
	.zero	61

	/* #12 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554739
	/* java_name */
	.ascii	"android/app/NotificationChannelGroup"
	.zero	56

	/* #13 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554740
	/* java_name */
	.ascii	"android/app/NotificationManager"
	.zero	61

	/* #14 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554741
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	67

	/* #15 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554742
	/* java_name */
	.ascii	"android/app/TaskStackBuilder"
	.zero	64

	/* #16 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	58

	/* #17 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	57

	/* #18 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	63

	/* #19 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554749
	/* java_name */
	.ascii	"android/content/Context"
	.zero	69

	/* #20 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554751
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	62

	/* #21 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	61

	/* #22 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554758
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	70

	/* #23 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554759
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	64

	/* #24 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	59

	/* #25 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	52

	/* #26 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	26

	/* #27 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	62

	/* #28 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554772
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	59

	/* #29 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554768
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	58

	/* #30 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554769
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	59

	/* #31 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554770
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	63

	/* #32 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554718
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	60

	/* #33 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554701
	/* java_name */
	.ascii	"android/graphics/Bitmap"
	.zero	69

	/* #34 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554702
	/* java_name */
	.ascii	"android/graphics/BlendMode"
	.zero	66

	/* #35 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554703
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	69

	/* #36 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554704
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	64

	/* #37 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554705
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	69

	/* #38 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	70

	/* #39 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554707
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	70

	/* #40 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554708
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	65

	/* #41 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554709
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	60

	/* #42 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554710
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	71

	/* #43 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554711
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	70

	/* #44 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554713
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	58

	/* #45 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	49

	/* #46 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554717
	/* java_name */
	.ascii	"android/graphics/drawable/Icon"
	.zero	62

	/* #47 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554699
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	77

	/* #48 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	71

	/* #49 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554686
	/* java_name */
	.ascii	"android/os/Build"
	.zero	76

	/* #50 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554687
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	68

	/* #51 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	75

	/* #52 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554689
	/* java_name */
	.ascii	"android/os/Environment"
	.zero	70

	/* #53 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554690
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	74

	/* #54 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	75

	/* #55 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554696
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	75

	/* #56 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	71

	/* #57 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	63

	/* #58 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554684
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	56

	/* #59 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	58

	/* #60 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	67

	/* #61 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554680
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	65

	/* #62 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554683
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	68

	/* #63 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554593
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	69

	/* #64 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	60

	/* #65 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554597
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	65

	/* #66 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	68

	/* #67 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	52

	/* #68 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554599
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	60

	/* #69 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"android/view/Display"
	.zero	72

	/* #70 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	70

	/* #71 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554614
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	69

	/* #72 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554626
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	71

	/* #73 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	62

	/* #74 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554625
	/* java_name */
	.ascii	"android/view/KeyboardShortcutGroup"
	.zero	58

	/* #75 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554629
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	65

	/* #76 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	57

	/* #77 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	56

	/* #78 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Filter"
	.zero	58

	/* #79 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	75

	/* #80 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554637
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	67

	/* #81 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	71

	/* #82 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	48

	/* #83 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	47

	/* #84 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554638
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	68

	/* #85 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554639
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	68

	/* #86 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	72

	/* #87 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554640
	/* java_name */
	.ascii	"android/view/View"
	.zero	75

	/* #88 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	59

	/* #89 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	47

	/* #90 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	70

	/* #91 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554646
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	57

	/* #92 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554647
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	51

	/* #93 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	68

	/* #94 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	69

	/* #95 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554649
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	59

	/* #96 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554650
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	63

	/* #97 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	45

	/* #98 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554653
	/* java_name */
	.ascii	"android/view/Window"
	.zero	73

	/* #99 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	64

	/* #100 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554657
	/* java_name */
	.ascii	"android/view/WindowInsets"
	.zero	67

	/* #101 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	66

	/* #102 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	53

	/* #103 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554658
	/* java_name */
	.ascii	"android/view/WindowMetrics"
	.zero	66

	/* #104 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554673
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	47

	/* #105 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	41

	/* #106 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554674
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	46

	/* #107 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554669
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	60

	/* #108 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	57

	/* #109 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	70

	/* #110 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554581
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	66

	/* #111 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	43

	/* #112 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	66

	/* #113 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	57

	/* #114 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554591
	/* java_name */
	.ascii	"android/widget/RemoteViews"
	.zero	66

	/* #115 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	63

	/* #116 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554592
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	69

	/* #117 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"androidx/activity/ComponentActivity"
	.zero	57

	/* #118 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar"
	.zero	60

	/* #119 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$LayoutParams"
	.zero	47

	/* #120 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener"
	.zero	35

	/* #121 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnNavigationListener"
	.zero	39

	/* #122 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$Tab"
	.zero	56

	/* #123 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$TabListener"
	.zero	48

	/* #124 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle"
	.zero	48

	/* #125 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$Delegate"
	.zero	39

	/* #126 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	31

	/* #127 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatActivity"
	.zero	52

	/* #128 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatCallback"
	.zero	52

	/* #129 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554495
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDelegate"
	.zero	52

	/* #130 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"androidx/appcompat/graphics/drawable/DrawerArrowDrawable"
	.zero	36

	/* #131 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554512
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode"
	.zero	58

	/* #132 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode$Callback"
	.zero	49

	/* #133 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554516
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder"
	.zero	52

	/* #134 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder$Callback"
	.zero	43

	/* #135 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554525
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuItemImpl"
	.zero	51

	/* #136 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter"
	.zero	50

	/* #137 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter$Callback"
	.zero	41

	/* #138 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuView"
	.zero	55

	/* #139 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554526
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/SubMenuBuilder"
	.zero	49

	/* #140 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/widget/DecorToolbar"
	.zero	54

	/* #141 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView"
	.zero	41

	/* #142 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554511
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	18

	/* #143 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554499
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar"
	.zero	59

	/* #144 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener"
	.zero	35

	/* #145 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554500
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	26

	/* #146 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout"
	.zero	41

	/* #147 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior"
	.zero	32

	/* #148 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams"
	.zero	28

	/* #149 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554524
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat"
	.zero	60

	/* #150 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	25

	/* #151 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$PermissionCompatDelegate"
	.zero	35

	/* #152 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	21

	/* #153 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554531
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity"
	.zero	57

	/* #154 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554532
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity$ExtraData"
	.zero	47

	/* #155 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/NotificationBuilderWithBuilderAccessor"
	.zero	36

	/* #156 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554535
	/* java_name */
	.ascii	"androidx/core/app/NotificationCompat"
	.zero	56

	/* #157 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554536
	/* java_name */
	.ascii	"androidx/core/app/NotificationCompat$Action"
	.zero	49

	/* #158 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554537
	/* java_name */
	.ascii	"androidx/core/app/NotificationCompat$BubbleMetadata"
	.zero	41

	/* #159 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554538
	/* java_name */
	.ascii	"androidx/core/app/NotificationCompat$Builder"
	.zero	48

	/* #160 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/NotificationCompat$Extender"
	.zero	47

	/* #161 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554541
	/* java_name */
	.ascii	"androidx/core/app/NotificationCompat$Style"
	.zero	50

	/* #162 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554543
	/* java_name */
	.ascii	"androidx/core/app/NotificationManagerCompat"
	.zero	49

	/* #163 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554544
	/* java_name */
	.ascii	"androidx/core/app/RemoteInput"
	.zero	63

	/* #164 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554545
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback"
	.zero	53

	/* #165 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	23

	/* #166 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder"
	.zero	58

	/* #167 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder$SupportParentable"
	.zero	40

	/* #168 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554522
	/* java_name */
	.ascii	"androidx/core/content/ContextCompat"
	.zero	57

	/* #169 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554523
	/* java_name */
	.ascii	"androidx/core/content/pm/PackageInfoCompat"
	.zero	50

	/* #170 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554520
	/* java_name */
	.ascii	"androidx/core/graphics/Insets"
	.zero	63

	/* #171 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554521
	/* java_name */
	.ascii	"androidx/core/graphics/drawable/IconCompat"
	.zero	50

	/* #172 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenu"
	.zero	53

	/* #173 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenuItem"
	.zero	49

	/* #174 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554485
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider"
	.zero	59

	/* #175 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$SubUiVisibilityListener"
	.zero	35

	/* #176 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$VisibilityListener"
	.zero	40

	/* #177 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554499
	/* java_name */
	.ascii	"androidx/core/view/DisplayCutoutCompat"
	.zero	54

	/* #178 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554500
	/* java_name */
	.ascii	"androidx/core/view/DragAndDropPermissionsCompat"
	.zero	45

	/* #179 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554511
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher"
	.zero	55

	/* #180 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher$Component"
	.zero	45

	/* #181 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent"
	.zero	52

	/* #182 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent2"
	.zero	51

	/* #183 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent3"
	.zero	51

	/* #184 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554514
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorCompat"
	.zero	47

	/* #185 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorListener"
	.zero	45

	/* #186 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorUpdateListener"
	.zero	39

	/* #187 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554515
	/* java_name */
	.ascii	"androidx/core/view/WindowInsetsCompat"
	.zero	55

	/* #188 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/customview/widget/Openable"
	.zero	57

	/* #189 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout"
	.zero	51

	/* #190 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout$DrawerListener"
	.zero	36

	/* #191 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment"
	.zero	62

	/* #192 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment$SavedState"
	.zero	51

	/* #193 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentActivity"
	.zero	54

	/* #194 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentFactory"
	.zero	55

	/* #195 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager"
	.zero	55

	/* #196 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$BackStackEntry"
	.zero	40

	/* #197 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	28

	/* #198 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$OnBackStackChangedListener"
	.zero	28

	/* #199 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentTransaction"
	.zero	51

	/* #200 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/HasDefaultViewModelProviderFactory"
	.zero	39

	/* #201 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle"
	.zero	64

	/* #202 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle$State"
	.zero	58

	/* #203 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleObserver"
	.zero	56

	/* #204 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleOwner"
	.zero	59

	/* #205 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/LiveData"
	.zero	65

	/* #206 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/Observer"
	.zero	65

	/* #207 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider"
	.zero	56

	/* #208 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider$Factory"
	.zero	48

	/* #209 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStore"
	.zero	59

	/* #210 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStoreOwner"
	.zero	54

	/* #211 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager"
	.zero	59

	/* #212 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager$LoaderCallbacks"
	.zero	43

	/* #213 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"androidx/loader/content/Loader"
	.zero	62

	/* #214 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCanceledListener"
	.zero	39

	/* #215 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCompleteListener"
	.zero	39

	/* #216 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry"
	.zero	54

	/* #217 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry$SavedStateProvider"
	.zero	35

	/* #218 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistryOwner"
	.zero	49

	/* #219 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/versionedparcelable/CustomVersionedParcelable"
	.zero	38

	/* #220 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/versionedparcelable/VersionedParcelable"
	.zero	44

	/* #221 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior"
	.zero	35

	/* #222 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener"
	.zero	17

	/* #223 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar"
	.zero	33

	/* #224 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback"
	.zero	20

	/* #225 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$Behavior"
	.zero	24

	/* #226 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/material/snackbar/ContentViewCallback"
	.zero	36

	/* #227 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar"
	.zero	47

	/* #228 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar$Callback"
	.zero	38

	/* #229 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar_SnackbarActionClickImplementor"
	.zero	16

	/* #230 */
	/* module_index */
	.word	16
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	42

	/* #231 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc6440dc09492b574af4/MainActivity"
	.zero	58

	/* #232 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	38

	/* #233 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	75

	/* #234 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554986
	/* java_name */
	.ascii	"java/io/File"
	.zero	80

	/* #235 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554987
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	70

	/* #236 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554988
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	69

	/* #237 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	75

	/* #238 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554996
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	73

	/* #239 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554993
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	73

	/* #240 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554995
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	62

	/* #241 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554999
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	72

	/* #242 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33555001
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	73

	/* #243 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	72

	/* #244 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33555002
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	72

	/* #245 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33555003
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	78

	/* #246 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	72

	/* #247 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554928
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	75

	/* #248 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554929
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	78

	/* #249 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	70

	/* #250 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554930
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	73

	/* #251 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554931
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	77

	/* #252 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554932
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	64

	/* #253 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554933
	/* java_name */
	.ascii	"java/lang/ClassLoader"
	.zero	71

	/* #254 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554935
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	60

	/* #255 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	73

	/* #256 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	72

	/* #257 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554936
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	76

	/* #258 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554937
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	78

	/* #259 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554939
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	77

	/* #260 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554940
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	73

	/* #261 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554941
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	77

	/* #262 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554953
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	58

	/* #263 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554954
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	61

	/* #264 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554955
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	57

	/* #265 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554956
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	75

	/* #266 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	74

	/* #267 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554959
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	70

	/* #268 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	78

	/* #269 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554961
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	62

	/* #270 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554962
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	62

	/* #271 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554963
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	76

	/* #272 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554965
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	76

	/* #273 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554966
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	54

	/* #274 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	74

	/* #275 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554967
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	66

	/* #276 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554968
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	65

	/* #277 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554969
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	77

	/* #278 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554970
	/* java_name */
	.ascii	"java/lang/String"
	.zero	76

	/* #279 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554972
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	76

	/* #280 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554974
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	73

	/* #281 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554975
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	53

	/* #282 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	61

	/* #283 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	58

	/* #284 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	56

	/* #285 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	70

	/* #286 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	62

	/* #287 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554909
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	67

	/* #288 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554910
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	66

	/* #289 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554912
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	66

	/* #290 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554913
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	66

	/* #291 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554914
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	78

	/* #292 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554915
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	73

	/* #293 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554916
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	70

	/* #294 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	70

	/* #295 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	68

	/* #296 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	61

	/* #297 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554923
	/* java_name */
	.ascii	"java/net/URI"
	.zero	80

	/* #298 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554924
	/* java_name */
	.ascii	"java/net/URL"
	.zero	80

	/* #299 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	70

	/* #300 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554922
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	60

	/* #301 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554885
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	77

	/* #302 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554887
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	73

	/* #303 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	63

	/* #304 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	67

	/* #305 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554889
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	63

	/* #306 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	54

	/* #307 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	54

	/* #308 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	55

	/* #309 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	53

	/* #310 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	55

	/* #311 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	55

	/* #312 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554907
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	42

	/* #313 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554872
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	70

	/* #314 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	51

	/* #315 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	50

	/* #316 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	69

	/* #317 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554877
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	66

	/* #318 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554878
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	62

	/* #319 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554880
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	55

	/* #320 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554883
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	58

	/* #321 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	60

	/* #322 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554813
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	73

	/* #323 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554802
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	72

	/* #324 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Comparator"
	.zero	72

	/* #325 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	71

	/* #326 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	75

	/* #327 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554822
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	75

	/* #328 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	74

	/* #329 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554853
	/* java_name */
	.ascii	"java/util/Random"
	.zero	76

	/* #330 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Spliterator"
	.zero	71

	/* #331 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	63

	/* #332 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	65

	/* #333 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554869
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	63

	/* #334 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/Consumer"
	.zero	65

	/* #335 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/Function"
	.zero	65

	/* #336 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/ToDoubleFunction"
	.zero	57

	/* #337 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/ToIntFunction"
	.zero	60

	/* #338 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/ToLongFunction"
	.zero	59

	/* #339 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554552
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	69

	/* #340 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	62

	/* #341 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	60

	/* #342 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	68

	/* #343 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554568
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	61

	/* #344 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554569
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	68

	/* #345 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	68

	/* #346 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	61

	/* #347 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554570
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	62

	/* #348 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	66

	/* #349 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	59

	/* #350 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	62

	/* #351 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554551
	/* java_name */
	.ascii	"javax/security/auth/Subject"
	.zero	65

	/* #352 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554547
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	61

	/* #353 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	57

	/* #354 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33555027
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	68

	/* #355 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554798
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	53

	/* #356 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	62

	/* #357 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554819
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	61

	/* #358 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	52

	/* #359 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	19

	/* #360 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554505
	/* java_name */
	.ascii	"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	19

	/* #361 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	19

	/* #362 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor"
	.zero	24

	/* #363 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	20

	/* #364 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	12

	/* #365 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"mono/com/google/android/material/behavior/SwipeDismissBehavior_OnDismissListenerImplementor"
	.zero	1

	/* #366 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554973
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	58

	/* #367 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554546
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	46

	.size	map_java, 36800
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	92
/* java_name_width: END */
