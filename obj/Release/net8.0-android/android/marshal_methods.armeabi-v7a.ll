; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [139 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [278 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 113
	i32 26230656, ; 1: Microsoft.Extensions.DependencyModel => 0x1903f80 => 46
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 129
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 55
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 121
	i32 159306688, ; 6: System.ComponentModel.Annotations => 0x97ed3c0 => 95
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 195452805, ; 9: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 10: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 98
	i32 280992041, ; 12: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 13: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 14: Xamarin.AndroidX.Activity.dll => 0x13031348 => 61
	i32 336156722, ; 15: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 347068432, ; 17: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 58
	i32 356389973, ; 18: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 363018393, ; 19: TodoListApp => 0x15a33899 => 89
	i32 374914964, ; 20: System.Transactions.Local => 0x1658bf94 => 131
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 129
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 111
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 24: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 94
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 71
	i32 469710990, ; 27: System.dll => 0x1bff388e => 133
	i32 498788369, ; 28: System.ObjectModel => 0x1dbae811 => 117
	i32 500358224, ; 29: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 30: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 31: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 50
	i32 530272170, ; 32: System.Linq.Queryable => 0x1f9b4faa => 109
	i32 539058512, ; 33: Microsoft.Extensions.Logging => 0x20216150 => 47
	i32 592146354, ; 34: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 69
	i32 627931235, ; 36: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 37: System.Collections.Concurrent => 0x2814a96c => 90
	i32 688181140, ; 38: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 39: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 40: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 41: System.Runtime.Loader.dll => 0x2b15ed29 => 122
	i32 748832960, ; 42: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 56
	i32 752882528, ; 43: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x2ce01360 => 59
	i32 759454413, ; 44: System.Net.Requests => 0x2d445acd => 115
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 107
	i32 777317022, ; 46: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 47: Microsoft.Extensions.Options => 0x2f0980eb => 49
	i32 804715423, ; 48: System.Data.Common => 0x2ff6fb9f => 100
	i32 823281589, ; 49: System.Private.Uri.dll => 0x311247b5 => 118
	i32 830298997, ; 50: System.IO.Compression.Brotli => 0x317d5b75 => 106
	i32 904024072, ; 51: System.ComponentModel.Primitives.dll => 0x35e25008 => 96
	i32 926902833, ; 52: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 53: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 975236339, ; 54: System.Diagnostics.Tracing => 0x3a20ecf3 => 103
	i32 992768348, ; 55: System.Collections.dll => 0x3b2c715c => 94
	i32 1012816738, ; 56: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 82
	i32 1019214401, ; 57: System.Drawing => 0x3cbffa41 => 105
	i32 1028951442, ; 58: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 45
	i32 1029334545, ; 59: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 60: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 62
	i32 1036536393, ; 61: System.Drawing.Primitives.dll => 0x3dc84a49 => 104
	i32 1044663988, ; 62: System.Linq.Expressions.dll => 0x3e444eb4 => 108
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1082857460, ; 64: System.ComponentModel.TypeConverter => 0x408b17f4 => 97
	i32 1084122840, ; 65: Xamarin.Kotlin.StdLib => 0x409e66d8 => 87
	i32 1098259244, ; 66: System => 0x41761b2c => 133
	i32 1118262833, ; 67: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1157931901, ; 68: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 37
	i32 1168523401, ; 69: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 70: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 79
	i32 1202000627, ; 71: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 37
	i32 1203215381, ; 72: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1204575371, ; 73: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 41
	i32 1234928153, ; 74: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 75: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 76: SQLitePCLRaw.core.dll => 0x4d0585a0 => 57
	i32 1293217323, ; 77: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 70
	i32 1324164729, ; 78: System.Linq => 0x4eed2679 => 110
	i32 1373134921, ; 79: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 82
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 66
	i32 1408764838, ; 82: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 124
	i32 1430672901, ; 83: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 84: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 85: System.Collections.Immutable.dll => 0x5718a9ef => 91
	i32 1462112819, ; 86: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 63
	i32 1470490898, ; 88: Microsoft.Extensions.Primitives => 0x57a5e912 => 50
	i32 1479771757, ; 89: System.Collections.Immutable => 0x5833866d => 91
	i32 1480492111, ; 90: System.IO.Compression.Brotli.dll => 0x583e844f => 106
	i32 1490351284, ; 91: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 35
	i32 1493001747, ; 92: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 93: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 94: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 128
	i32 1551623176, ; 95: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 96: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 85
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 68
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 112
	i32 1639986890, ; 100: System.Text.RegularExpressions => 0x61c036ca => 128
	i32 1657153582, ; 101: System.Runtime => 0x62c6282e => 125
	i32 1658251792, ; 102: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 86
	i32 1677501392, ; 103: System.Net.Primitives.dll => 0x63fca3d0 => 114
	i32 1679769178, ; 104: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 105: Microsoft.Data.Sqlite => 0x649e8ef3 => 35
	i32 1689493916, ; 106: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 36
	i32 1711441057, ; 107: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 58
	i32 1729485958, ; 108: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1736233607, ; 109: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 110: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1744735666, ; 111: System.Transactions.Local.dll => 0x67fe8db2 => 131
	i32 1763938596, ; 112: System.Diagnostics.TraceSource.dll => 0x69239124 => 102
	i32 1766324549, ; 113: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1770582343, ; 114: Microsoft.Extensions.Logging.dll => 0x6988f147 => 47
	i32 1780572499, ; 115: Mono.Android.Runtime.dll => 0x6a216153 => 137
	i32 1782862114, ; 116: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 117: Xamarin.AndroidX.Fragment => 0x6a96652d => 71
	i32 1793755602, ; 118: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 119: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813058853, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 87
	i32 1813201214, ; 121: Xamarin.Google.Android.Material => 0x6c13413e => 86
	i32 1818569960, ; 122: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 80
	i32 1824722060, ; 123: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 124
	i32 1828688058, ; 124: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 48
	i32 1842015223, ; 125: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 126: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 127: System.Linq.Expressions => 0x6ec71a65 => 108
	i32 1875935024, ; 128: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1886040351, ; 129: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 39
	i32 1910275211, ; 130: System.Collections.NonGeneric.dll => 0x71dc7c8b => 92
	i32 1968388702, ; 131: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 42
	i32 2003115576, ; 132: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2014489277, ; 133: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 39
	i32 2019465201, ; 134: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2025202353, ; 135: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 136: System.Private.Xml => 0x79eb68ee => 119
	i32 2055257422, ; 137: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2066184531, ; 138: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 139: System.Diagnostics.TraceSource => 0x7b6f419e => 102
	i32 2079903147, ; 140: System.Runtime.dll => 0x7bf8cdab => 125
	i32 2090495875, ; 141: SQLitePCLRaw.provider.dynamic_cdecl => 0x7c9a6f83 => 59
	i32 2090596640, ; 142: System.Numerics.Vectors => 0x7c9bf920 => 116
	i32 2103459038, ; 143: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 60
	i32 2127167465, ; 144: System.Console => 0x7ec9ffe9 => 99
	i32 2142473426, ; 145: System.Collections.Specialized => 0x7fb38cd2 => 93
	i32 2159891885, ; 146: Microsoft.Maui => 0x80bd55ad => 53
	i32 2169148018, ; 147: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 148: Microsoft.Extensions.Options.dll => 0x820d22b3 => 49
	i32 2192057212, ; 149: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 48
	i32 2193016926, ; 150: System.ObjectModel.dll => 0x82b6c85e => 117
	i32 2197979891, ; 151: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 46
	i32 2201107256, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 88
	i32 2201231467, ; 153: System.Net.Http => 0x8334206b => 112
	i32 2207618523, ; 154: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2252897993, ; 155: Microsoft.EntityFrameworkCore => 0x86487ec9 => 36
	i32 2266799131, ; 156: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 43
	i32 2270573516, ; 157: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 158: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 81
	i32 2303942373, ; 159: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 160: System.Private.CoreLib.dll => 0x896b7878 => 135
	i32 2340441535, ; 161: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 120
	i32 2353062107, ; 162: System.Net.Primitives => 0x8c40e0db => 114
	i32 2368005991, ; 163: System.Xml.ReaderWriter.dll => 0x8d24e767 => 132
	i32 2371007202, ; 164: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 42
	i32 2395872292, ; 165: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 166: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 167: System.Console.dll => 0x912896e5 => 99
	i32 2465273461, ; 168: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 56
	i32 2471841756, ; 169: netstandard.dll => 0x93554fdc => 134
	i32 2475788418, ; 170: Java.Interop.dll => 0x93918882 => 136
	i32 2480646305, ; 171: Microsoft.Maui.Controls => 0x93dba8a1 => 51
	i32 2550873716, ; 172: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2593496499, ; 173: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 88
	i32 2617129537, ; 175: System.Private.Xml.dll => 0x9bfe3a41 => 119
	i32 2620871830, ; 176: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 68
	i32 2626831493, ; 177: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2634653062, ; 178: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 38
	i32 2663698177, ; 179: System.Runtime.Loader => 0x9ec4cf01 => 122
	i32 2665622720, ; 180: System.Drawing.Primitives => 0x9ee22cc0 => 104
	i32 2676780864, ; 181: System.Data.Common.dll => 0x9f8c6f40 => 100
	i32 2724373263, ; 182: System.Runtime.Numerics.dll => 0xa262a30f => 123
	i32 2732626843, ; 183: Xamarin.AndroidX.Activity => 0xa2e0939b => 61
	i32 2737747696, ; 184: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 63
	i32 2752995522, ; 185: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 186: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 52
	i32 2764765095, ; 187: Microsoft.Maui.dll => 0xa4caf7a7 => 53
	i32 2778768386, ; 188: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2785988530, ; 189: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 190: Microsoft.Maui.Graphics => 0xa7008e0b => 55
	i32 2806116107, ; 191: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 192: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 66
	i32 2831556043, ; 193: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2847789619, ; 194: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 38
	i32 2853208004, ; 195: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2861189240, ; 196: Microsoft.Maui.Essentials => 0xaa8a4878 => 54
	i32 2909740682, ; 197: System.Private.CoreLib => 0xad6f1e8a => 135
	i32 2916838712, ; 198: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 85
	i32 2919462931, ; 199: System.Numerics.Vectors.dll => 0xae037813 => 116
	i32 2959614098, ; 200: System.ComponentModel.dll => 0xb0682092 => 98
	i32 2978675010, ; 201: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 70
	i32 3038032645, ; 202: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 203: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 77
	i32 3059408633, ; 204: Mono.Android.Runtime => 0xb65adef9 => 137
	i32 3059793426, ; 205: System.ComponentModel.Primitives => 0xb660be12 => 96
	i32 3069363400, ; 206: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 40
	i32 3077302341, ; 207: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3130759120, ; 208: TodoListApp.dll => 0xba9b97d0 => 89
	i32 3147165239, ; 209: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 103
	i32 3178803400, ; 210: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 78
	i32 3195844289, ; 211: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 40
	i32 3220365878, ; 212: System.Threading => 0xbff2e236 => 130
	i32 3258312781, ; 213: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3265493905, ; 214: System.Linq.Queryable.dll => 0xc2a37b91 => 109
	i32 3280506390, ; 215: System.ComponentModel.Annotations.dll => 0xc3888e16 => 95
	i32 3305363605, ; 216: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 217: System.Net.Requests.dll => 0xc5b097e4 => 115
	i32 3317135071, ; 218: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 69
	i32 3346324047, ; 219: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 79
	i32 3357674450, ; 220: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 221: System.Text.Json => 0xc82afec1 => 127
	i32 3360279109, ; 222: SQLitePCLRaw.core => 0xc849ca45 => 57
	i32 3362522851, ; 223: Xamarin.AndroidX.Core => 0xc86c06e3 => 67
	i32 3366347497, ; 224: Java.Interop => 0xc8a662e9 => 136
	i32 3374999561, ; 225: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 81
	i32 3381016424, ; 226: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 227: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 44
	i32 3430777524, ; 228: netstandard => 0xcc7d82b4 => 134
	i32 3463511458, ; 229: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 230: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 97
	i32 3476120550, ; 231: Mono.Android => 0xcf3163e6 => 138
	i32 3479583265, ; 232: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 233: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 234: System.Text.Json.dll => 0xcfbaacae => 127
	i32 3580758918, ; 235: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 236: System.Linq.dll => 0xd715a361 => 110
	i32 3624195450, ; 237: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 120
	i32 3641597786, ; 238: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3643446276, ; 239: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 240: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 78
	i32 3657292374, ; 241: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 43
	i32 3660523487, ; 242: System.Net.NetworkInformation => 0xda2f27df => 113
	i32 3672681054, ; 243: Mono.Android.dll => 0xdae8aa5e => 138
	i32 3697841164, ; 244: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 245: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 77
	i32 3748608112, ; 246: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 101
	i32 3754567612, ; 247: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 60
	i32 3786282454, ; 248: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3792276235, ; 249: System.Collections.NonGeneric => 0xe2098b0b => 92
	i32 3802395368, ; 250: System.Collections.Specialized.dll => 0xe2a3f2e8 => 93
	i32 3823082795, ; 251: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3841636137, ; 252: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 45
	i32 3849253459, ; 253: System.Runtime.InteropServices.dll => 0xe56ef253 => 121
	i32 3889960447, ; 254: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 255: System.Collections.Concurrent.dll => 0xe839deed => 90
	i32 3896760992, ; 256: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 67
	i32 3928044579, ; 257: System.Xml.ReaderWriter => 0xea213423 => 132
	i32 3931092270, ; 258: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 80
	i32 3955647286, ; 259: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 62
	i32 3980434154, ; 260: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 261: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 262: System.Memory => 0xeff49a63 => 111
	i32 4046471985, ; 263: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 52
	i32 4073602200, ; 264: System.Threading.dll => 0xf2ce3c98 => 130
	i32 4094352644, ; 265: Microsoft.Maui.Essentials.dll => 0xf40add04 => 54
	i32 4099507663, ; 266: System.Drawing.dll => 0xf45985cf => 105
	i32 4100113165, ; 267: System.Private.Uri => 0xf462c30d => 118
	i32 4101842092, ; 268: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 41
	i32 4102112229, ; 269: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 270: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 271: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 44
	i32 4150914736, ; 272: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 273: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4213026141, ; 274: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 101
	i32 4271975918, ; 275: Microsoft.Maui.Controls.dll => 0xfea12dee => 51
	i32 4274976490, ; 276: System.Runtime.Numerics => 0xfecef6ea => 123
	i32 4292120959 ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [278 x i32] [
	i32 113, ; 0
	i32 46, ; 1
	i32 129, ; 2
	i32 33, ; 3
	i32 55, ; 4
	i32 121, ; 5
	i32 95, ; 6
	i32 65, ; 7
	i32 83, ; 8
	i32 30, ; 9
	i32 31, ; 10
	i32 98, ; 11
	i32 2, ; 12
	i32 30, ; 13
	i32 61, ; 14
	i32 15, ; 15
	i32 72, ; 16
	i32 58, ; 17
	i32 14, ; 18
	i32 89, ; 19
	i32 131, ; 20
	i32 129, ; 21
	i32 111, ; 22
	i32 34, ; 23
	i32 26, ; 24
	i32 94, ; 25
	i32 71, ; 26
	i32 133, ; 27
	i32 117, ; 28
	i32 13, ; 29
	i32 7, ; 30
	i32 50, ; 31
	i32 109, ; 32
	i32 47, ; 33
	i32 21, ; 34
	i32 69, ; 35
	i32 19, ; 36
	i32 90, ; 37
	i32 1, ; 38
	i32 16, ; 39
	i32 4, ; 40
	i32 122, ; 41
	i32 56, ; 42
	i32 59, ; 43
	i32 115, ; 44
	i32 107, ; 45
	i32 25, ; 46
	i32 49, ; 47
	i32 100, ; 48
	i32 118, ; 49
	i32 106, ; 50
	i32 96, ; 51
	i32 28, ; 52
	i32 72, ; 53
	i32 103, ; 54
	i32 94, ; 55
	i32 82, ; 56
	i32 105, ; 57
	i32 45, ; 58
	i32 3, ; 59
	i32 62, ; 60
	i32 104, ; 61
	i32 108, ; 62
	i32 74, ; 63
	i32 97, ; 64
	i32 87, ; 65
	i32 133, ; 66
	i32 16, ; 67
	i32 37, ; 68
	i32 22, ; 69
	i32 79, ; 70
	i32 37, ; 71
	i32 20, ; 72
	i32 41, ; 73
	i32 18, ; 74
	i32 2, ; 75
	i32 57, ; 76
	i32 70, ; 77
	i32 110, ; 78
	i32 32, ; 79
	i32 82, ; 80
	i32 66, ; 81
	i32 124, ; 82
	i32 0, ; 83
	i32 6, ; 84
	i32 91, ; 85
	i32 107, ; 86
	i32 63, ; 87
	i32 50, ; 88
	i32 91, ; 89
	i32 106, ; 90
	i32 35, ; 91
	i32 10, ; 92
	i32 5, ; 93
	i32 128, ; 94
	i32 25, ; 95
	i32 76, ; 96
	i32 85, ; 97
	i32 68, ; 98
	i32 112, ; 99
	i32 128, ; 100
	i32 125, ; 101
	i32 86, ; 102
	i32 114, ; 103
	i32 126, ; 104
	i32 35, ; 105
	i32 36, ; 106
	i32 58, ; 107
	i32 64, ; 108
	i32 23, ; 109
	i32 1, ; 110
	i32 131, ; 111
	i32 102, ; 112
	i32 83, ; 113
	i32 47, ; 114
	i32 137, ; 115
	i32 17, ; 116
	i32 71, ; 117
	i32 9, ; 118
	i32 76, ; 119
	i32 87, ; 120
	i32 86, ; 121
	i32 80, ; 122
	i32 124, ; 123
	i32 48, ; 124
	i32 29, ; 125
	i32 26, ; 126
	i32 108, ; 127
	i32 8, ; 128
	i32 39, ; 129
	i32 92, ; 130
	i32 42, ; 131
	i32 5, ; 132
	i32 39, ; 133
	i32 74, ; 134
	i32 0, ; 135
	i32 119, ; 136
	i32 73, ; 137
	i32 4, ; 138
	i32 102, ; 139
	i32 125, ; 140
	i32 59, ; 141
	i32 116, ; 142
	i32 60, ; 143
	i32 99, ; 144
	i32 93, ; 145
	i32 53, ; 146
	i32 12, ; 147
	i32 49, ; 148
	i32 48, ; 149
	i32 117, ; 150
	i32 46, ; 151
	i32 88, ; 152
	i32 112, ; 153
	i32 14, ; 154
	i32 36, ; 155
	i32 43, ; 156
	i32 8, ; 157
	i32 81, ; 158
	i32 18, ; 159
	i32 135, ; 160
	i32 120, ; 161
	i32 114, ; 162
	i32 132, ; 163
	i32 42, ; 164
	i32 13, ; 165
	i32 10, ; 166
	i32 99, ; 167
	i32 56, ; 168
	i32 134, ; 169
	i32 136, ; 170
	i32 51, ; 171
	i32 11, ; 172
	i32 20, ; 173
	i32 88, ; 174
	i32 119, ; 175
	i32 68, ; 176
	i32 15, ; 177
	i32 38, ; 178
	i32 122, ; 179
	i32 104, ; 180
	i32 100, ; 181
	i32 123, ; 182
	i32 61, ; 183
	i32 63, ; 184
	i32 21, ; 185
	i32 52, ; 186
	i32 53, ; 187
	i32 84, ; 188
	i32 27, ; 189
	i32 55, ; 190
	i32 6, ; 191
	i32 66, ; 192
	i32 19, ; 193
	i32 38, ; 194
	i32 84, ; 195
	i32 54, ; 196
	i32 135, ; 197
	i32 85, ; 198
	i32 116, ; 199
	i32 98, ; 200
	i32 70, ; 201
	i32 34, ; 202
	i32 77, ; 203
	i32 137, ; 204
	i32 96, ; 205
	i32 40, ; 206
	i32 12, ; 207
	i32 89, ; 208
	i32 103, ; 209
	i32 78, ; 210
	i32 40, ; 211
	i32 130, ; 212
	i32 64, ; 213
	i32 109, ; 214
	i32 95, ; 215
	i32 7, ; 216
	i32 115, ; 217
	i32 69, ; 218
	i32 79, ; 219
	i32 24, ; 220
	i32 127, ; 221
	i32 57, ; 222
	i32 67, ; 223
	i32 136, ; 224
	i32 81, ; 225
	i32 3, ; 226
	i32 44, ; 227
	i32 134, ; 228
	i32 11, ; 229
	i32 97, ; 230
	i32 138, ; 231
	i32 24, ; 232
	i32 23, ; 233
	i32 127, ; 234
	i32 31, ; 235
	i32 110, ; 236
	i32 120, ; 237
	i32 73, ; 238
	i32 28, ; 239
	i32 78, ; 240
	i32 43, ; 241
	i32 113, ; 242
	i32 138, ; 243
	i32 33, ; 244
	i32 77, ; 245
	i32 101, ; 246
	i32 60, ; 247
	i32 65, ; 248
	i32 92, ; 249
	i32 93, ; 250
	i32 126, ; 251
	i32 45, ; 252
	i32 121, ; 253
	i32 32, ; 254
	i32 90, ; 255
	i32 67, ; 256
	i32 132, ; 257
	i32 80, ; 258
	i32 62, ; 259
	i32 27, ; 260
	i32 9, ; 261
	i32 111, ; 262
	i32 52, ; 263
	i32 130, ; 264
	i32 54, ; 265
	i32 105, ; 266
	i32 118, ; 267
	i32 41, ; 268
	i32 22, ; 269
	i32 17, ; 270
	i32 44, ; 271
	i32 29, ; 272
	i32 75, ; 273
	i32 101, ; 274
	i32 51, ; 275
	i32 123, ; 276
	i32 75 ; 277
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
