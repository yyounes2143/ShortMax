.class public final Landroidx/compose/runtime/Recomposer;
.super Landroidx/compose/runtime/CompositionContext;
.source "Recomposer.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Recomposer$Companion;,
        Landroidx/compose/runtime/Recomposer$HotReloadable;,
        Landroidx/compose/runtime/Recomposer$RecomposerErrorState;,
        Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;,
        Landroidx/compose/runtime/Recomposer$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 8 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 9 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 10 ObjectList.kt\nandroidx/collection/ObjectList\n+ 11 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 12 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 13 Composition.kt\nandroidx/compose/runtime/CompositionKt\n+ 14 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 15 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 16 Extensions.kt\nandroidx/compose/runtime/collection/ExtensionsKt\n+ 17 Recomposer.kt\nandroidx/compose/runtime/RecomposerKt\n+ 18 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n+ 19 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 20 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 21 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 22 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n1#1,1894:1\n1502#1,3:1988\n1501#1,7:1991\n1509#1:2003\n1502#1,3:2025\n1501#1,7:2028\n1509#1:2040\n1502#1,3:2064\n1501#1,7:2067\n1509#1:2129\n25#2,5:1895\n33#2:1903\n33#2:1906\n33#2:1909\n33#2:1915\n33#2:1916\n33#2:1917\n33#2:1931\n33#2:1932\n33#2:1933\n33#2:1934\n33#2:1940\n33#2:1955\n33#2:1963\n33#2:1964\n33#2:1965\n33#2:1971\n33#2:1982\n33#2:1985\n33#2:1986\n33#2:1987\n33#2:2004\n33#2:2017\n33#2:2077\n33#2:2119\n33#2:2130\n33#2:2152\n33#2:2155\n33#2:2156\n33#2:2159\n33#2:2162\n33#2:2165\n33#2:2166\n33#2:2167\n33#2:2168\n33#2:2194\n33#2:2195\n33#2:2196\n33#2:2197\n33#2:2198\n33#2:2207\n33#2:2231\n33#2:2233\n1107#3:1900\n1085#3,2:1901\n519#4:1904\n424#4,8:1923\n519#4:1972\n519#4:2153\n519#4:2154\n648#4,2:2160\n643#4,2:2163\n424#4,8:2213\n1#5:1905\n1#5:2116\n1251#6,2:1907\n34#7,5:1910\n34#7,5:1918\n34#7,5:1958\n34#7,5:1966\n91#7:2018\n34#7,5:2019\n92#7:2024\n114#7,2:2041\n34#7,3:2043\n116#7,2:2046\n118#7,2:2055\n38#7:2057\n120#7:2058\n82#7,2:2078\n34#7,5:2080\n84#7:2085\n91#7:2086\n34#7,5:2087\n92#7:2092\n106#7:2097\n34#7,5:2098\n107#7:2103\n106#7:2104\n34#7,5:2105\n107#7:2110\n204#7,2:2111\n34#7,3:2113\n38#7:2117\n206#7:2118\n223#7,2:2120\n64#7,5:2122\n225#7:2127\n34#7,5:2208\n34#7,5:2221\n34#7,5:2226\n34#7,5:2259\n149#8,5:1935\n149#8,5:1998\n149#8,5:2035\n149#8,3:2074\n153#8:2128\n149#8,5:2147\n1863#9,2:1941\n1557#9:2093\n1628#9,3:2094\n287#10,6:1943\n287#10,6:1949\n287#10,4:2133\n292#10:2139\n287#10,6:2141\n919#11,2:1956\n919#11,2:2137\n318#12,9:1973\n327#12,2:1983\n317#13,6:2005\n317#13,6:2011\n381#14,7:2048\n4809#15:2059\n4788#15,4:2060\n23#16,2:2131\n25#16:2140\n84#17:2157\n30#18:2158\n357#19,4:2169\n329#19,6:2173\n339#19,3:2180\n342#19,9:2184\n361#19:2193\n1399#20:2179\n1270#20:2183\n1399#20:2244\n1270#20:2248\n45#21,5:2199\n45#21,3:2204\n49#21:2232\n231#22,3:2234\n200#22,7:2237\n211#22,3:2245\n214#22,9:2249\n234#22:2258\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n*L\n1234#1:1988,3\n1234#1:1991,7\n1234#1:2003\n1356#1:2025,3\n1356#1:2028,7\n1356#1:2040\n1379#1:2064,3\n1379#1:2067,7\n1379#1:2129\n225#1:1895,5\n318#1:1903\n370#1:1906\n457#1:1909\n481#1:1915\n484#1:1916\n496#1:1917\n509#1:1931\n517#1:1932\n770#1:1933\n797#1:1934\n844#1:1940\n901#1:1955\n925#1:1963\n938#1:1964\n954#1:1965\n1093#1:1971\n1105#1:1982\n1190#1:1985\n1205#1:1986\n1221#1:1987\n1239#1:2004\n1320#1:2017\n1383#1:2077\n1441#1:2119\n1463#1:2130\n1533#1:2152\n1574#1:2155\n1587#1:2156\n1620#1:2159\n1628#1:2162\n1638#1:2165\n1646#1:2166\n1654#1:2167\n1679#1:2168\n1692#1:2194\n1703#1:2195\n168#1:2196\n288#1:2197\n272#1:2198\n1056#1:2207\n1085#1:2231\n1326#1:2233\n233#1:1900\n233#1:1901,2\n352#1:1904\n507#1:1923,8\n1095#1:1972\n1535#1:2153\n1544#1:2154\n1622#1:2160,2\n1630#1:2163,2\n1059#1:2213,8\n1438#1:2116\n370#1:1907,2\n467#1:1910,5\n503#1:1918,5\n909#1:1958,5\n955#1:1966,5\n1321#1:2018\n1321#1:2019,5\n1321#1:2024\n1376#1:2041,2\n1376#1:2043,3\n1376#1:2046,2\n1376#1:2055,2\n1376#1:2057\n1376#1:2058\n1385#1:2078,2\n1385#1:2080,5\n1385#1:2085\n1397#1:2086\n1397#1:2087,5\n1397#1:2092\n1430#1:2097\n1430#1:2098,5\n1430#1:2103\n1430#1:2104\n1430#1:2105,5\n1430#1:2110\n1438#1:2111,2\n1438#1:2113,3\n1438#1:2117\n1438#1:2118\n1444#1:2120,2\n1444#1:2122,5\n1444#1:2127\n1057#1:2208,5\n1067#1:2221,5\n1080#1:2226,5\n1659#1:2259,5\n833#1:1935,5\n1234#1:1998,5\n1356#1:2035,5\n1379#1:2074,3\n1379#1:2128\n1507#1:2147,5\n859#1:1941,2\n1406#1:2093\n1406#1:2094,3\n881#1:1943,6\n890#1:1949,6\n1470#1:2133,4\n1470#1:2139\n1475#1:2141,6\n908#1:1956,2\n1470#1:2137,2\n1104#1:1973,9\n1104#1:1983,2\n1277#1:2005,6\n1294#1:2011,6\n1376#1:2048,7\n1378#1:2059\n1378#1:2060,4\n1470#1:2131,2\n1470#1:2140\n1598#1:2157\n1598#1:2158\n1684#1:2169,4\n1684#1:2173,6\n1684#1:2180,3\n1684#1:2184,9\n1684#1:2193\n1684#1:2179\n1684#1:2183\n1361#1:2244\n1361#1:2248\n1041#1:2199,5\n1051#1:2204,3\n1051#1:2232\n1361#1:2234,3\n1361#1:2237,7\n1361#1:2245,3\n1361#1:2249,9\n1361#1:2258\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/Recomposer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _runningRecomposers:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _knownCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _knownCompositionsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _state:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private changeCount:J

.field private closeCause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final compositionsAwaitingApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private compositionsRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private concurrentCompositionsOutstanding:I

.field private final effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final effectJob:Lgt/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private failedCompositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frameClockPaused:Z

.field private isClosed:Z

.field private final movableContentAwaitingInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final movableContentNestedExtractionsPending:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final movableContentRemoved:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/internal/SnapshotThreadLocal<",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private registrationObservers:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private runnerJob:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private snapshotInvalidations:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private workContinuation:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/Recomposer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/runtime/Recomposer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/runtime/Recomposer;->$stable:I

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentSetOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkt/e;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 5
    .line 6
    new-instance v1, Landroidx/compose/runtime/v;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroidx/compose/runtime/v;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 29
    .line 30
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v2, v3, v4}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 39
    .line 40
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 41
    .line 42
    const/16 v5, 0x10

    .line 43
    .line 44
    new-array v5, v5, [Landroidx/compose/runtime/ControlledComposition;

    .line 45
    .line 46
    invoke-direct {v1, v5, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 57
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {v4, v3, v4}, Landroidx/compose/runtime/collection/MultiValueMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 70
    .line 71
    new-instance v1, Landroidx/compose/runtime/NestedContentMap;

    .line 72
    .line 73
    invoke-direct {v1}, Landroidx/compose/runtime/NestedContentMap;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;

    .line 77
    .line 78
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 83
    .line 84
    invoke-static {v4, v3, v4}, Landroidx/compose/runtime/collection/MultiValueMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentNestedExtractionsPending:Landroidx/collection/MutableScatterMap;

    .line 89
    .line 90
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    .line 91
    .line 92
    invoke-static {v1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 97
    .line 98
    new-instance v1, Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 99
    .line 100
    invoke-direct {v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 104
    .line 105
    sget-object v1, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 106
    .line 107
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lkotlinx/coroutines/r;

    .line 112
    .line 113
    invoke-static {v1}, Lkotlinx/coroutines/t;->a(Lkotlinx/coroutines/r;)Lgt/s;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v2, Landroidx/compose/runtime/w;

    .line 118
    .line 119
    invoke-direct {v2, p0}, Landroidx/compose/runtime/w;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v2}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lgt/s;

    .line 126
    .line 127
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 136
    .line 137
    new-instance p1, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 138
    .line 139
    invoke-direct {p1, p0}, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;-><init>(Landroidx/compose/runtime/Recomposer;)V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 143
    .line 144
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf$lambda$85(Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$awaitWorkAvailable(Landroidx/compose/runtime/Recomposer;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->awaitWorkAvailable(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lgt/i;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$discardUnusedMovableContentState(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->discardUnusedMovableContentState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCompositionsAwaitingApply$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getErrorState$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaiters()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getHasConcurrentFrameWorkLocked(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasConcurrentFrameWorkLocked()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getHasSchedulingWork(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getMovableContentAwaitingInsert$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRegistrationObservers$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableObjectList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->registrationObservers:Landroidx/collection/MutableObjectList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getShouldKeepRecomposing(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getShouldKeepRecomposing()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_hotReloadEnabled$cp()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_runningRecomposers$cp()Lkt/e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkt/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_state$p(Landroidx/compose/runtime/Recomposer;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$knownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->knownCompositions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$knownCompositionsLocked(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->knownCompositionsLocked()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$recompositionRunner(Landroidx/compose/runtime/Recomposer;Lat/n;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lat/n;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$recordFailedCompositionLocked(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$registerRunnerJob(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->registerRunnerJob(Lkotlinx/coroutines/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$resetErrorState(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$retryFailedCompositions(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->retryFailedCompositions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$runFrameLoop(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setConcurrentCompositionsOutstanding$p(Landroidx/compose/runtime/Recomposer;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lgt/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 2
    .line 3
    return-void
.end method

.method private final addKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->registerCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method private final awaitWorkAvailable(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasSchedulingWork()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/e;

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getHasSchedulingWork(Landroidx/compose/runtime/Recomposer;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0, v0}, Landroidx/compose/runtime/Recomposer;->access$setWorkContinuation$p(Landroidx/compose/runtime/Recomposer;Lgt/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    monitor-exit v1

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 41
    .line 42
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v2, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-ne v0, v1, :cond_2

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne v0, p1, :cond_3

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v1

    .line 76
    throw p1

    .line 77
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1
.end method

.method public static synthetic b(Landroidx/collection/MutableScatterSet;Landroidx/compose/runtime/ControlledComposition;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/Recomposer;->performRecompose$lambda$68$lambda$67(Landroidx/collection/MutableScatterSet;Landroidx/compose/runtime/ControlledComposition;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final broadcastFrameClock$lambda$2(Landroidx/compose/runtime/Recomposer;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 9
    .line 10
    invoke-interface {v2}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/compose/runtime/Recomposer$State;

    .line 15
    .line 16
    sget-object v3, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object p0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {v1, p0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    :try_start_1
    const-string v1, "Recomposer shutdown; frame clock awaiter will never resume"

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 44
    .line 45
    invoke-static {v1, p0}, Lgt/z0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    .line 52
    throw p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->effectJob$lambda$10$lambda$9$lambda$8$lambda$7(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final clearKnownCompositionsLocked()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->knownCompositionsLocked()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/runtime/ControlledComposition;

    .line 22
    .line 23
    invoke-direct {p0, v1}, Landroidx/compose/runtime/Recomposer;->unregisterCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 37
    .line 38
    return-void
.end method

.method private final composing(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 40
    .line 41
    .line 42
    return-object p3

    .line 43
    :catchall_0
    move-exception p3

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p3

    .line 46
    :try_start_3
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 53
    .line 54
    .line 55
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 63
    .line 64
    .line 65
    throw p3
.end method

.method public static synthetic d(Landroidx/compose/runtime/Recomposer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock$lambda$2(Landroidx/compose/runtime/Recomposer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final deletedMovableContent$lambda$95$recordNestedStatesOf(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getNestedReferences$runtime()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Landroidx/compose/runtime/NestedMovableContent;

    .line 30
    .line 31
    invoke-direct {v5, v2, p1}, Landroidx/compose/runtime/NestedMovableContent;-><init>(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/NestedContentMap;->add(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/NestedMovableContent;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1, v2}, Landroidx/compose/runtime/Recomposer;->deletedMovableContent$lambda$95$recordNestedStatesOf(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private final deriveStateLocked()Lgt/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgt/i<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/Recomposer$State;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->clearKnownCompositionsLocked()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-static {v0, v3, v2, v3}, Lgt/i$a;->a(Lgt/i;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 55
    .line 56
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/r;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 71
    .line 72
    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->InactivePendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Inactive:Landroidx/compose/runtime/Recomposer$State;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_7

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 112
    .line 113
    check-cast v0, Ljava/util/Collection;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 122
    .line 123
    check-cast v0, Ljava/util/Collection;

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    iget v0, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 132
    .line 133
    if-gtz v0, :cond_7

    .line 134
    .line 135
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 142
    .line 143
    invoke-static {v0}, Landroidx/compose/runtime/collection/MultiValueMap;->isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_7
    :goto_0
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 154
    .line 155
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 156
    .line 157
    invoke-interface {v1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->PendingWork:Landroidx/compose/runtime/Recomposer$State;

    .line 161
    .line 162
    if-ne v0, v1, :cond_8

    .line 163
    .line 164
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 165
    .line 166
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 167
    .line 168
    move-object v3, v0

    .line 169
    :cond_8
    return-object v3
.end method

.method private final discardUnusedMovableContentState()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-static {v1}, Landroidx/compose/runtime/collection/MultiValueMap;->isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/runtime/collection/MultiValueMap;->values-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/ObjectList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    invoke-static {v3}, Landroidx/compose/runtime/collection/MultiValueMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/compose/runtime/NestedContentMap;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->movableContentNestedExtractionsPending:Landroidx/collection/MutableScatterMap;

    .line 30
    .line 31
    invoke-static {v3}, Landroidx/compose/runtime/collection/MultiValueMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroidx/collection/MutableObjectList;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/collection/ObjectList;->getSize()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-direct {v3, v4}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object v4, v1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 44
    .line 45
    iget v1, v1, Landroidx/collection/ObjectList;->_size:I

    .line 46
    .line 47
    move v5, v2

    .line 48
    :goto_0
    if-ge v5, v1, :cond_0

    .line 49
    .line 50
    aget-object v6, v4, v5

    .line 51
    .line 52
    check-cast v6, Landroidx/compose/runtime/MovableContentStateReference;

    .line 53
    .line 54
    iget-object v7, p0, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 55
    .line 56
    invoke-virtual {v7, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-static {v6, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v3, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    goto :goto_3

    .line 72
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {}, Landroidx/collection/ObjectListKt;->emptyObjectList()Landroidx/collection/ObjectList;

    .line 79
    .line 80
    .line 81
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    monitor-exit v0

    .line 83
    iget-object v0, v3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 84
    .line 85
    iget v1, v3, Landroidx/collection/ObjectList;->_size:I

    .line 86
    .line 87
    :goto_2
    if-ge v2, v1, :cond_3

    .line 88
    .line 89
    aget-object v3, v0, v2

    .line 90
    .line 91
    check-cast v3, Lkotlin/Pair;

    .line 92
    .line 93
    invoke-virtual {v3}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 98
    .line 99
    invoke-virtual {v3}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Landroidx/compose/runtime/MovableContentState;

    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v4, v3}, Landroidx/compose/runtime/ControlledComposition;->disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    return-void

    .line 118
    :goto_3
    monitor-exit v0

    .line 119
    throw v1
.end method

.method public static synthetic e(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;J)Lgt/i;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/Recomposer;->runFrameLoop$lambda$51(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;J)Lgt/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final effectJob$lambda$10$lambda$9(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "Recomposer effect job completed"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lgt/z0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 16
    .line 17
    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 18
    .line 19
    invoke-interface {v4, v5}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v4, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-interface {v2, v0}, Lkotlinx/coroutines/r;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move-object v0, v3

    .line 38
    :goto_1
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lgt/i;

    .line 39
    .line 40
    new-instance v3, Landroidx/compose/runtime/t;

    .line 41
    .line 42
    invoke-direct {v3, p0, p1}, Landroidx/compose/runtime/t;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v3}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 46
    .line 47
    .line 48
    move-object v3, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 53
    .line 54
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 55
    .line 56
    invoke-interface {p0, p1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    :goto_2
    monitor-exit v1

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    sget-object p0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {v3, p0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0

    .line 78
    :goto_3
    monitor-exit v1

    .line 79
    throw p0
.end method

.method private static final effectJob$lambda$10$lambda$9$lambda$8$lambda$7(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    :try_start_0
    instance-of v2, p2, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p2, v1

    .line 15
    :goto_0
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-static {p1, p2}, Lms/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    move-object p1, v1

    .line 24
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lkt/e;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0

    .line 37
    :goto_2
    monitor-exit v0

    .line 38
    throw p0
.end method

.method public static synthetic f(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf$lambda$86(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/Recomposer;->effectJob$lambda$10$lambda$9(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getHasBroadcastFrameClockAwaiters()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method private final getHasBroadcastFrameClockAwaitersLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/BroadcastFrameClock;->getHasAwaiters()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private final getHasConcurrentFrameWorkLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method private final getHasFrameWorkLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/runtime/collection/MultiValueMap;->isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    return v0
.end method

.method private final getHasSchedulingWork()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    return v1

    .line 35
    :goto_2
    monitor-exit v0

    .line 36
    throw v1
.end method

.method private static synthetic getRegistrationObservers$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getShouldKeepRecomposing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lgt/s;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlinx/coroutines/r;->getChildren()Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lkotlinx/coroutines/r;

    .line 30
    .line 31
    invoke-interface {v1}, Lkotlinx/coroutines/r;->isActive()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    return v0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0

    .line 44
    throw v1
.end method

.method public static synthetic getState$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method private final knownCompositions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->knownCompositionsLocked()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method private final knownCompositionsLocked()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 28
    .line 29
    return-object v0
.end method

.method private final performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    check-cast v2, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit v0

    .line 66
    throw p1
.end method

.method private static final performInitialMovableContentInserts$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p1, p1, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0

    .line 49
    throw p0
.end method

.method private final performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    move-object v3, v0

    .line 15
    check-cast v3, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    move-object v7, v6

    .line 29
    check-cast v7, Landroidx/compose/runtime/MovableContentStateReference;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    new-instance v8, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_0
    check-cast v8, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_12

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v5}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    const-string v6, "Check failed"

    .line 96
    .line 97
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    sget-object v6, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 101
    .line 102
    invoke-direct {v1, v5}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    move-object/from16 v8, p2

    .line 107
    .line 108
    invoke-direct {v1, v5, v8}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v6, v7, v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    :try_start_0
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 117
    .line 118
    .line 119
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 120
    :try_start_1
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 121
    .line 122
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .line 131
    .line 132
    move-object v11, v3

    .line 133
    check-cast v11, Ljava/util/Collection;

    .line 134
    .line 135
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    const/4 v12, 0x0

    .line 140
    :goto_2
    if-ge v12, v11, :cond_4

    .line 141
    .line 142
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    check-cast v13, Landroidx/compose/runtime/MovableContentStateReference;

    .line 147
    .line 148
    iget-object v14, v1, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 149
    .line 150
    invoke-virtual {v13}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    invoke-static {v14, v15}, Landroidx/compose/runtime/collection/MultiValueMap;->removeLast-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    move-object v15, v14

    .line 159
    check-cast v15, Landroidx/compose/runtime/MovableContentStateReference;

    .line 160
    .line 161
    if-eqz v15, :cond_3

    .line 162
    .line 163
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;

    .line 164
    .line 165
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/NestedContentMap;->usedContainer(Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :cond_3
    :goto_3
    invoke-static {v13, v14}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-interface {v10, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    add-int/lit8 v12, v12, 0x1

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    sget-boolean v3, Landroidx/compose/runtime/ComposeRuntimeFlags;->isMovingNestedMovableContentEnabled:Z

    .line 183
    .line 184
    if-eqz v3, :cond_9

    .line 185
    .line 186
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    const/4 v4, 0x0

    .line 191
    :goto_4
    if-ge v4, v3, :cond_9

    .line 192
    .line 193
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    check-cast v11, Lkotlin/Pair;

    .line 198
    .line 199
    invoke-virtual {v11}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    if-nez v12, :cond_8

    .line 204
    .line 205
    iget-object v12, v1, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;

    .line 206
    .line 207
    invoke-virtual {v11}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Landroidx/compose/runtime/MovableContentStateReference;

    .line 212
    .line 213
    invoke-virtual {v11}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/NestedContentMap;->contains(Landroidx/compose/runtime/MovableContent;)Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_8

    .line 222
    .line 223
    new-instance v3, Ljava/util/ArrayList;

    .line 224
    .line 225
    const/16 v4, 0xa

    .line 226
    .line 227
    invoke-static {v10, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-eqz v10, :cond_7

    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    check-cast v10, Lkotlin/Pair;

    .line 249
    .line 250
    invoke-virtual {v10}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    if-nez v11, :cond_6

    .line 255
    .line 256
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer;->movableContentNestedStatesAvailable:Landroidx/compose/runtime/NestedContentMap;

    .line 257
    .line 258
    invoke-virtual {v10}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    check-cast v12, Landroidx/compose/runtime/MovableContentStateReference;

    .line 263
    .line 264
    invoke-virtual {v12}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/NestedContentMap;->removeLast(Landroidx/compose/runtime/MovableContent;)Landroidx/compose/runtime/NestedMovableContent;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    if-nez v11, :cond_5

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/NestedMovableContent;->getContent()Landroidx/compose/runtime/MovableContentStateReference;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    invoke-virtual {v11}, Landroidx/compose/runtime/NestedMovableContent;->getContainer()Landroidx/compose/runtime/MovableContentStateReference;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    iget-object v13, v1, Landroidx/compose/runtime/Recomposer;->movableContentNestedExtractionsPending:Landroidx/collection/MutableScatterMap;

    .line 284
    .line 285
    invoke-static {v13, v11, v12}, Landroidx/compose/runtime/collection/MultiValueMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    invoke-static {v10, v12}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    :cond_6
    :goto_6
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_7
    move-object v10, v3

    .line 301
    goto :goto_7

    .line 302
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_9
    :goto_7
    :try_start_3
    monitor-exit v9

    .line 306
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    const/4 v4, 0x0

    .line 311
    :goto_8
    if-ge v4, v3, :cond_11

    .line 312
    .line 313
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    check-cast v9, Lkotlin/Pair;

    .line 318
    .line 319
    invoke-virtual {v9}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    if-nez v9, :cond_a

    .line 324
    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_a
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    const/4 v4, 0x0

    .line 333
    :goto_9
    if-ge v4, v3, :cond_11

    .line 334
    .line 335
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    check-cast v9, Lkotlin/Pair;

    .line 340
    .line 341
    invoke-virtual {v9}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    if-eqz v9, :cond_b

    .line 346
    .line 347
    add-int/lit8 v4, v4, 0x1

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    const/4 v9, 0x0

    .line 364
    :goto_a
    if-ge v9, v4, :cond_e

    .line 365
    .line 366
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    check-cast v11, Lkotlin/Pair;

    .line 371
    .line 372
    invoke-virtual {v11}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v12

    .line 376
    if-nez v12, :cond_c

    .line 377
    .line 378
    invoke-virtual {v11}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v11

    .line 382
    check-cast v11, Landroidx/compose/runtime/MovableContentStateReference;

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :catchall_1
    move-exception v0

    .line 386
    goto :goto_f

    .line 387
    :cond_c
    const/4 v11, 0x0

    .line 388
    :goto_b
    if-eqz v11, :cond_d

    .line 389
    .line 390
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_e
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 397
    .line 398
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    :try_start_4
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 400
    .line 401
    check-cast v9, Ljava/util/Collection;

    .line 402
    .line 403
    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 404
    .line 405
    .line 406
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 407
    .line 408
    :try_start_5
    monitor-exit v4

    .line 409
    new-instance v3, Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    const/4 v9, 0x0

    .line 423
    :goto_c
    if-ge v9, v4, :cond_10

    .line 424
    .line 425
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    move-object v12, v11

    .line 430
    check-cast v12, Lkotlin/Pair;

    .line 431
    .line 432
    invoke-virtual {v12}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    if-eqz v12, :cond_f

    .line 437
    .line 438
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_10
    move-object v10, v3

    .line 445
    goto :goto_d

    .line 446
    :catchall_2
    move-exception v0

    .line 447
    monitor-exit v4

    .line 448
    throw v0

    .line 449
    :cond_11
    :goto_d
    invoke-interface {v5, v10}, Landroidx/compose/runtime/ControlledComposition;->insertMovableContent(Ljava/util/List;)V

    .line 450
    .line 451
    .line 452
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 453
    .line 454
    :try_start_6
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 455
    .line 456
    .line 457
    invoke-direct {v1, v6}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :catchall_3
    move-exception v0

    .line 463
    goto :goto_10

    .line 464
    :goto_e
    :try_start_7
    monitor-exit v9

    .line 465
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 466
    :goto_f
    :try_start_8
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 467
    .line 468
    .line 469
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 470
    :goto_10
    invoke-direct {v1, v6}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_12
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Ljava/lang/Iterable;

    .line 479
    .line 480
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    return-object v0
.end method

.method private final performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/runtime/ControlledComposition;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composition;->isDisposed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p2}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v4, v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Landroidx/compose/runtime/z;

    .line 53
    .line 54
    invoke-direct {v2, p2, p1}, Landroidx/compose/runtime/z;-><init>(Landroidx/collection/MutableScatterSet;Landroidx/compose/runtime/ControlledComposition;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v2}, Landroidx/compose/runtime/ControlledComposition;->prepareCompose(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->recompose()Z

    .line 64
    .line 65
    .line 66
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 71
    .line 72
    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object p1, v1

    .line 77
    :goto_1
    return-object p1

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    :try_start_3
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 81
    .line 82
    .line 83
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :goto_3
    invoke-direct {p0, v0}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_3
    :goto_4
    return-object v1
.end method

.method private static final performRecompose$lambda$68$lambda$67(Landroidx/collection/MutableScatterSet;Landroidx/compose/runtime/ControlledComposition;)Lkotlin/Unit;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    add-int/lit8 v1, v1, -0x2

    .line 7
    .line 8
    if-ltz v1, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    aget-wide v4, p0, v3

    .line 13
    .line 14
    not-long v6, v4

    .line 15
    const/4 v8, 0x7

    .line 16
    shl-long/2addr v6, v8

    .line 17
    and-long/2addr v6, v4

    .line 18
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr v6, v8

    .line 24
    cmp-long v6, v6, v8

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    sub-int v6, v3, v1

    .line 29
    .line 30
    not-int v6, v6

    .line 31
    ushr-int/lit8 v6, v6, 0x1f

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    rsub-int/lit8 v6, v6, 0x8

    .line 36
    .line 37
    move v8, v2

    .line 38
    :goto_1
    if-ge v8, v6, :cond_1

    .line 39
    .line 40
    const-wide/16 v9, 0xff

    .line 41
    .line 42
    and-long/2addr v9, v4

    .line 43
    const-wide/16 v11, 0x80

    .line 44
    .line 45
    cmp-long v9, v9, v11

    .line 46
    .line 47
    if-gez v9, :cond_0

    .line 48
    .line 49
    shl-int/lit8 v9, v3, 0x3

    .line 50
    .line 51
    add-int/2addr v9, v8

    .line 52
    aget-object v9, v0, v9

    .line 53
    .line 54
    invoke-interface {p1, v9}, Landroidx/compose/runtime/ControlledComposition;->recordWriteOf(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    shr-long/2addr v4, v7

    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-ne v6, v7, :cond_3

    .line 62
    .line 63
    :cond_2
    if-eq v3, v1, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method private final processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/ControlledComposition;Z)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    instance-of v0, p1, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    const-string v2, "Error was captured in composition while live edit was enabled."

    .line 24
    .line 25
    invoke-static {v2, p1}, Landroidx/compose/runtime/internal/Utils_androidKt;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroidx/collection/MutableScatterSet;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v2, v1, v3, v4}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 53
    .line 54
    invoke-static {v1}, Landroidx/compose/runtime/collection/MultiValueMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 63
    .line 64
    invoke-direct {v1, p3, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(ZLjava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    invoke-direct {p0, p2}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v0

    .line 83
    throw p1

    .line 84
    :cond_1
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter p2

    .line 87
    :try_start_1
    iget-object p3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 88
    .line 89
    if-nez p3, :cond_2

    .line 90
    .line 91
    new-instance p3, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 92
    .line 93
    invoke-direct {p3, v1, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(ZLjava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    iput-object p3, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 97
    .line 98
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    monitor-exit p2

    .line 101
    throw p1

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    :try_start_2
    invoke-virtual {p3}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->getCause()Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :goto_2
    monitor-exit p2

    .line 110
    throw p1
.end method

.method static synthetic processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/u;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/runtime/u;-><init>(Landroidx/compose/runtime/ControlledComposition;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final readObserverOf$lambda$85(Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/ControlledComposition;->recordReadOf(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final recompositionRunner(Lat/n;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 10
    .line 11
    new-instance v2, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, p1, v0, v3}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lat/n;Landroidx/compose/runtime/MonotonicFrameClock;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1
.end method

.method private final recordComposerModifications(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/collection/MutableScatterSet;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/collection/MutableScatterSet;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v3}, Landroidx/compose/runtime/Recomposer;->access$setSnapshotInvalidations$p(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 31
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 32
    invoke-static {v2}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v1

    .line 33
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$knownCompositionsLocked(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v2

    .line 35
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    .line 36
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 37
    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    .line 38
    invoke-interface {v6, v1}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    add-int/2addr v5, v0

    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .line 40
    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 41
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    :goto_2
    if-ge v4, v1, :cond_2

    .line 42
    aget-object v3, v2, v4

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v0

    goto :goto_2

    .line 43
    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 44
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    monitor-enter p1

    .line 46
    :try_start_1
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lgt/i;

    move-result-object v1

    if-nez v1, :cond_3

    .line 47
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit p1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_3

    .line 49
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 50
    const-string v2, "called outside of runRecomposeAndApplyChanges"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit p1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1

    .line 52
    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method private final recordComposerModifications()Z
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasFrameWorkLocked()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->knownCompositionsLocked()Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    invoke-static {v2}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v2

    .line 7
    new-instance v3, Landroidx/collection/MutableScatterSet;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v6, v5, v4}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 10
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Landroidx/compose/runtime/ControlledComposition;

    .line 12
    invoke-interface {v3, v2}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 13
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    invoke-interface {v3}, Lkt/e;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 14
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_3
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    move-result-object v1

    if-nez v1, :cond_2

    .line 17
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasFrameWorkLocked()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 18
    monitor-exit v0

    return v1

    :catchall_2
    move-exception v1

    goto :goto_1

    .line 19
    :cond_2
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    const-string v2, "called outside of runRecomposeAndApplyChanges"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    :goto_1
    monitor-exit v0

    throw v1

    .line 22
    :goto_2
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_5
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->addAll(Ljava/lang/Iterable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 25
    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 26
    :goto_3
    monitor-exit v0

    throw v1
.end method

.method private final recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final registerCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->registrationObservers:Landroidx/collection/MutableObjectList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, v0, Landroidx/collection/ObjectList;->_size:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;

    .line 15
    .line 16
    instance-of v4, p1, Landroidx/compose/runtime/tooling/ObservableComposition;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, Landroidx/compose/runtime/tooling/ObservableComposition;

    .line 22
    .line 23
    invoke-interface {v3, v4}, Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;->onCompositionRegistered(Landroidx/compose/runtime/tooling/ObservableComposition;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private final registerRunnerJob(Lkotlinx/coroutines/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 9
    .line 10
    invoke-interface {v1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/r;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/r;

    .line 29
    .line 30
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "Recomposer already running"

    .line 40
    .line 41
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v1, "Recomposer shut down"

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    monitor-exit v0

    .line 55
    throw p1
.end method

.method private final removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositionsCache:Ljava/util/List;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->unregisterCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final resetErrorState()Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :goto_1
    monitor-exit v0

    .line 20
    throw v1
.end method

.method private final retryFailedCompositions()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->failedCompositions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :try_start_1
    move-object v2, v1

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->R(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/compose/runtime/ControlledComposition;

    .line 28
    .line 29
    instance-of v3, v2, Landroidx/compose/runtime/CompositionImpl;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionImpl;->invalidateAll()V

    .line 37
    .line 38
    .line 39
    move-object v3, v2

    .line 40
    check-cast v3, Landroidx/compose/runtime/CompositionImpl;

    .line 41
    .line 42
    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl;->getComposable()Lkotlin/jvm/functions/Function2;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/CompositionImpl;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->errorState:Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v2

    .line 57
    goto :goto_4

    .line 58
    :cond_1
    :goto_0
    move-object v2, v1

    .line 59
    check-cast v2, Ljava/util/Collection;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v2

    .line 70
    :try_start_2
    move-object v3, v1

    .line 71
    check-cast v3, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_1
    if-ge v0, v3, :cond_2

    .line 78
    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 84
    .line 85
    invoke-direct {p0, v4}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    monitor-exit v2

    .line 96
    goto :goto_3

    .line 97
    :goto_2
    monitor-exit v2

    .line 98
    throw v0

    .line 99
    :cond_3
    :goto_3
    return-void

    .line 100
    :goto_4
    move-object v3, v1

    .line 101
    check-cast v3, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v3

    .line 112
    :try_start_3
    move-object v4, v1

    .line 113
    check-cast v4, Ljava/util/Collection;

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    :goto_5
    if-ge v0, v4, :cond_4

    .line 120
    .line 121
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .line 126
    .line 127
    invoke-direct {p0, v5}, Landroidx/compose/runtime/Recomposer;->recordFailedCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    goto :goto_6

    .line 135
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 136
    .line 137
    monitor-exit v3

    .line 138
    goto :goto_7

    .line 139
    :goto_6
    monitor-exit v3

    .line 140
    throw v0

    .line 141
    :cond_5
    :goto_7
    throw v2

    .line 142
    :catchall_3
    move-exception v1

    .line 143
    monitor-exit v0

    .line 144
    throw v1
.end method

.method private final runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v4, :cond_3

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/util/List;

    .line 44
    .line 45
    iget-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p2, Ljava/util/List;

    .line 48
    .line 49
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 52
    .line 53
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 56
    .line 57
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    move-object p3, p2

    .line 61
    move-object p2, v2

    .line 62
    move-object v2, p1

    .line 63
    move-object p1, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_3
    iget-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Ljava/util/List;

    .line 76
    .line 77
    iget-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p2, Ljava/util/List;

    .line 80
    .line 81
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 84
    .line 85
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v5, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 88
    .line 89
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance p3, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v2, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object p3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 115
    .line 116
    iput v4, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 117
    .line 118
    invoke-virtual {p2, v5, v0}, Landroidx/compose/runtime/ProduceFrameSignal;->awaitFrameRequest(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-ne v5, v1, :cond_5

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_5
    move-object v5, p1

    .line 126
    move-object p1, v2

    .line 127
    move-object v2, p2

    .line 128
    move-object p2, p3

    .line 129
    :goto_2
    new-instance p3, Landroidx/compose/runtime/y;

    .line 130
    .line 131
    invoke-direct {p3, p0, p2, p1, v2}, Landroidx/compose/runtime/y;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;)V

    .line 132
    .line 133
    .line 134
    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$0:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$1:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$2:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->L$3:Ljava/lang/Object;

    .line 141
    .line 142
    iput v3, v0, Landroidx/compose/runtime/Recomposer$runFrameLoop$1;->label:I

    .line 143
    .line 144
    invoke-interface {v5, p3, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    if-ne p3, v1, :cond_1

    .line 149
    .line 150
    return-object v1
.end method

.method private static final runFrameLoop$lambda$51(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;J)Lgt/i;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaiters()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "Recomposer:animation"

    .line 9
    .line 10
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 17
    .line 18
    invoke-virtual {v3, p4, p5}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 19
    .line 20
    .line 21
    sget-object p4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 22
    .line 23
    invoke-virtual {p4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 24
    .line 25
    .line 26
    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    sget-object p1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
    const-string p4, "Recomposer:recompose"

    .line 40
    .line 41
    sget-object p5, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 42
    .line 43
    invoke-virtual {p5, p4}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z

    .line 48
    .line 49
    .line 50
    iget-object p5, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 53
    :try_start_2
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 54
    .line 55
    move-object v2, v1

    .line 56
    check-cast v2, Ljava/util/Collection;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x0

    .line 63
    move v4, v3

    .line 64
    :goto_1
    if-ge v4, v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .line 71
    .line 72
    move-object v6, p2

    .line 73
    check-cast v6, Ljava/util/Collection;

    .line 74
    .line 75
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    add-int/2addr v4, v0

    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 89
    .line 90
    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    move v4, v3

    .line 97
    :goto_2
    if-ge v4, v1, :cond_2

    .line 98
    .line 99
    aget-object v5, v2, v4

    .line 100
    .line 101
    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .line 102
    .line 103
    move-object v6, p1

    .line 104
    check-cast v6, Ljava/util/Collection;

    .line 105
    .line 106
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    add-int/2addr v4, v0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Landroidx/compose/runtime/ProduceFrameSignal;->takeFrameRequestLocked()V

    .line 117
    .line 118
    .line 119
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    .line 121
    :try_start_3
    monitor-exit p5

    .line 122
    new-instance p3, Landroidx/collection/MutableScatterSet;

    .line 123
    .line 124
    const/4 p5, 0x0

    .line 125
    invoke-direct {p3, v3, v0, p5}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 126
    .line 127
    .line 128
    :try_start_4
    move-object p5, p1

    .line 129
    check-cast p5, Ljava/util/Collection;

    .line 130
    .line 131
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    .line 132
    .line 133
    .line 134
    move-result p5

    .line 135
    move v1, v3

    .line 136
    :goto_3
    if-ge v1, p5, :cond_4

    .line 137
    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Landroidx/compose/runtime/ControlledComposition;

    .line 143
    .line 144
    invoke-direct {p0, v2, p3}, Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    move-object v4, p2

    .line 151
    check-cast v4, Ljava/util/Collection;

    .line 152
    .line 153
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :catchall_2
    move-exception p0

    .line 158
    goto :goto_8

    .line 159
    :cond_3
    :goto_4
    add-int/2addr v1, v0

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    .line 163
    .line 164
    move-object p1, p2

    .line 165
    check-cast p1, Ljava/util/Collection;

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_5

    .line 172
    .line 173
    iget-wide v1, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 174
    .line 175
    const-wide/16 v4, 0x1

    .line 176
    .line 177
    add-long/2addr v1, v4

    .line 178
    iput-wide v1, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catchall_3
    move-exception p0

    .line 182
    goto :goto_a

    .line 183
    :cond_5
    :goto_5
    :try_start_6
    move-object p1, p2

    .line 184
    check-cast p1, Ljava/util/Collection;

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    :goto_6
    if-ge v3, p1, :cond_6

    .line 191
    .line 192
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    check-cast p3, Landroidx/compose/runtime/ControlledComposition;

    .line 197
    .line 198
    invoke-interface {p3}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 199
    .line 200
    .line 201
    add-int/2addr v3, v0

    .line 202
    goto :goto_6

    .line 203
    :catchall_4
    move-exception p0

    .line 204
    goto :goto_7

    .line 205
    :cond_6
    :try_start_7
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 209
    .line 210
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 211
    :try_start_8
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 212
    .line 213
    .line 214
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 215
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 216
    sget-object p1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 217
    .line 218
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :catchall_5
    move-exception p0

    .line 223
    :try_start_a
    monitor-exit p1

    .line 224
    throw p0

    .line 225
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 230
    .line 231
    .line 232
    throw p0

    .line 233
    :goto_9
    monitor-exit p5

    .line 234
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 235
    :goto_a
    sget-object p1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 236
    .line 237
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    throw p0
.end method

.method private final unregisterCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->registrationObservers:Landroidx/collection/MutableObjectList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, v0, Landroidx/collection/ObjectList;->_size:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;

    .line 15
    .line 16
    instance-of v4, p1, Landroidx/compose/runtime/tooling/ObservableComposition;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, Landroidx/compose/runtime/tooling/ObservableComposition;

    .line 22
    .line 23
    invoke-interface {v3, v4}, Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;->onCompositionUnregistered(Landroidx/compose/runtime/tooling/ObservableComposition;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method private final withTransparentSnapshot(Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    check-cast v4, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v3, v1

    .line 22
    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-direct {v1, v0, v3, v2, v4}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 69
    .line 70
    .line 71
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method private final writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/x;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/x;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final writeObserverOf$lambda$86(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Landroidx/compose/runtime/ControlledComposition;->recordWriteOf(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final addCompositionRegistrationObserver$runtime(Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;)Landroidx/compose/runtime/tooling/CompositionObserverHandle;
    .locals 7
    .param p1    # Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->registrationObservers:Landroidx/collection/MutableObjectList;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v2, v3, v0, v4}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->registrationObservers:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->_knownCompositions:Ljava/util/List;

    .line 25
    .line 26
    move-object v4, v2

    .line 27
    check-cast v4, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    :goto_1
    if-ge v3, v4, :cond_2

    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/compose/runtime/ControlledComposition;

    .line 40
    .line 41
    instance-of v6, v5, Landroidx/compose/runtime/tooling/ObservableComposition;

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    check-cast v5, Landroidx/compose/runtime/tooling/ObservableComposition;

    .line 46
    .line 47
    invoke-interface {p1, v5}, Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;->onCompositionRegistered(Landroidx/compose/runtime/tooling/ObservableComposition;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    add-int/2addr v3, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v1

    .line 55
    new-instance v0, Landroidx/compose/runtime/Recomposer$addCompositionRegistrationObserver$2;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/Recomposer$addCompositionRegistrationObserver$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/tooling/CompositionRegistrationObserver;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_2
    monitor-exit v1

    .line 62
    throw p1
.end method

.method public final asRecomposerInfo()Landroidx/compose/runtime/RecomposerInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final awaitIdle(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkt/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/compose/runtime/Recomposer$awaitIdle$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$awaitIdle$2;-><init>(Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/c;->V(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/c;->l(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method

.method public final cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 5
    .line 6
    invoke-interface {v1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 11
    .line 12
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 21
    .line 22
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 23
    .line 24
    invoke-interface {v1, v2}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lgt/s;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw v1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectJob:Lgt/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lgt/s;->complete()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x1

    .line 13
    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->isClosed:Z

    .line 14
    .line 15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1

    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public composeInitial$runtime(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->isComposing()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 10
    .line 11
    invoke-interface {v3}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    .line 16
    .line 17
    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->knownCompositionsLocked()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    xor-int/lit8 v4, v3, 0x1

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->addKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_4

    .line 43
    :cond_0
    move v4, v0

    .line 44
    :cond_1
    :goto_0
    monitor-exit v2

    .line 45
    :try_start_1
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->readObserverOf(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {p0, p1, v5}, Landroidx/compose/runtime/Recomposer;->writeObserverOf(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v2, v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 57
    .line 58
    .line 59
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 60
    :try_start_2
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 61
    .line 62
    .line 63
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 64
    :try_start_3
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->composeContent(Lkotlin/jvm/functions/Function2;)V

    .line 65
    .line 66
    .line 67
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 68
    .line 69
    :try_start_4
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 70
    .line 71
    .line 72
    :try_start_5
    invoke-direct {p0, v3}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 73
    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 78
    .line 79
    .line 80
    :cond_2
    :try_start_6
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 81
    .line 82
    .line 83
    :try_start_7
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 87
    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    move-object v1, p1

    .line 97
    const/4 v4, 0x6

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    move-object v0, p0

    .line 102
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Throwable;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_2
    move-exception p2

    .line 107
    invoke-direct {p0, p2, p1, v0}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_3
    move-exception p2

    .line 112
    goto :goto_2

    .line 113
    :catchall_4
    move-exception p2

    .line 114
    goto :goto_1

    .line 115
    :catchall_5
    move-exception p2

    .line 116
    :try_start_8
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 117
    .line 118
    .line 119
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 120
    :goto_1
    :try_start_9
    invoke-direct {p0, v3}, Landroidx/compose/runtime/Recomposer;->applyAndCheck(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 121
    .line 122
    .line 123
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 124
    :goto_2
    invoke-direct {p0, p2, p1, v0}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/ControlledComposition;Z)V

    .line 125
    .line 126
    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter p2

    .line 132
    :try_start_a
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 136
    .line 137
    monitor-exit p2

    .line 138
    goto :goto_3

    .line 139
    :catchall_6
    move-exception p1

    .line 140
    monitor-exit p2

    .line 141
    throw p1

    .line 142
    :cond_4
    :goto_3
    return-void

    .line 143
    :goto_4
    monitor-exit v2

    .line 144
    throw p1
.end method

.method public composeInitialPaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/ScatterSet;
    .locals 1
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/ShouldPauseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;

    .line 3
    .line 4
    .line 5
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroidx/compose/runtime/Recomposer;->composeInitial$runtime(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    iget-object p3, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 10
    .line 11
    invoke-virtual {p3}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Landroidx/collection/ScatterSetKt;->emptyScatterSet()Landroidx/collection/ScatterSet;

    .line 21
    .line 22
    .line 23
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :goto_0
    :try_start_2
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object p3

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception p3

    .line 36
    :try_start_3
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;

    .line 37
    .line 38
    .line 39
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :goto_1
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 3
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/collection/MultiValueMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getNestedReferences$runtime()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1, p1}, Landroidx/compose/runtime/Recomposer;->deletedMovableContent$lambda$95$recordNestedStatesOf(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :goto_1
    monitor-exit v0

    .line 45
    throw p1
.end method

.method public final getChangeCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCollectingCallByInformation$runtime()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_hotReloadEnabled:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getCollectingParameterInformation$runtime()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getCollectingSourceInformation$runtime()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->getComposeStackTraceEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCompositeKeyHashCode$runtime()J
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public getComposition$runtime()Landroidx/compose/runtime/Composition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getCurrentState()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkt/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->effectCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasPendingWork()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v1, p0, Landroidx/compose/runtime/Recomposer;->concurrentCompositionsOutstanding:I

    .line 22
    .line 23
    if-gtz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 26
    .line 27
    check-cast v1, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentRemoved:Landroidx/collection/MutableScatterMap;

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/runtime/collection/MultiValueMap;->isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 55
    :goto_1
    monitor-exit v0

    .line 56
    return v1

    .line 57
    :goto_2
    monitor-exit v0

    .line 58
    throw v1
.end method

.method public getRecomposeCoroutineContext$runtime()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Lkt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkt/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentAwaitingInsert:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 19
    .line 20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0

    .line 32
    throw p1
.end method

.method public invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    throw p1
.end method

.method public invalidateScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 17
    .line 18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0

    .line 30
    throw p1
.end method

.method public final join(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->getCurrentState()Lkt/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public movableContentStateReleased$runtime(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V
    .locals 17
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/MovableContentState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            "Landroidx/compose/runtime/Applier<",
            "*>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 11
    .line 12
    invoke-virtual {v4, v0, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer;->movableContentNestedExtractionsPending:Landroidx/collection/MutableScatterMap;

    .line 16
    .line 17
    invoke-static {v4, v0}, Landroidx/compose/runtime/collection/MultiValueMap;->get-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Landroidx/collection/ObjectList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isNotEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    move-object/from16 v4, p3

    .line 28
    .line 29
    invoke-virtual {v2, v4, v0}, Landroidx/compose/runtime/MovableContentState;->extractNestedStates$runtime(Landroidx/compose/runtime/Applier;Landroidx/collection/ObjectList;)Landroidx/collection/ScatterMap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v4, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 38
    .line 39
    array-length v5, v0

    .line 40
    add-int/lit8 v5, v5, -0x2

    .line 41
    .line 42
    if-ltz v5, :cond_3

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    move v7, v6

    .line 46
    :goto_0
    aget-wide v8, v0, v7

    .line 47
    .line 48
    not-long v10, v8

    .line 49
    const/4 v12, 0x7

    .line 50
    shl-long/2addr v10, v12

    .line 51
    and-long/2addr v10, v8

    .line 52
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v10, v12

    .line 58
    cmp-long v10, v10, v12

    .line 59
    .line 60
    if-eqz v10, :cond_2

    .line 61
    .line 62
    sub-int v10, v7, v5

    .line 63
    .line 64
    not-int v10, v10

    .line 65
    ushr-int/lit8 v10, v10, 0x1f

    .line 66
    .line 67
    const/16 v11, 0x8

    .line 68
    .line 69
    rsub-int/lit8 v10, v10, 0x8

    .line 70
    .line 71
    move v12, v6

    .line 72
    :goto_1
    if-ge v12, v10, :cond_1

    .line 73
    .line 74
    const-wide/16 v13, 0xff

    .line 75
    .line 76
    and-long/2addr v13, v8

    .line 77
    const-wide/16 v15, 0x80

    .line 78
    .line 79
    cmp-long v13, v13, v15

    .line 80
    .line 81
    if-gez v13, :cond_0

    .line 82
    .line 83
    shl-int/lit8 v13, v7, 0x3

    .line 84
    .line 85
    add-int/2addr v13, v12

    .line 86
    aget-object v14, v2, v13

    .line 87
    .line 88
    aget-object v13, v4, v13

    .line 89
    .line 90
    check-cast v13, Landroidx/compose/runtime/MovableContentState;

    .line 91
    .line 92
    check-cast v14, Landroidx/compose/runtime/MovableContentStateReference;

    .line 93
    .line 94
    iget-object v15, v1, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 95
    .line 96
    invoke-virtual {v15, v14, v13}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_3

    .line 102
    :cond_0
    :goto_2
    shr-long/2addr v8, v11

    .line 103
    add-int/lit8 v12, v12, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    if-ne v10, v11, :cond_3

    .line 107
    .line 108
    :cond_2
    if-eq v7, v5, :cond_3

    .line 109
    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    monitor-exit v3

    .line 116
    return-void

    .line 117
    :goto_3
    monitor-exit v3

    .line 118
    throw v0
.end method

.method public movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 2
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->movableContentStatesAvailable:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/compose/runtime/MovableContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    .line 16
    throw p1
.end method

.method public final pauseCompositionFrameClock()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 6
    .line 7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method

.method public recomposePaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;
    .locals 1
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/ShouldPauseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/ShouldPauseCallback;",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;)",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ControlledComposition;->recordModificationsOf(Ljava/util/Set;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;

    .line 13
    .line 14
    .line 15
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->performInitialMovableContentInserts(Landroidx/compose/runtime/ControlledComposition;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p3}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p3}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p3

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    iget-object p3, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Landroidx/collection/MutableScatterSet;

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {}, Landroidx/collection/ScatterSetKt;->emptyScatterSet()Landroidx/collection/ScatterSet;

    .line 46
    .line 47
    .line 48
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_1
    :try_start_2
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object p3

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto :goto_3

    .line 60
    :goto_2
    :try_start_3
    invoke-interface {p1, p2}, Landroidx/compose/runtime/ControlledComposition;->getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;

    .line 61
    .line 62
    .line 63
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :goto_3
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public recordInspectionTable$runtime(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/tooling/CompositionData;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public registerComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->pausedScopes:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public reportRemovedComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    throw p1
.end method

.method public final resumeCompositionFrameClock()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->frameClockPaused:Z

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lgt/i;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 23
    .line 24
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, v0}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :goto_1
    monitor-exit v0

    .line 35
    throw v1
.end method

.method public final runRecomposeAndApplyChanges(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lat/n;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public final runRecomposeConcurrentlyAndApplyChanges(Lkotlin/coroutines/CoroutineContext;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ExperimentalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Recomposer;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lat/n;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public unregisterComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer;->removeKnownCompositionLocked(Landroidx/compose/runtime/ControlledComposition;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0

    .line 25
    throw p1
.end method
