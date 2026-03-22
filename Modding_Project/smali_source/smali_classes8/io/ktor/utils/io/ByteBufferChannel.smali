.class public Lio/ktor/utils/io/ByteBufferChannel;
.super Ljava/lang/Object;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lio/ktor/utils/io/b;
.implements Lio/ktor/utils/io/ByteReadChannel;
.implements Lio/ktor/utils/io/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteBufferChannel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n+ 2 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 8 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 9 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,2411:1\n2110#1,2:2436\n459#1,4:2443\n466#1,2:2448\n464#1:2450\n459#1,4:2451\n466#1,2:2456\n464#1:2458\n459#1,4:2463\n466#1,2:2468\n464#1:2470\n459#1,4:2472\n466#1,2:2477\n464#1:2479\n849#1,4:2481\n459#1,4:2485\n466#1,2:2490\n464#1:2492\n853#1,15:2493\n849#1,4:2508\n459#1,4:2512\n466#1,2:2517\n464#1:2519\n853#1,15:2520\n849#1,4:2535\n459#1,4:2539\n466#1,2:2544\n464#1:2546\n853#1,15:2547\n849#1,4:2562\n459#1,4:2566\n466#1,2:2571\n464#1:2573\n853#1,15:2574\n849#1,4:2589\n459#1,4:2593\n466#1,2:2598\n464#1:2600\n853#1,15:2601\n849#1,4:2616\n459#1,4:2620\n466#1,2:2625\n464#1:2627\n853#1,15:2628\n459#1,4:2643\n466#1,2:2648\n464#1:2650\n964#1:2651\n966#1:2653\n1036#1,7:2654\n929#1,2:2661\n1043#1,2:2663\n931#1:2665\n1045#1:2666\n967#1,76:2667\n929#1,2:2743\n1043#1,2:2745\n931#1:2747\n1045#1:2748\n1030#1,3:2749\n979#1,32:2752\n1033#1:2784\n972#1:2785\n964#1:2786\n966#1:2788\n1036#1,7:2789\n929#1,2:2796\n1043#1,2:2798\n931#1:2800\n1045#1:2801\n967#1,76:2802\n929#1,2:2878\n1043#1,2:2880\n931#1:2882\n1045#1:2883\n1030#1,3:2884\n979#1,32:2887\n1033#1:2919\n972#1:2920\n964#1:2921\n966#1:2923\n1036#1,7:2924\n929#1,2:2931\n1043#1,2:2933\n931#1:2935\n1045#1:2936\n967#1,76:2937\n929#1,2:3013\n1043#1,2:3015\n931#1:3017\n1045#1:3018\n1030#1,3:3019\n979#1,32:3022\n1033#1:3054\n972#1:3055\n964#1:3056\n966#1:3058\n1036#1,7:3059\n929#1,2:3066\n1043#1,2:3068\n931#1:3070\n1045#1:3071\n967#1,76:3072\n929#1,2:3148\n1043#1,2:3150\n931#1:3152\n1045#1:3153\n1030#1,3:3154\n979#1,32:3157\n1033#1:3189\n972#1:3190\n1036#1,7:3191\n929#1,2:3198\n1043#1,2:3200\n931#1:3202\n1045#1:3203\n979#1,32:3204\n1019#1,24:3236\n929#1,2:3260\n1043#1,2:3262\n931#1:3264\n1045#1:3265\n1030#1,3:3266\n979#1,32:3269\n1033#1:3301\n993#1,18:3302\n1036#1,7:3320\n929#1,2:3327\n1043#1,2:3329\n931#1:3331\n1045#1:3332\n979#1,32:3333\n929#1,3:3365\n440#1:3370\n441#1,7:3372\n459#1,4:3381\n466#1,2:3386\n464#1:3388\n449#1,8:3389\n440#1:3397\n441#1,7:3399\n449#1,8:3407\n440#1:3415\n441#1,7:3417\n449#1,8:3426\n440#1:3434\n441#1,7:3436\n449#1,8:3444\n440#1:3452\n441#1,16:3454\n440#1:3470\n441#1,16:3472\n440#1:3488\n441#1,16:3490\n459#1,4:3506\n466#1,2:3511\n464#1:3513\n459#1,4:3515\n466#1,2:3520\n464#1:3522\n459#1,4:3523\n466#1,2:3528\n464#1:3530\n440#1:3533\n441#1,16:3535\n459#1,4:3551\n466#1,2:3556\n464#1:3558\n459#1,4:3559\n466#1,2:3564\n464#1:3566\n459#1,4:3569\n466#1,2:3574\n464#1:3576\n2197#1,3:3628\n2201#1,3:3632\n2341#1,3:3636\n2345#1:3640\n2197#1,3:3641\n2201#1,3:3645\n2346#1,5:3648\n2197#1,7:3653\n2197#1,3:3660\n2201#1,3:3664\n2341#1,3:3679\n2345#1,6:3683\n12#2:2412\n18#2:2413\n18#2:2415\n12#2:2416\n18#2:2421\n12#2:2429\n12#2:2431\n12#2:2442\n12#2:2447\n12#2:2455\n12#2:2461\n12#2:2467\n12#2:2476\n12#2:2489\n12#2:2516\n12#2:2543\n12#2:2570\n12#2:2597\n12#2:2624\n12#2:2647\n18#2:3379\n18#2:3380\n12#2:3385\n18#2:3406\n18#2:3425\n18#2:3443\n12#2:3510\n12#2:3514\n12#2:3519\n12#2:3527\n12#2:3555\n12#2:3563\n12#2:3567\n12#2:3568\n12#2:3573\n12#2:3577\n12#2:3622\n12#2:3623\n12#2:3624\n12#2:3625\n12#2:3626\n12#2:3627\n12#2:3631\n12#2:3635\n12#2:3644\n12#2:3663\n18#2:3667\n1#3:2414\n1#3:2652\n1#3:2787\n1#3:2922\n1#3:3057\n1#3:3371\n1#3:3398\n1#3:3416\n1#3:3435\n1#3:3453\n1#3:3471\n1#3:3489\n1#3:3534\n1#3:3639\n1#3:3682\n186#4,4:2417\n186#4,4:2422\n186#4,3:2426\n189#4:2430\n186#4,4:2432\n164#4,4:2438\n74#5:2459\n74#5:2462\n69#5:3424\n74#5:3589\n74#5:3611\n361#6:2460\n361#6:2471\n361#6:2480\n355#6:3368\n355#6:3369\n43#7:3531\n43#7:3532\n12#8,7:3578\n19#8,4:3596\n12#8,7:3600\n19#8,4:3618\n488#9,4:3585\n492#9,6:3590\n488#9,4:3607\n492#9,6:3612\n314#10,11:3668\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n377#1:2436,2\n474#1:2443,4\n474#1:2448,2\n474#1:2450\n512#1:2451,4\n512#1:2456,2\n512#1:2458\n539#1:2463,4\n539#1:2468,2\n539#1:2470\n637#1:2472,4\n637#1:2477,2\n637#1:2479\n822#1:2481,4\n822#1:2485,4\n822#1:2490,2\n822#1:2492\n822#1:2493,15\n826#1:2508,4\n826#1:2512,4\n826#1:2517,2\n826#1:2519\n826#1:2520,15\n830#1:2535,4\n830#1:2539,4\n830#1:2544,2\n830#1:2546\n830#1:2547,15\n834#1:2562,4\n834#1:2566,4\n834#1:2571,2\n834#1:2573\n834#1:2574,15\n838#1:2589,4\n838#1:2593,4\n838#1:2598,2\n838#1:2600\n838#1:2601,15\n842#1:2616,4\n842#1:2620,4\n842#1:2625,2\n842#1:2627\n842#1:2628,15\n852#1:2643,4\n852#1:2648,2\n852#1:2650\n936#1:2651\n936#1:2653\n936#1:2654,7\n936#1:2661,2\n936#1:2663,2\n936#1:2665\n936#1:2666\n936#1:2667,76\n936#1:2743,2\n936#1:2745,2\n936#1:2747\n936#1:2748\n936#1:2749,3\n936#1:2752,32\n936#1:2784\n936#1:2785\n940#1:2786\n940#1:2788\n940#1:2789,7\n940#1:2796,2\n940#1:2798,2\n940#1:2800\n940#1:2801\n940#1:2802,76\n940#1:2878,2\n940#1:2880,2\n940#1:2882\n940#1:2883\n940#1:2884,3\n940#1:2887,32\n940#1:2919\n940#1:2920\n944#1:2921\n944#1:2923\n944#1:2924,7\n944#1:2931,2\n944#1:2933,2\n944#1:2935\n944#1:2936\n944#1:2937,76\n944#1:3013,2\n944#1:3015,2\n944#1:3017\n944#1:3018\n944#1:3019,3\n944#1:3022,32\n944#1:3054\n944#1:3055\n948#1:3056\n948#1:3058\n948#1:3059,7\n948#1:3066,2\n948#1:3068,2\n948#1:3070\n948#1:3071\n948#1:3072,76\n948#1:3148,2\n948#1:3150,2\n948#1:3152\n948#1:3153\n948#1:3154,3\n948#1:3157,32\n948#1:3189\n948#1:3190\n966#1:3191,7\n966#1:3198,2\n966#1:3200,2\n966#1:3202\n966#1:3203\n969#1:3204,32\n970#1:3236,24\n970#1:3260,2\n970#1:3262,2\n970#1:3264\n970#1:3265\n970#1:3266,3\n970#1:3269,32\n970#1:3301\n983#1:3302,18\n1029#1:3320,7\n1029#1:3327,2\n1029#1:3329,2\n1029#1:3331\n1029#1:3332\n1032#1:3333,32\n1042#1:3365,3\n1196#1:3370\n1196#1:3372,7\n1209#1:3381,4\n1209#1:3386,2\n1209#1:3388\n1196#1:3389,8\n1322#1:3397\n1322#1:3399,7\n1322#1:3407,8\n1352#1:3415\n1352#1:3417,7\n1352#1:3426,8\n1376#1:3434\n1376#1:3436,7\n1376#1:3444,8\n1455#1:3452\n1455#1:3454,16\n1525#1:3470\n1525#1:3472,16\n1535#1:3488\n1535#1:3490,16\n1640#1:3506,4\n1640#1:3511,2\n1640#1:3513\n1675#1:3515,4\n1675#1:3520,2\n1675#1:3522\n1693#1:3523,4\n1693#1:3528,2\n1693#1:3530\n1754#1:3533\n1754#1:3535,16\n1775#1:3551,4\n1775#1:3556,2\n1775#1:3558\n1796#1:3559,4\n1796#1:3564,2\n1796#1:3566\n1902#1:3569,4\n1902#1:3574,2\n1902#1:3576\n2209#1:3628,3\n2209#1:3632,3\n2225#1:3636,3\n2225#1:3640\n2225#1:3641,3\n2225#1:3645,3\n2225#1:3648,5\n2225#1:3653,7\n2231#1:3660,3\n2231#1:3664,3\n2326#1:3679,3\n2326#1:3683,6\n95#1:2412\n98#1:2413\n181#1:2415\n182#1:2416\n269#1:2421\n302#1:2429\n309#1:2431\n462#1:2442\n474#1:2447\n512#1:2455\n531#1:2461\n539#1:2467\n637#1:2476\n822#1:2489\n826#1:2516\n830#1:2543\n834#1:2570\n838#1:2597\n842#1:2624\n852#1:2647\n1198#1:3379\n1202#1:3380\n1209#1:3385\n1338#1:3406\n1364#1:3425\n1387#1:3443\n1640#1:3510\n1641#1:3514\n1675#1:3519\n1693#1:3527\n1775#1:3555\n1796#1:3563\n1858#1:3567\n1880#1:3568\n1902#1:3573\n1930#1:3577\n2139#1:3622\n2158#1:3623\n2164#1:3624\n2179#1:3625\n2184#1:3626\n2199#1:3627\n2209#1:3631\n2221#1:3635\n2225#1:3644\n2231#1:3663\n2258#1:3667\n936#1:2652\n940#1:2787\n944#1:2922\n948#1:3057\n1196#1:3371\n1322#1:3398\n1352#1:3416\n1376#1:3435\n1455#1:3453\n1525#1:3471\n1535#1:3489\n1754#1:3534\n2225#1:3639\n2326#1:3682\n224#1:2417,4\n276#1:2422,4\n292#1:2426,3\n292#1:2430\n316#1:2432,4\n398#1:2438,4\n513#1:2459\n505#1:2462\n1356#1:3424\n2072#1:3589\n2087#1:3611\n531#1:2460\n607#1:2471\n723#1:2480\n1099#1:3368\n1122#1:3369\n1725#1:3531\n1741#1:3532\n2069#1:3578,7\n2069#1:3596,4\n2084#1:3600,7\n2084#1:3618,4\n2071#1:3585,4\n2071#1:3590,6\n2086#1:3607,4\n2086#1:3612,6\n2311#1:3668,11\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lio/ktor/utils/io/ByteBufferChannel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final synthetic m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _readOp:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field volatile synthetic _writeOp:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile attachedJob:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Z

.field private final c:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lio/ktor/utils/io/internal/f$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:I

.field private e:I

.field private f:I

.field private final g:Lio/ktor/utils/io/internal/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lio/ktor/utils/io/internal/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lio/ktor/utils/io/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lio/ktor/utils/io/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/a<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile joining:Lio/ktor/utils/io/internal/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile totalBytesRead:J

.field private volatile totalBytesWritten:J

.field private volatile writeSuspensionSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/utils/io/ByteBufferChannel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->l:Lio/ktor/utils/io/ByteBufferChannel$a;

    .line 8
    .line 9
    const-string v0, "_state"

    .line 10
    .line 11
    const-class v1, Lio/ktor/utils/io/ByteBufferChannel;

    .line 12
    .line 13
    const-class v2, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_closed"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    const-string v0, "_readOp"

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    const-string v0, "_writeOp"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lio/ktor/utils/io/internal/d;->b()Lio/ktor/utils/io/pool/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/b;I)V

    .line 17
    new-instance v0, Lio/ktor/utils/io/internal/f$c;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v2, "content.slice()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lio/ktor/utils/io/internal/f$c;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 18
    iget-object p1, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/h;->i()V

    .line 19
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/f$c;->l()Lio/ktor/utils/io/internal/f$g;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 22
    invoke-static {p0}, Lio/ktor/utils/io/f;->a(Lio/ktor/utils/io/e;)Z

    .line 23
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    return-void
.end method

.method public constructor <init>(ZLio/ktor/utils/io/pool/b;I)V
    .locals 1
    .param p2    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/ktor/utils/io/pool/b<",
            "Lio/ktor/utils/io/internal/f$c;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->b:Z

    .line 3
    iput-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel;->c:Lio/ktor/utils/io/pool/b;

    .line 4
    iput p3, p0, Lio/ktor/utils/io/ByteBufferChannel;->d:I

    .line 5
    sget-object p1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_closed:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp:Ljava/lang/Object;

    .line 9
    new-instance p1, Lio/ktor/utils/io/internal/e;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/e;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->g:Lio/ktor/utils/io/internal/e;

    .line 10
    new-instance p1, Lio/ktor/utils/io/internal/j;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/j;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->h:Lio/ktor/utils/io/internal/j;

    .line 11
    new-instance p1, Lio/ktor/utils/io/internal/a;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/a;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->i:Lio/ktor/utils/io/internal/a;

    .line 12
    new-instance p1, Lio/ktor/utils/io/internal/a;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/a;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->j:Lio/ktor/utils/io/internal/a;

    .line 13
    new-instance p1, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/ktor/utils/io/pool/b;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 14
    invoke-static {}, Lio/ktor/utils/io/internal/d;->c()Lio/ktor/utils/io/pool/b;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x8

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/b;I)V

    return-void
.end method

.method public static final synthetic A(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->L0(Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final A0(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v3, v2

    .line 6
    check-cast v3, Lio/ktor/utils/io/internal/f;

    .line 7
    .line 8
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v5, v0

    .line 22
    :goto_0
    if-nez v5, :cond_2

    .line 23
    .line 24
    iget-object v1, v1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->j()V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 30
    .line 31
    .line 32
    move-object v1, v0

    .line 33
    :cond_3
    sget-object v5, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-ne v3, v5, :cond_4

    .line 37
    .line 38
    return v6

    .line 39
    :cond_4
    sget-object v7, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 40
    .line 41
    if-ne v3, v7, :cond_5

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    if-eqz v4, :cond_8

    .line 45
    .line 46
    instance-of v1, v3, Lio/ktor/utils/io/internal/f$b;

    .line 47
    .line 48
    if-eqz v1, :cond_8

    .line 49
    .line 50
    iget-object v1, v3, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 51
    .line 52
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->k()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_6

    .line 57
    .line 58
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_8

    .line 63
    .line 64
    :cond_6
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    iget-object v1, v3, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 71
    .line 72
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->f()V

    .line 73
    .line 74
    .line 75
    :cond_7
    check-cast v3, Lio/ktor/utils/io/internal/f$b;

    .line 76
    .line 77
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/f$b;->g()Lio/ktor/utils/io/internal/f$c;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    goto :goto_1

    .line 82
    :cond_8
    if-eqz p1, :cond_a

    .line 83
    .line 84
    instance-of v1, v3, Lio/ktor/utils/io/internal/f$b;

    .line 85
    .line 86
    if-eqz v1, :cond_a

    .line 87
    .line 88
    iget-object v1, v3, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 89
    .line 90
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->k()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    check-cast v3, Lio/ktor/utils/io/internal/f$b;

    .line 97
    .line 98
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/f$b;->g()Lio/ktor/utils/io/internal/f$c;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_1
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 103
    .line 104
    invoke-static {v3, p0, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_0

    .line 109
    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v5, :cond_9

    .line 117
    .line 118
    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    return v6

    .line 122
    :cond_a
    const/4 p1, 0x0

    .line 123
    return p1
.end method

.method public static final synthetic B(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->M0(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->N0([BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->O0([BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final D0(Lhs/a;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->w0()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v3, v3, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-nez v6, :cond_7

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    sub-int/2addr v6, v7

    .line 45
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v3, v6}, Lio/ktor/utils/io/internal/h;->n(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-static {p1, v1, v6}, Lhs/g;->a(Lhs/a;Ljava/nio/ByteBuffer;I)V

    .line 60
    .line 61
    .line 62
    add-int/2addr v2, v6

    .line 63
    iget v6, v0, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 64
    .line 65
    add-int/2addr v6, v2

    .line 66
    invoke-direct {v0, v1, v6}, Lio/ktor/utils/io/ByteBufferChannel;->H(Ljava/nio/ByteBuffer;I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    iget v7, v3, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 71
    .line 72
    invoke-direct {v0, v1, v6, v7}, Lio/ktor/utils/io/ByteBufferChannel;->U(Ljava/nio/ByteBuffer;II)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-direct {v0, v1, v3, v2}, Lio/ktor/utils/io/ByteBufferChannel;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    :cond_4
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 94
    .line 95
    .line 96
    :cond_5
    if-eq v0, p0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    sub-long/2addr v8, v4

    .line 107
    add-long/2addr v6, v8

    .line 108
    invoke-virtual {p0, v6, v7}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :cond_7
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 123
    .line 124
    .line 125
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 126
    .line 127
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 128
    .line 129
    .line 130
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    :cond_8
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 144
    .line 145
    .line 146
    :cond_9
    if-eq v0, p0, :cond_a

    .line 147
    .line 148
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    sub-long/2addr v6, v4

    .line 157
    add-long/2addr v1, v6

    .line 158
    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 159
    .line 160
    .line 161
    :cond_a
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method public static final synthetic E(Lio/ktor/utils/io/ByteBufferChannel;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->P0(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final E0(Ljava/nio/ByteBuffer;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->w0()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v3, v3, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-nez v6, :cond_8

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    sub-int v7, v6, v7

    .line 45
    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v3, v7}, Lio/ktor/utils/io/internal/h;->n(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    if-lez v7, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    add-int/2addr v8, v7

    .line 69
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    add-int/2addr v2, v7

    .line 76
    iget v7, v0, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 77
    .line 78
    add-int/2addr v7, v2

    .line 79
    invoke-direct {v0, v1, v7}, Lio/ktor/utils/io/ByteBufferChannel;->H(Ljava/nio/ByteBuffer;I)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    iget v8, v3, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 84
    .line 85
    invoke-direct {v0, v1, v7, v8}, Lio/ktor/utils/io/ByteBufferChannel;->U(Ljava/nio/ByteBuffer;II)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const-string p1, "Failed requirement."

    .line 92
    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_4
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1, v3, v2}, Lio/ktor/utils/io/ByteBufferChannel;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 118
    .line 119
    .line 120
    :cond_6
    if-eq v0, p0, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    sub-long/2addr v8, v4

    .line 131
    add-long/2addr v6, v8

    .line 132
    invoke-virtual {p0, v6, v7}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 133
    .line 134
    .line 135
    :cond_7
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :cond_8
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 147
    .line 148
    .line 149
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 150
    .line 151
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 152
    .line 153
    .line 154
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    :cond_9
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 168
    .line 169
    .line 170
    :cond_a
    if-eq v0, p0, :cond_b

    .line 171
    .line 172
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 177
    .line 178
    .line 179
    move-result-wide v6

    .line 180
    sub-long/2addr v6, v4

    .line 181
    add-long/2addr v1, v6

    .line 182
    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 183
    .line 184
    .line 185
    :cond_b
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method private final F(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    .locals 2

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->e:I

    .line 4
    .line 5
    add-int/2addr v0, p3

    .line 6
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->H(Ljava/nio/ByteBuffer;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->e:I

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/h;->a(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->P()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    int-to-long v0, p3

    .line 20
    add-long/2addr p1, v0

    .line 21
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->t0(J)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "Failed requirement."

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method private final F0([BII)I
    .locals 8

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->w0()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v3, v3, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    :try_start_0
    invoke-direct {v0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-nez v6, :cond_8

    .line 35
    .line 36
    :goto_0
    sub-int v6, p3, v2

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v3, v6}, Lio/ktor/utils/io/internal/h;->n(I)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    if-lez v6, :cond_3

    .line 53
    .line 54
    add-int v7, p2, v2

    .line 55
    .line 56
    invoke-virtual {v1, p1, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    add-int/2addr v2, v6

    .line 60
    iget v6, v0, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 61
    .line 62
    add-int/2addr v6, v2

    .line 63
    invoke-direct {v0, v1, v6}, Lio/ktor/utils/io/ByteBufferChannel;->H(Ljava/nio/ByteBuffer;I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget v7, v3, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 68
    .line 69
    invoke-direct {v0, v1, v6, v7}, Lio/ktor/utils/io/ByteBufferChannel;->U(Ljava/nio/ByteBuffer;II)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string p1, "Failed requirement."

    .line 76
    .line 77
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_4
    invoke-direct {v0, v1, v3, v2}, Lio/ktor/utils/io/ByteBufferChannel;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 99
    .line 100
    .line 101
    :cond_6
    if-eq v0, p0, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    sub-long/2addr v6, v4

    .line 112
    add-long/2addr p1, v6

    .line 113
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :cond_8
    :try_start_1
    invoke-virtual {v6}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 128
    .line 129
    .line 130
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 131
    .line 132
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 133
    .line 134
    .line 135
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_9

    .line 141
    .line 142
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_a

    .line 147
    .line 148
    :cond_9
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 149
    .line 150
    .line 151
    :cond_a
    if-eq v0, p0, :cond_b

    .line 152
    .line 153
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 154
    .line 155
    .line 156
    move-result-wide p2

    .line 157
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    sub-long/2addr v1, v4

    .line 162
    add-long/2addr p2, v1

    .line 163
    invoke-virtual {p0, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 164
    .line 165
    .line 166
    :cond_b
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method private final G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    .locals 2

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 4
    .line 5
    add-int/2addr v0, p3

    .line 6
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->H(Ljava/nio/ByteBuffer;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/h;->c(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    int-to-long v0, p3

    .line 20
    add-long/2addr p1, v0

    .line 21
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p2, "Failed requirement."

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method private final H(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->d:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-lt p2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->d:I

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    sub-int/2addr p2, p1

    .line 18
    :cond_0
    return p2
.end method

.method static synthetic H0(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "[BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->G0([BIILrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->F0([BII)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->O0([BIILrs/c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method static synthetic I0(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Lhs/a;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->D0(Lhs/a;)I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-le v0, v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->L0(Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-ne p0, p1, :cond_0

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method static synthetic J0(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->i(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->E0(Ljava/nio/ByteBuffer;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->M0(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p0, p1, :cond_3

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final K(Lio/ktor/utils/io/internal/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->c()Lio/ktor/utils/io/ByteBufferChannel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->a()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->c()Lio/ktor/utils/io/ByteBufferChannel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v1}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v2, v1, Lio/ktor/utils/io/internal/f$g;

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    instance-of v1, v1, Lio/ktor/utils/io/internal/f$e;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 48
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->c()Lio/ktor/utils/io/ByteBufferChannel;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->c()Lio/ktor/utils/io/ByteBufferChannel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->a(Ljava/lang/Throwable;)Z

    .line 74
    .line 75
    .line 76
    :goto_3
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/c;->a()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method static synthetic K0(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "[BII",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->b([BIILrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->F0([BII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    add-int/2addr p2, v0

    .line 34
    sub-int/2addr p3, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-nez p3, :cond_3

    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->N0([BIILrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p0, p1, :cond_4

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method private final L(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/c;->c()Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v2, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    .line 34
    iget-object v2, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 35
    .line 36
    iget v2, v2, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 37
    .line 38
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 39
    .line 40
    iget v0, v0, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-lt v0, v3, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->q0()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 49
    .line 50
    if-lt v2, p1, :cond_4

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v1, :cond_4

    .line 59
    .line 60
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method private final L0(Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhs/a;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->l:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lhs/a;

    .line 56
    .line 57
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v2, p0

    .line 69
    :goto_1
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-le p2, v5, :cond_7

    .line 78
    .line 79
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->h:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->i:Ljava/lang/Object;

    .line 82
    .line 83
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->l:I

    .line 84
    .line 85
    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->C0(ILrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-ne p2, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    :goto_2
    iget-object p2, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 93
    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    invoke-direct {v2, v2, p2}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-eqz p2, :cond_6

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->h:Ljava/lang/Object;

    .line 104
    .line 105
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->i:Ljava/lang/Object;

    .line 106
    .line 107
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->l:I

    .line 108
    .line 109
    invoke-virtual {p2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m(Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-ne p1, v1, :cond_5

    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_6
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->D0(Lhs/a;)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1
.end method

.method private final M()Lio/ktor/utils/io/internal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_closed:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/ktor/utils/io/internal/b;

    .line 4
    .line 5
    return-object v0
.end method

.method private final M0(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->l:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v2, p0

    .line 69
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_7

    .line 74
    .line 75
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->i:Ljava/lang/Object;

    .line 78
    .line 79
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->l:I

    .line 80
    .line 81
    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->C0(ILrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-ne p2, v1, :cond_4

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    :goto_2
    iget-object p2, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 89
    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    invoke-direct {v2, v2, p2}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_6

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->h:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->i:Ljava/lang/Object;

    .line 102
    .line 103
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$1;->l:I

    .line 104
    .line 105
    invoke-virtual {p2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->i(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v1, :cond_5

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_6
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->E0(Ljava/nio/ByteBuffer;)I

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method

.method private final N()Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrs/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lrs/c;

    .line 4
    .line 5
    return-object v0
.end method

.method private final N0([BIILrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->n:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->n:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->k:I

    .line 39
    .line 40
    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->j:I

    .line 41
    .line 42
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p3, [B

    .line 45
    .line 46
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 49
    .line 50
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v2, p0

    .line 66
    :goto_1
    if-lez p3, :cond_4

    .line 67
    .line 68
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->i:Ljava/lang/Object;

    .line 71
    .line 72
    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->j:I

    .line 73
    .line 74
    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->k:I

    .line 75
    .line 76
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->n:I

    .line 77
    .line 78
    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->G0([BIILrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    if-ne p4, v1, :cond_3

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    move v4, p3

    .line 86
    move-object p3, p1

    .line 87
    move p1, v4

    .line 88
    :goto_2
    check-cast p4, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    add-int/2addr p2, p4

    .line 95
    sub-int/2addr p1, p4

    .line 96
    move-object v4, p3

    .line 97
    move p3, p1

    .line 98
    move-object p1, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1
.end method

.method private final O()Lio/ktor/utils/io/internal/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/ktor/utils/io/internal/f;

    .line 4
    .line 5
    return-object v0
.end method

.method private final O0([BIILrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->n:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->n:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->k:I

    .line 54
    .line 55
    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->j:I

    .line 56
    .line 57
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p3, [B

    .line 60
    .line 61
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 64
    .line 65
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v5, p3

    .line 69
    move p3, p1

    .line 70
    move-object p1, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v2, p0

    .line 76
    :cond_4
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->h:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->i:Ljava/lang/Object;

    .line 79
    .line 80
    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->j:I

    .line 81
    .line 82
    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->k:I

    .line 83
    .line 84
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->n:I

    .line 85
    .line 86
    invoke-virtual {v2, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->C0(ILrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    if-ne p4, v1, :cond_5

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_5
    :goto_1
    iget-object p4, v2, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 94
    .line 95
    if-eqz p4, :cond_7

    .line 96
    .line 97
    invoke-direct {v2, v2, p4}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    if-eqz p4, :cond_7

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->h:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->i:Ljava/lang/Object;

    .line 107
    .line 108
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->n:I

    .line 109
    .line 110
    invoke-direct {p4, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->O0([BIILrs/c;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    if-ne p4, v1, :cond_6

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_6
    :goto_2
    return-object p4

    .line 118
    :cond_7
    invoke-direct {v2, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->F0([BII)I

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    if-lez p4, :cond_4

    .line 123
    .line 124
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1
.end method

.method private final P0(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 19
    .line 20
    iget v0, v0, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 21
    .line 22
    if-ge v0, p1, :cond_2

    .line 23
    .line 24
    sget-object p1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 25
    .line 26
    if-eq v1, p1, :cond_2

    .line 27
    .line 28
    :goto_0
    move v3, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object p1, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 31
    .line 32
    if-eq v1, p1, :cond_2

    .line 33
    .line 34
    instance-of p1, v1, Lio/ktor/utils/io/internal/f$g;

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    instance-of p1, v1, Lio/ktor/utils/io/internal/f$e;

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    return v3
.end method

.method private final R()Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lrs/c;

    .line 4
    .line 5
    return-object v0
.end method

.method private final T()Lio/ktor/utils/io/internal/f$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->c:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/ktor/utils/io/internal/f$c;

    .line 8
    .line 9
    iget-object v1, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->j()V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private final U(Ljava/nio/ByteBuffer;II)V
    .locals 2

    .line 1
    const-string v0, "Failed requirement."

    .line 2
    .line 3
    if-ltz p2, :cond_1

    .line 4
    .line 5
    if-ltz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->d:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    add-int/2addr p3, p2

    .line 15
    invoke-static {p3, v0}, Lkotlin/ranges/e;->j(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method static synthetic V(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_b

    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->v0()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 16
    .line 17
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :try_start_1
    iget v3, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 29
    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    if-ge v3, p1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v3, v4, :cond_6

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    sub-int/2addr v3, v1

    .line 57
    if-ltz v3, :cond_5

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lio/ktor/utils/io/internal/h;->m(I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-direct {p0, v0, v2, v3}, Lio/ktor/utils/io/ByteBufferChannel;->F(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const-string p1, "Check failed."

    .line 73
    .line 74
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :cond_5
    const-string p1, "Position has been moved backward: pushback is not supported."

    .line 81
    .line 82
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :cond_6
    const-string p1, "Buffer limit modified."

    .line 89
    .line 90
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_1
    if-nez v1, :cond_a

    .line 97
    .line 98
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->l()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    if-gtz p1, :cond_7

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    new-instance p0, Ljava/io/EOFException;

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string p3, "Got EOF but at least "

    .line 115
    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, " bytes were expected"

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_8
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->d0(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-ne p0, p1, :cond_9

    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0

    .line 152
    :goto_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    const-string p1, "min should be positive or zero"

    .line 162
    .line 163
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method private final W(Lhs/a;II)I
    .locals 6

    .line 1
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->v0()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :goto_0
    move v4, v1

    .line 9
    goto :goto_3

    .line 10
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v2, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 15
    .line 16
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int/2addr v3, v4

    .line 36
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/h;->l(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-gtz v4, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ge v3, v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v1, v3

    .line 66
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    :goto_1
    invoke-static {p1, v0}, Lhs/e;->a(Lhs/a;Ljava/nio/ByteBuffer;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/ByteBufferChannel;->F(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    :goto_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 83
    .line 84
    .line 85
    :goto_3
    add-int/2addr p2, v4

    .line 86
    sub-int/2addr p3, v4

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-le v0, v1, :cond_5

    .line 98
    .line 99
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 104
    .line 105
    iget v0, v0, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 106
    .line 107
    if-gtz v0, :cond_0

    .line 108
    .line 109
    :cond_5
    return p2

    .line 110
    :goto_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method private final X([BII)I
    .locals 7

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->v0()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v2, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 14
    .line 15
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, p0, Lio/ktor/utils/io/ByteBufferChannel;->d:I

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    :goto_0
    sub-int v4, p3, v1

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    iget v5, p0, Lio/ktor/utils/io/ByteBufferChannel;->e:I

    .line 32
    .line 33
    sub-int v6, v3, v5

    .line 34
    .line 35
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/h;->l(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    add-int v6, v5, v4

    .line 46
    .line 47
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    add-int v5, p2, v1

    .line 54
    .line 55
    invoke-virtual {v0, p1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/ByteBufferChannel;->F(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    add-int/2addr v1, v4

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 69
    .line 70
    .line 71
    :goto_2
    return v1

    .line 72
    :goto_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method static synthetic Y(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;IIILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    sub-int/2addr p3, p4

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->W(Lhs/a;II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p1, "Super calls with default arguments not supported in this target, function: readAsMuchAsPossible"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method static synthetic Z(Lio/ktor/utils/io/ByteBufferChannel;Lis/a;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Lis/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v4, 0x6

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;->Y(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;IIILjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object p2, p2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 24
    .line 25
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v0, p0

    .line 36
    move-object v1, p1

    .line 37
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;->Y(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;IIILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, -0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-gtz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-le v1, v2, :cond_2

    .line 55
    .line 56
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->b0(Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method static synthetic a0(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "[BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->X([BII)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    iget-object p4, p4, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 18
    .line 19
    invoke-virtual {p4}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->X([BII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-gtz v0, :cond_3

    .line 33
    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->c0([BIILrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_3
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private final b0(Lis/a;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lis/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->l:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lis/a;

    .line 56
    .line 57
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->i:Ljava/lang/Object;

    .line 71
    .line 72
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->l:I

    .line 73
    .line 74
    invoke-direct {p0, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->g0(ILrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-ne p2, v1, :cond_4

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_4
    move-object v2, p0

    .line 82
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_5

    .line 89
    .line 90
    const/4 p1, -0x1

    .line 91
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_5
    const/4 p2, 0x0

    .line 97
    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->h:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->i:Ljava/lang/Object;

    .line 100
    .line 101
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->l:I

    .line 102
    .line 103
    invoke-virtual {v2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->f(Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-ne p2, v1, :cond_6

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_6
    :goto_2
    return-object p2
.end method

.method private final c0([BIILrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->n:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->n:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->k:I

    .line 54
    .line 55
    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->j:I

    .line 56
    .line 57
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, [B

    .line 60
    .line 61
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 64
    .line 65
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->h:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->i:Ljava/lang/Object;

    .line 75
    .line 76
    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->j:I

    .line 77
    .line 78
    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->k:I

    .line 79
    .line 80
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->n:I

    .line 81
    .line 82
    invoke-direct {p0, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->g0(ILrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    if-ne p4, v1, :cond_4

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_4
    move-object v2, p0

    .line 90
    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result p4

    .line 96
    if-nez p4, :cond_5

    .line 97
    .line 98
    const/4 p1, -0x1

    .line 99
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_5
    const/4 p4, 0x0

    .line 105
    iput-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->h:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->i:Ljava/lang/Object;

    .line 108
    .line 109
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->n:I

    .line 110
    .line 111
    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->e([BIILrs/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    if-ne p4, v1, :cond_6

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_6
    :goto_2
    return-object p4
.end method

.method private final d0(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->m:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->j:I

    .line 54
    .line 55
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->i:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->h:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 62
    .line 63
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v4}, Lkotlin/ranges/e;->e(II)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->h:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->j:I

    .line 79
    .line 80
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->m:I

    .line 81
    .line 82
    invoke-direct {p0, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->g0(ILrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    if-ne p3, v1, :cond_4

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_4
    move-object v2, p0

    .line 90
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-nez p3, :cond_6

    .line 97
    .line 98
    if-gtz p1, :cond_5

    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1

    .line 103
    :cond_5
    new-instance p2, Ljava/io/EOFException;

    .line 104
    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v0, "Got EOF but at least "

    .line 111
    .line 112
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " bytes were expected"

    .line 119
    .line 120
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p2

    .line 131
    :cond_6
    const/4 p3, 0x0

    .line 132
    iput-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->h:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->i:Ljava/lang/Object;

    .line 135
    .line 136
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readBlockSuspend$1;->m:I

    .line 137
    .line 138
    invoke-virtual {v2, p1, p2, v0}, Lio/ktor/utils/io/ByteBufferChannel;->d(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-ne p1, v1, :cond_7

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p1
.end method

.method static synthetic e0(Lio/ktor/utils/io/ByteBufferChannel;JLrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "J",
            "Lrs/c<",
            "-",
            "Lhs/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->h()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->k0(J)Lhs/j;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p3}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 19
    .line 20
    .line 21
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 22
    .line 23
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->f0(JLrs/c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private final f0(JLrs/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Lhs/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->o:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->o:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->l:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lis/a;

    .line 41
    .line 42
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->k:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, Lhs/n;

    .line 45
    .line 46
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->j:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 49
    .line 50
    iget-object v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->i:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Lhs/i;

    .line 53
    .line 54
    iget-object v5, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->h:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Lio/ktor/utils/io/ByteBufferChannel;

    .line 57
    .line 58
    :try_start_0
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance p3, Lhs/i;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {p3, v2, v3, v2}, Lhs/i;-><init>(Lio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    :try_start_1
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    .line 84
    .line 85
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-wide p1, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 89
    .line 90
    invoke-static {p3, v3, v2}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    move-object p2, p3

    .line 95
    move-object v2, v4

    .line 96
    move-object p3, p0

    .line 97
    move-object v4, p2

    .line 98
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    sub-int/2addr v5, v6

    .line 107
    int-to-long v5, v5

    .line 108
    iget-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 109
    .line 110
    cmp-long v5, v5, v7

    .line 111
    .line 112
    if-lez v5, :cond_3

    .line 113
    .line 114
    long-to-int v5, v7

    .line 115
    invoke-virtual {p1, v5}, Lhs/a;->s(I)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const/4 v9, 0x6

    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    move-object v5, p3

    .line 123
    move-object v6, p1

    .line 124
    invoke-static/range {v5 .. v10}, Lio/ktor/utils/io/ByteBufferChannel;->Y(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;IIILjava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iget-wide v6, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 129
    .line 130
    int-to-long v8, v5

    .line 131
    sub-long/2addr v6, v8

    .line 132
    iput-wide v6, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 133
    .line 134
    const-wide/16 v8, 0x0

    .line 135
    .line 136
    cmp-long v5, v6, v8

    .line 137
    .line 138
    if-lez v5, :cond_6

    .line 139
    .line 140
    invoke-virtual {p3}, Lio/ktor/utils/io/ByteBufferChannel;->l()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_6

    .line 145
    .line 146
    iput-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->h:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->i:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->j:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->k:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->l:Ljava/lang/Object;

    .line 155
    .line 156
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->o:I

    .line 157
    .line 158
    invoke-direct {p3, v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->g0(ILrs/c;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-ne v5, v1, :cond_4

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_4
    move-object v11, v5

    .line 166
    move-object v5, p3

    .line 167
    move-object p3, v11

    .line 168
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_5

    .line 175
    .line 176
    move-object p3, v5

    .line 177
    move v5, v3

    .line 178
    goto :goto_3

    .line 179
    :cond_5
    move-object p3, v5

    .line 180
    :cond_6
    const/4 v5, 0x0

    .line 181
    :goto_3
    if-eqz v5, :cond_7

    .line 182
    .line 183
    invoke-static {p2, v3, p1}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 184
    .line 185
    .line 186
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    :try_start_3
    invoke-virtual {p2}, Lhs/n;->k()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3}, Lio/ktor/utils/io/ByteBufferChannel;->h()Ljava/lang/Throwable;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-nez p1, :cond_8

    .line 196
    .line 197
    invoke-virtual {v4}, Lhs/i;->h0()Lhs/j;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :catchall_1
    move-exception p1

    .line 203
    move-object p3, v4

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    throw p1

    .line 206
    :goto_4
    invoke-virtual {p2}, Lhs/n;->k()V

    .line 207
    .line 208
    .line 209
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    :catchall_2
    move-exception p1

    .line 211
    :goto_5
    invoke-virtual {p3}, Lhs/n;->release()V

    .line 212
    .line 213
    .line 214
    throw p1
.end method

.method private final g0(ILrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 6
    .line 7
    iget v0, v0, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p2, p2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 34
    .line 35
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget p2, p2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 42
    .line 43
    if-lt p2, p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->N()Lrs/c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "Read operation is already in progress"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_3
    invoke-static {p2}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 67
    .line 68
    .line 69
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 70
    .line 71
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_4
    if-ne p1, v1, :cond_5

    .line 76
    .line 77
    invoke-direct {p0, v1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->h0(ILrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->i0(ILrs/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method private final h0(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->l:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lio/ktor/utils/io/ByteBufferChannel;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p2

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object v2, p2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 64
    .line 65
    iget v2, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 66
    .line 67
    if-ge v2, p1, :cond_6

    .line 68
    .line 69
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    sget-object v2, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 80
    .line 81
    if-eq p2, v2, :cond_6

    .line 82
    .line 83
    instance-of p2, p2, Lio/ktor/utils/io/internal/f$b;

    .line 84
    .line 85
    if-nez p2, :cond_6

    .line 86
    .line 87
    :cond_3
    :try_start_1
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->h:Ljava/lang/Object;

    .line 88
    .line 89
    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->i:I

    .line 90
    .line 91
    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->l:I

    .line 92
    .line 93
    iget-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel;->i:Lio/ktor/utils/io/internal/a;

    .line 94
    .line 95
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->y0(ILrs/c;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p2, p1}, Lio/ktor/utils/io/internal/a;->g(Lrs/c;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p2, p1, :cond_4

    .line 111
    .line 112
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_1
    move-exception p2

    .line 117
    move-object p1, p0

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    :goto_1
    if-ne p2, v1, :cond_5

    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_5
    :goto_2
    return-object p2

    .line 123
    :goto_3
    const/4 v0, 0x0

    .line 124
    invoke-direct {p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->s0(Lrs/c;)V

    .line 125
    .line 126
    .line 127
    throw p2

    .line 128
    :cond_6
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method private final i0(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->l:I

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
    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->i:I

    .line 40
    .line 41
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object v2, p0

    .line 61
    :cond_3
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p2, p2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 66
    .line 67
    iget p2, p2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 68
    .line 69
    if-lt p2, p1, :cond_4

    .line 70
    .line 71
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_8

    .line 81
    .line 82
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object p2, p2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 93
    .line 94
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget p2, p2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 101
    .line 102
    if-lt p2, p1, :cond_5

    .line 103
    .line 104
    move v3, v4

    .line 105
    :cond_5
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->N()Lrs/c;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-nez p1, :cond_6

    .line 110
    .line 111
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string p2, "Read operation is already in progress"

    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_7
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 129
    .line 130
    .line 131
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 132
    .line 133
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_8
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->h:Ljava/lang/Object;

    .line 138
    .line 139
    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->i:I

    .line 140
    .line 141
    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->l:I

    .line 142
    .line 143
    invoke-direct {v2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->h0(ILrs/c;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-ne p2, v1, :cond_9

    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_9
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-nez p2, :cond_3

    .line 157
    .line 158
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1
.end method

.method private final j0(Lio/ktor/utils/io/internal/f$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->c:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final k0(J)Lhs/j;
    .locals 9

    .line 1
    new-instance v0, Lhs/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v1}, Lhs/i;-><init>(Lio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {v0, v2, v1}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lhs/a;->f()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    sub-int/2addr v3, v4

    .line 21
    int-to-long v3, v3

    .line 22
    cmp-long v3, v3, p1

    .line 23
    .line 24
    if-lez v3, :cond_0

    .line 25
    .line 26
    long-to-int v3, p1

    .line 27
    invoke-virtual {v1, v3}, Lhs/a;->s(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_1
    const/4 v7, 0x6

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v3, p0

    .line 38
    move-object v4, v1

    .line 39
    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/ByteBufferChannel;->Y(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;IIILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-long v3, v3

    .line 44
    sub-long/2addr p1, v3

    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    cmp-long v3, p1, v3

    .line 48
    .line 49
    if-lez v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->l()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    invoke-static {v0, v2, v1}, Lis/f;->d(Lhs/n;ILis/a;)Lis/a;

    .line 58
    .line 59
    .line 60
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lhs/n;->k()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lhs/i;->h0()Lhs/j;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_3

    .line 72
    :goto_2
    invoke-virtual {v0}, Lhs/n;->k()V

    .line 73
    .line 74
    .line 75
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :goto_3
    invoke-virtual {v0}, Lhs/n;->release()V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method private final m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;
    .locals 1

    .line 1
    :cond_0
    invoke-direct {p1}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/c;->c()Lio/ktor/utils/io/ByteBufferChannel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p1, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-object p1
.end method

.method public static final synthetic n(Lio/ktor/utils/io/ByteBufferChannel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->L(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n0()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v3, v2

    .line 6
    check-cast v3, Lio/ktor/utils/io/internal/f;

    .line 7
    .line 8
    move-object v4, v1

    .line 9
    check-cast v4, Lio/ktor/utils/io/internal/f$b;

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    iget-object v1, v4, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 14
    .line 15
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->j()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 19
    .line 20
    .line 21
    move-object v1, v0

    .line 22
    :cond_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/f;->e()Lio/ktor/utils/io/internal/f;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    instance-of v5, v4, Lio/ktor/utils/io/internal/f$b;

    .line 27
    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-ne v5, v3, :cond_2

    .line 35
    .line 36
    iget-object v3, v4, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 37
    .line 38
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->k()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    sget-object v1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 45
    .line 46
    move-object v6, v4

    .line 47
    move-object v4, v1

    .line 48
    move-object v1, v6

    .line 49
    :cond_2
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 50
    .line 51
    invoke-static {v3, p0, v2, v4}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    sget-object v0, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 58
    .line 59
    if-ne v4, v0, :cond_4

    .line 60
    .line 61
    check-cast v1, Lio/ktor/utils/io/internal/f$b;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/f$b;->g()Lio/ktor/utils/io/internal/f$c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    instance-of v1, v4, Lio/ktor/utils/io/internal/f$b;

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    iget-object v1, v4, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 81
    .line 82
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->g()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    iget-object v1, v4, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 89
    .line 90
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->k()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-static {v3, p0, v4, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    iget-object v0, v4, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 103
    .line 104
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/h;->j()V

    .line 105
    .line 106
    .line 107
    check-cast v4, Lio/ktor/utils/io/internal/f$b;

    .line 108
    .line 109
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/f$b;->g()Lio/ktor/utils/io/internal/f$c;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public static final synthetic o(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lio/ktor/utils/io/ByteBufferChannel;)Lrs/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lrs/c;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v0, v2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 33
    .line 34
    iget v2, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 35
    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lrs/c;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    new-instance p1, Lio/ktor/utils/io/ClosedWriteChannelException;

    .line 67
    .line 68
    const-string v1, "Byte channel was closed"

    .line 69
    .line 70
    invoke-direct {p1, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method public static final synthetic q(Lio/ktor/utils/io/ByteBufferChannel;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspensionSize:I

    .line 2
    .line 3
    return p0
.end method

.method private final q0()V
    .locals 3

    .line 1
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lrs/c;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 39
    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic r(Lio/ktor/utils/io/ByteBufferChannel;Lis/a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->b0(Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final r0()V
    .locals 4

    .line 1
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Lio/ktor/utils/io/internal/f$g;

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    instance-of v3, v2, Lio/ktor/utils/io/internal/f$e;

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    sget-object v3, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 31
    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v2, p0, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 47
    .line 48
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 59
    .line 60
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-void
.end method

.method public static final synthetic s(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->c0([BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s0(Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->d0(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lio/ktor/utils/io/ByteBufferChannel;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->f0(JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lio/ktor/utils/io/ByteBufferChannel;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->h0(ILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v0()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lio/ktor/utils/io/internal/f;

    .line 5
    .line 6
    sget-object v2, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :goto_0
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v0}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 39
    .line 40
    .line 41
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 42
    .line 43
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    :goto_1
    return-object v3

    .line 48
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_6

    .line 53
    .line 54
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-static {v2}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 65
    .line 66
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_6
    :goto_2
    iget-object v2, v1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 71
    .line 72
    iget v2, v2, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 73
    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    return-object v3

    .line 77
    :cond_7
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/f;->c()Lio/ktor/utils/io/internal/f;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 82
    .line 83
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/f;->a()Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->e:I

    .line 94
    .line 95
    iget-object v1, v1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 96
    .line 97
    iget v1, v1, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 98
    .line 99
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->U(Ljava/nio/ByteBuffer;II)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method public static final synthetic w(Lio/ktor/utils/io/ByteBufferChannel;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->i0(ILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lio/ktor/utils/io/internal/f$b;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static final synthetic y(Lio/ktor/utils/io/ByteBufferChannel;Lkotlinx/coroutines/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-void
.end method

.method private final y0(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 6
    .line 7
    iget v1, v1, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 8
    .line 9
    if-ge v1, p1, :cond_9

    .line 10
    .line 11
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    sget-object v1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 22
    .line 23
    if-eq v0, v1, :cond_9

    .line 24
    .line 25
    instance-of v0, v0, Lio/ktor/utils/io/internal/f$b;

    .line 26
    .line 27
    if-nez v0, :cond_9

    .line 28
    .line 29
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 68
    .line 69
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v1, v1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 78
    .line 79
    iget v1, v1, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x1

    .line 83
    if-lt v1, p1, :cond_3

    .line 84
    .line 85
    move p1, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move p1, v2

    .line 88
    :goto_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    move v2, v3

    .line 95
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p2, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :cond_5
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->N()Lrs/c;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    .line 123
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 128
    .line 129
    iget v1, v1, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 130
    .line 131
    if-ge v1, p1, :cond_0

    .line 132
    .line 133
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 134
    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    sget-object v1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 144
    .line 145
    if-eq v0, v1, :cond_0

    .line 146
    .line 147
    instance-of v0, v0, Lio/ktor/utils/io/internal/f$b;

    .line 148
    .line 149
    if-nez v0, :cond_0

    .line 150
    .line 151
    :cond_6
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-static {v0, p0, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v3, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 171
    .line 172
    iget v3, v3, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 173
    .line 174
    if-ge v3, p1, :cond_7

    .line 175
    .line 176
    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 177
    .line 178
    if-eqz v3, :cond_a

    .line 179
    .line 180
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_a

    .line 185
    .line 186
    sget-object v3, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 187
    .line 188
    if-eq v2, v3, :cond_7

    .line 189
    .line 190
    instance-of v2, v2, Lio/ktor/utils/io/internal/f$b;

    .line 191
    .line 192
    if-nez v2, :cond_7

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    invoke-static {v0, p0, p2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    const-string p2, "Operation is already in progress"

    .line 205
    .line 206
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_9
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 211
    .line 212
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {p2, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_a
    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    return-object p1
.end method

.method public static final synthetic z(Lio/ktor/utils/io/ByteBufferChannel;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final z0(Lio/ktor/utils/io/internal/c;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->A0(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->K(Lio/ktor/utils/io/internal/c;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lio/ktor/utils/io/ByteBufferChannel;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lrs/c;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "Joining is in progress"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p1, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 45
    .line 46
    .line 47
    return v0
.end method


# virtual methods
.method public final B0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->A0(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->K(Lio/ktor/utils/io/internal/c;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->q0()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_2
    :goto_0
    return v1
.end method

.method public final C0(ILrs/c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->P0(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 24
    .line 25
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspensionSize:I

    .line 33
    .line 34
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/r;

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->k:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-ne p1, p2, :cond_4

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_5
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->j:Lio/ktor/utils/io/internal/a;

    .line 64
    .line 65
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->k:Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/internal/a;->g(Lrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-ne p1, v0, :cond_6

    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-ne p1, p2, :cond_7

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method

.method public G0([BIILrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->H0(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final I(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/c;Lrs/c;)Ljava/lang/Object;
    .locals 27
    .param p1    # Lio/ktor/utils/io/ByteBufferChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/ktor/utils/io/internal/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "J",
            "Lio/ktor/utils/io/internal/c;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    instance-of v4, v3, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;

    .line 15
    .line 16
    iget v5, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;

    .line 29
    .line 30
    invoke-direct {v4, v1, v3}, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->u:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x1

    .line 44
    if-eqz v6, :cond_4

    .line 45
    .line 46
    if-eq v6, v9, :cond_3

    .line 47
    .line 48
    if-eq v6, v8, :cond_2

    .line 49
    .line 50
    if-ne v6, v7, :cond_1

    .line 51
    .line 52
    iget-boolean v0, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->t:Z

    .line 53
    .line 54
    iget-wide v11, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->r:J

    .line 55
    .line 56
    iget-object v2, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->k:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 59
    .line 60
    iget-object v6, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->j:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v6, Lio/ktor/utils/io/internal/c;

    .line 63
    .line 64
    iget-object v13, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->i:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v13, Lio/ktor/utils/io/ByteBufferChannel;

    .line 67
    .line 68
    iget-object v14, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v14, Lio/ktor/utils/io/ByteBufferChannel;

    .line 71
    .line 72
    :try_start_0
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    move v10, v9

    .line 76
    const/4 v1, 0x0

    .line 77
    move v9, v7

    .line 78
    move-object v7, v4

    .line 79
    move-object v4, v6

    .line 80
    move v6, v0

    .line 81
    move-object v0, v5

    .line 82
    move v5, v8

    .line 83
    move-object v8, v2

    .line 84
    move-wide v2, v11

    .line 85
    goto/16 :goto_16

    .line 86
    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto/16 :goto_19

    .line 89
    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 93
    .line 94
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_2
    iget-boolean v0, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->t:Z

    .line 99
    .line 100
    iget-wide v11, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->r:J

    .line 101
    .line 102
    iget-object v2, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->k:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 105
    .line 106
    iget-object v6, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->j:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v6, Lio/ktor/utils/io/internal/c;

    .line 109
    .line 110
    iget-object v13, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->i:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v13, Lio/ktor/utils/io/ByteBufferChannel;

    .line 113
    .line 114
    iget-object v14, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->h:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v14, Lio/ktor/utils/io/ByteBufferChannel;

    .line 117
    .line 118
    :try_start_1
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    move-object v1, v6

    .line 122
    move v6, v0

    .line 123
    move-object v0, v5

    .line 124
    move v5, v8

    .line 125
    goto/16 :goto_12

    .line 126
    .line 127
    :cond_3
    iget-wide v11, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->s:J

    .line 128
    .line 129
    iget-boolean v0, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->t:Z

    .line 130
    .line 131
    iget-wide v13, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->r:J

    .line 132
    .line 133
    iget-object v2, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->q:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    .line 136
    .line 137
    iget-object v6, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->p:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    iget-object v15, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->o:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v15, Lio/ktor/utils/io/internal/h;

    .line 144
    .line 145
    iget-object v7, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->n:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v7, Lio/ktor/utils/io/internal/h;

    .line 148
    .line 149
    iget-object v8, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->m:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v8, Lio/ktor/utils/io/ByteBufferChannel;

    .line 152
    .line 153
    iget-object v10, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->l:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v10, Lio/ktor/utils/io/ByteBufferChannel;

    .line 156
    .line 157
    iget-object v9, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->k:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 160
    .line 161
    move/from16 p1, v0

    .line 162
    .line 163
    iget-object v0, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->j:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Lio/ktor/utils/io/internal/c;

    .line 166
    .line 167
    move-object/from16 p2, v0

    .line 168
    .line 169
    iget-object v0, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->i:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel;

    .line 172
    .line 173
    move-object/from16 p3, v0

    .line 174
    .line 175
    iget-object v0, v4, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->h:Ljava/lang/Object;

    .line 176
    .line 177
    move-object/from16 v16, v0

    .line 178
    .line 179
    check-cast v16, Lio/ktor/utils/io/ByteBufferChannel;

    .line 180
    .line 181
    :try_start_2
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    .line 183
    .line 184
    move-object v3, v2

    .line 185
    move-object/from16 v2, p2

    .line 186
    .line 187
    move-object/from16 v23, v6

    .line 188
    .line 189
    move/from16 v6, p1

    .line 190
    .line 191
    move-object/from16 p1, p3

    .line 192
    .line 193
    move-object/from16 v24, v10

    .line 194
    .line 195
    move-object/from16 v10, v23

    .line 196
    .line 197
    move-wide/from16 v25, v13

    .line 198
    .line 199
    move-object/from16 v14, v24

    .line 200
    .line 201
    move-object/from16 v13, v16

    .line 202
    .line 203
    move-wide/from16 v16, v25

    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :catchall_1
    move-exception v0

    .line 208
    move-object/from16 v14, v16

    .line 209
    .line 210
    goto/16 :goto_17

    .line 211
    .line 212
    :cond_4
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/ByteBufferChannel;->l()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    const-wide/16 v6, 0x0

    .line 220
    .line 221
    if-eqz v3, :cond_8

    .line 222
    .line 223
    if-eqz v2, :cond_6

    .line 224
    .line 225
    invoke-direct {v0, v2}, Lio/ktor/utils/io/ByteBufferChannel;->z0(Lio/ktor/utils/io/internal/c;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_5

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    const-string v2, "Check failed."

    .line 235
    .line 236
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/ByteBufferChannel;->h()Ljava/lang/Throwable;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_7

    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/ByteBufferChannel;->h()Ljava/lang/Throwable;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->a(Ljava/lang/Throwable;)Z

    .line 251
    .line 252
    .line 253
    :cond_7
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    return-object v0

    .line 258
    :cond_8
    if-eqz v2, :cond_9

    .line 259
    .line 260
    invoke-direct {v0, v2}, Lio/ktor/utils/io/ByteBufferChannel;->z0(Lio/ktor/utils/io/internal/c;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_9

    .line 265
    .line 266
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    return-object v0

    .line 271
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    :try_start_3
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    .line 276
    .line 277
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    .line 278
    .line 279
    .line 280
    move-object v14, v1

    .line 281
    move-object v7, v4

    .line 282
    move-object v8, v6

    .line 283
    move-object v4, v2

    .line 284
    move v6, v3

    .line 285
    move-wide/from16 v2, p2

    .line 286
    .line 287
    :goto_2
    :try_start_4
    iget-wide v9, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 288
    .line 289
    cmp-long v9, v9, v2

    .line 290
    .line 291
    if-gez v9, :cond_27

    .line 292
    .line 293
    iget-object v9, v14, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 294
    .line 295
    if-eqz v9, :cond_a

    .line 296
    .line 297
    invoke-direct {v14, v14, v9}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    if-nez v9, :cond_b

    .line 302
    .line 303
    :cond_a
    move-object v9, v14

    .line 304
    :cond_b
    invoke-virtual {v9}, Lio/ktor/utils/io/ByteBufferChannel;->w0()Ljava/nio/ByteBuffer;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    if-nez v10, :cond_c

    .line 309
    .line 310
    move-object v1, v4

    .line 311
    move-wide v3, v2

    .line 312
    move-object v2, v0

    .line 313
    move-object v0, v5

    .line 314
    goto/16 :goto_11

    .line 315
    .line 316
    :cond_c
    invoke-direct {v9}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    iget-object v11, v11, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 321
    .line 322
    invoke-virtual {v9}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 323
    .line 324
    .line 325
    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    :try_start_5
    invoke-direct {v9}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 327
    .line 328
    .line 329
    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    .line 330
    if-nez v15, :cond_23

    .line 331
    .line 332
    move-object/from16 v16, v5

    .line 333
    .line 334
    move/from16 p3, v6

    .line 335
    .line 336
    move-object v15, v11

    .line 337
    move-wide/from16 p1, v12

    .line 338
    .line 339
    move-wide v12, v2

    .line 340
    move-object v2, v9

    .line 341
    move-object v3, v14

    .line 342
    move-object v9, v8

    .line 343
    move-object v8, v2

    .line 344
    :goto_3
    :try_start_6
    iget-wide v5, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 345
    .line 346
    cmp-long v5, v5, v12

    .line 347
    .line 348
    if-gez v5, :cond_17

    .line 349
    .line 350
    iget v5, v15, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 351
    .line 352
    if-nez v5, :cond_f

    .line 353
    .line 354
    iput-object v3, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->h:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v0, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->i:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v4, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->j:Ljava/lang/Object;

    .line 359
    .line 360
    iput-object v9, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->k:Ljava/lang/Object;

    .line 361
    .line 362
    iput-object v14, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->l:Ljava/lang/Object;

    .line 363
    .line 364
    iput-object v8, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->m:Ljava/lang/Object;

    .line 365
    .line 366
    iput-object v11, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->n:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v15, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->o:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v10, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->p:Ljava/lang/Object;

    .line 371
    .line 372
    iput-object v2, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->q:Ljava/lang/Object;

    .line 373
    .line 374
    iput-wide v12, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->r:J

    .line 375
    .line 376
    move/from16 v6, p3

    .line 377
    .line 378
    iput-boolean v6, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->t:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 379
    .line 380
    move-object/from16 p4, v3

    .line 381
    .line 382
    move-object/from16 p3, v4

    .line 383
    .line 384
    move-wide/from16 v3, p1

    .line 385
    .line 386
    :try_start_7
    iput-wide v3, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->s:J

    .line 387
    .line 388
    const/4 v5, 0x1

    .line 389
    iput v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 390
    .line 391
    move-object/from16 p1, v0

    .line 392
    .line 393
    invoke-virtual {v2, v5, v7}, Lio/ktor/utils/io/ByteBufferChannel;->C0(ILrs/c;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 397
    move-object/from16 v5, v16

    .line 398
    .line 399
    if-ne v0, v5, :cond_d

    .line 400
    .line 401
    return-object v5

    .line 402
    :cond_d
    move-wide/from16 v16, v12

    .line 403
    .line 404
    move-object/from16 v13, p4

    .line 405
    .line 406
    move-object/from16 v23, v2

    .line 407
    .line 408
    move-object/from16 v2, p3

    .line 409
    .line 410
    move-wide/from16 v24, v3

    .line 411
    .line 412
    move-object/from16 v3, v23

    .line 413
    .line 414
    move-object v4, v7

    .line 415
    move-object v7, v11

    .line 416
    move-wide/from16 v11, v24

    .line 417
    .line 418
    :goto_4
    :try_start_8
    iget-object v0, v3, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 419
    .line 420
    if-nez v0, :cond_e

    .line 421
    .line 422
    iget v0, v15, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 423
    .line 424
    move-object v1, v15

    .line 425
    move-object v15, v14

    .line 426
    move-object v14, v7

    .line 427
    move-object v7, v4

    .line 428
    move-object/from16 v23, v2

    .line 429
    .line 430
    move-object/from16 v2, p1

    .line 431
    .line 432
    move-object/from16 p1, v23

    .line 433
    .line 434
    move-object/from16 v24, v5

    .line 435
    .line 436
    move v5, v0

    .line 437
    move-object/from16 v0, v24

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :catchall_2
    move-exception v0

    .line 441
    move-object v10, v14

    .line 442
    :goto_5
    move-object v14, v13

    .line 443
    goto/16 :goto_17

    .line 444
    .line 445
    :cond_e
    move-object v0, v5

    .line 446
    move-object v1, v13

    .line 447
    move-wide v12, v11

    .line 448
    move-object v11, v7

    .line 449
    move-object v7, v4

    .line 450
    move-object v4, v2

    .line 451
    move-object/from16 v2, p1

    .line 452
    .line 453
    goto/16 :goto_f

    .line 454
    .line 455
    :catchall_3
    move-exception v0

    .line 456
    :goto_6
    move-object v7, v11

    .line 457
    move-object v10, v14

    .line 458
    move-object/from16 v14, p4

    .line 459
    .line 460
    move-wide v11, v3

    .line 461
    goto/16 :goto_17

    .line 462
    .line 463
    :catchall_4
    move-exception v0

    .line 464
    move-object/from16 p4, v3

    .line 465
    .line 466
    move-wide/from16 v3, p1

    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_f
    move/from16 v6, p3

    .line 470
    .line 471
    move-object/from16 p4, v3

    .line 472
    .line 473
    move-object/from16 p3, v4

    .line 474
    .line 475
    move-wide/from16 v3, p1

    .line 476
    .line 477
    move-object/from16 p1, v0

    .line 478
    .line 479
    move-object/from16 v0, v16

    .line 480
    .line 481
    move-wide/from16 v16, v12

    .line 482
    .line 483
    move-object v1, v15

    .line 484
    move-object/from16 v13, p4

    .line 485
    .line 486
    move-object v15, v14

    .line 487
    move-object v14, v11

    .line 488
    move-wide v11, v3

    .line 489
    move-object v3, v2

    .line 490
    move-object/from16 v2, p1

    .line 491
    .line 492
    move-object/from16 p1, p3

    .line 493
    .line 494
    :goto_7
    :try_start_9
    iget v4, v3, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 495
    .line 496
    invoke-direct {v3, v10, v4, v5}, Lio/ktor/utils/io/ByteBufferChannel;->U(Ljava/nio/ByteBuffer;II)V

    .line 497
    .line 498
    .line 499
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 500
    .line 501
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 502
    .line 503
    .line 504
    move-object/from16 p2, v7

    .line 505
    .line 506
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->v0()Ljava/nio/ByteBuffer;

    .line 507
    .line 508
    .line 509
    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 510
    if-nez v7, :cond_10

    .line 511
    .line 512
    move/from16 v22, v5

    .line 513
    .line 514
    move/from16 v21, v6

    .line 515
    .line 516
    move-object/from16 p3, v8

    .line 517
    .line 518
    move-wide/from16 v18, v11

    .line 519
    .line 520
    :goto_8
    move-object/from16 p4, v13

    .line 521
    .line 522
    move-object/from16 v20, v14

    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_10
    move-object/from16 p3, v8

    .line 526
    .line 527
    :try_start_a
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    iget-object v8, v8, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 532
    .line 533
    move-wide/from16 v18, v11

    .line 534
    .line 535
    :try_start_b
    iget v11, v8, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 536
    .line 537
    if-nez v11, :cond_11

    .line 538
    .line 539
    :try_start_c
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 543
    .line 544
    .line 545
    move/from16 v22, v5

    .line 546
    .line 547
    move/from16 v21, v6

    .line 548
    .line 549
    goto :goto_8

    .line 550
    :catchall_5
    move-exception v0

    .line 551
    move-object/from16 v8, p3

    .line 552
    .line 553
    move-object v7, v14

    .line 554
    move-object v10, v15

    .line 555
    move-wide/from16 v11, v18

    .line 556
    .line 557
    goto :goto_5

    .line 558
    :cond_11
    :try_start_d
    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    .line 559
    .line 560
    .line 561
    move-result v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 562
    int-to-long v11, v11

    .line 563
    move-object/from16 p4, v13

    .line 564
    .line 565
    :try_start_e
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    .line 566
    .line 567
    .line 568
    move-result v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 569
    move-object/from16 v20, v14

    .line 570
    .line 571
    int-to-long v13, v13

    .line 572
    move/from16 v22, v5

    .line 573
    .line 574
    move/from16 v21, v6

    .line 575
    .line 576
    :try_start_f
    iget-wide v5, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 577
    .line 578
    sub-long v5, v16, v5

    .line 579
    .line 580
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 581
    .line 582
    .line 583
    move-result-wide v5

    .line 584
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 585
    .line 586
    .line 587
    move-result-wide v5

    .line 588
    long-to-int v5, v5

    .line 589
    invoke-virtual {v1, v5}, Lio/ktor/utils/io/internal/h;->n(I)I

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    if-gtz v5, :cond_12

    .line 594
    .line 595
    goto :goto_9

    .line 596
    :cond_12
    invoke-virtual {v8, v5}, Lio/ktor/utils/io/internal/h;->m(I)Z

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    if-eqz v6, :cond_16

    .line 601
    .line 602
    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    add-int/2addr v6, v5

    .line 607
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 611
    .line 612
    .line 613
    iput v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 614
    .line 615
    invoke-direct {v2, v7, v8, v5}, Lio/ktor/utils/io/ByteBufferChannel;->F(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 616
    .line 617
    .line 618
    :goto_9
    :try_start_10
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 622
    .line 623
    .line 624
    :goto_a
    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 625
    .line 626
    if-gtz v5, :cond_13

    .line 627
    .line 628
    move-object/from16 v4, p1

    .line 629
    .line 630
    move-object/from16 v7, p2

    .line 631
    .line 632
    move-object/from16 v8, p3

    .line 633
    .line 634
    move-object/from16 v1, p4

    .line 635
    .line 636
    move-object v14, v15

    .line 637
    move-wide/from16 v12, v18

    .line 638
    .line 639
    move-object/from16 v11, v20

    .line 640
    .line 641
    move/from16 v6, v21

    .line 642
    .line 643
    goto/16 :goto_f

    .line 644
    .line 645
    :cond_13
    invoke-direct {v3, v10, v1, v5}, Lio/ktor/utils/io/ByteBufferChannel;->G(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/h;I)V

    .line 646
    .line 647
    .line 648
    iget-wide v5, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 649
    .line 650
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 651
    .line 652
    int-to-long v7, v4

    .line 653
    add-long/2addr v5, v7

    .line 654
    iput-wide v5, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 655
    .line 656
    sub-int v5, v22, v4

    .line 657
    .line 658
    if-eqz v5, :cond_14

    .line 659
    .line 660
    if-eqz v21, :cond_15

    .line 661
    .line 662
    :cond_14
    invoke-virtual {v3}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 663
    .line 664
    .line 665
    :cond_15
    move-object/from16 v4, p1

    .line 666
    .line 667
    move-object/from16 v7, p2

    .line 668
    .line 669
    move-object/from16 v8, p3

    .line 670
    .line 671
    move-object v14, v15

    .line 672
    move-wide/from16 v12, v16

    .line 673
    .line 674
    move-wide/from16 p1, v18

    .line 675
    .line 676
    move-object/from16 v11, v20

    .line 677
    .line 678
    move/from16 p3, v21

    .line 679
    .line 680
    move-object/from16 v16, v0

    .line 681
    .line 682
    move-object v15, v1

    .line 683
    move-object v0, v2

    .line 684
    move-object v2, v3

    .line 685
    move-object/from16 v1, p0

    .line 686
    .line 687
    move-object/from16 v3, p4

    .line 688
    .line 689
    goto/16 :goto_3

    .line 690
    .line 691
    :catchall_6
    move-exception v0

    .line 692
    move-object/from16 v8, p3

    .line 693
    .line 694
    move-object/from16 v14, p4

    .line 695
    .line 696
    move-object v10, v15

    .line 697
    move-wide/from16 v11, v18

    .line 698
    .line 699
    :goto_b
    move-object/from16 v7, v20

    .line 700
    .line 701
    goto/16 :goto_17

    .line 702
    .line 703
    :catchall_7
    move-exception v0

    .line 704
    goto :goto_d

    .line 705
    :cond_16
    :try_start_11
    new-instance v0, Ljava/lang/AssertionError;

    .line 706
    .line 707
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 708
    .line 709
    .line 710
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 711
    :catchall_8
    move-exception v0

    .line 712
    :goto_c
    move-object/from16 v20, v14

    .line 713
    .line 714
    goto :goto_d

    .line 715
    :catchall_9
    move-exception v0

    .line 716
    move-object/from16 p4, v13

    .line 717
    .line 718
    goto :goto_c

    .line 719
    :goto_d
    :try_start_12
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->n0()V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 723
    .line 724
    .line 725
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 726
    :catchall_a
    move-exception v0

    .line 727
    move-wide/from16 v18, v11

    .line 728
    .line 729
    move-object/from16 p4, v13

    .line 730
    .line 731
    move-object/from16 v20, v14

    .line 732
    .line 733
    move-object/from16 v8, p3

    .line 734
    .line 735
    :goto_e
    move-object/from16 v14, p4

    .line 736
    .line 737
    move-object v10, v15

    .line 738
    goto :goto_b

    .line 739
    :catchall_b
    move-exception v0

    .line 740
    move-object/from16 p3, v8

    .line 741
    .line 742
    move-wide/from16 v18, v11

    .line 743
    .line 744
    move-object/from16 p4, v13

    .line 745
    .line 746
    move-object/from16 v20, v14

    .line 747
    .line 748
    goto :goto_e

    .line 749
    :cond_17
    move/from16 v6, p3

    .line 750
    .line 751
    move-object/from16 p4, v3

    .line 752
    .line 753
    move-object/from16 p3, v4

    .line 754
    .line 755
    move-wide/from16 v3, p1

    .line 756
    .line 757
    move-object/from16 p1, v0

    .line 758
    .line 759
    move-object/from16 v0, v16

    .line 760
    .line 761
    move-object/from16 v2, p1

    .line 762
    .line 763
    move-object/from16 v1, p4

    .line 764
    .line 765
    move-wide/from16 v16, v12

    .line 766
    .line 767
    move-wide v12, v3

    .line 768
    move-object/from16 v4, p3

    .line 769
    .line 770
    :goto_f
    :try_start_13
    invoke-virtual {v11}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    if-nez v3, :cond_18

    .line 775
    .line 776
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 777
    .line 778
    .line 779
    move-result v3

    .line 780
    if-eqz v3, :cond_19

    .line 781
    .line 782
    goto :goto_10

    .line 783
    :catchall_c
    move-exception v0

    .line 784
    move-object v14, v1

    .line 785
    goto/16 :goto_19

    .line 786
    .line 787
    :cond_18
    :goto_10
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 788
    .line 789
    .line 790
    :cond_19
    if-eq v8, v14, :cond_1a

    .line 791
    .line 792
    invoke-virtual {v14}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 793
    .line 794
    .line 795
    move-result-wide v10

    .line 796
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 797
    .line 798
    .line 799
    move-result-wide v18

    .line 800
    sub-long v18, v18, v12

    .line 801
    .line 802
    add-long v10, v10, v18

    .line 803
    .line 804
    invoke-virtual {v14, v10, v11}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 805
    .line 806
    .line 807
    :cond_1a
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 811
    .line 812
    .line 813
    move-object v14, v1

    .line 814
    move-object v1, v4

    .line 815
    move-object v8, v9

    .line 816
    move-wide/from16 v3, v16

    .line 817
    .line 818
    :goto_11
    if-eqz v1, :cond_1c

    .line 819
    .line 820
    :try_start_14
    invoke-direct {v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->z0(Lio/ktor/utils/io/internal/c;)Z

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    if-eqz v5, :cond_1b

    .line 825
    .line 826
    goto/16 :goto_18

    .line 827
    .line 828
    :cond_1b
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 829
    .line 830
    .line 831
    move-result-object v5

    .line 832
    iget-object v5, v5, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 833
    .line 834
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_1c

    .line 839
    .line 840
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->r0()V

    .line 841
    .line 842
    .line 843
    move-object v5, v0

    .line 844
    move-object v0, v2

    .line 845
    move-wide v2, v3

    .line 846
    move-object v4, v1

    .line 847
    move-object/from16 v1, p0

    .line 848
    .line 849
    goto/16 :goto_2

    .line 850
    .line 851
    :cond_1c
    iget-wide v9, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 852
    .line 853
    cmp-long v5, v9, v3

    .line 854
    .line 855
    if-gez v5, :cond_27

    .line 856
    .line 857
    invoke-virtual {v14}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteBufferChannel;->c()I

    .line 861
    .line 862
    .line 863
    move-result v5

    .line 864
    if-nez v5, :cond_21

    .line 865
    .line 866
    iput-object v14, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->h:Ljava/lang/Object;

    .line 867
    .line 868
    iput-object v2, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->i:Ljava/lang/Object;

    .line 869
    .line 870
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->j:Ljava/lang/Object;

    .line 871
    .line 872
    iput-object v8, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->k:Ljava/lang/Object;

    .line 873
    .line 874
    const/4 v5, 0x0

    .line 875
    iput-object v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->l:Ljava/lang/Object;

    .line 876
    .line 877
    iput-object v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->m:Ljava/lang/Object;

    .line 878
    .line 879
    iput-object v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->n:Ljava/lang/Object;

    .line 880
    .line 881
    iput-object v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->o:Ljava/lang/Object;

    .line 882
    .line 883
    iput-object v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->p:Ljava/lang/Object;

    .line 884
    .line 885
    iput-object v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->q:Ljava/lang/Object;

    .line 886
    .line 887
    iput-wide v3, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->r:J

    .line 888
    .line 889
    iput-boolean v6, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->t:Z

    .line 890
    .line 891
    const/4 v5, 0x2

    .line 892
    iput v5, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 893
    .line 894
    const/4 v9, 0x1

    .line 895
    invoke-direct {v2, v9, v7}, Lio/ktor/utils/io/ByteBufferChannel;->h0(ILrs/c;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v10

    .line 899
    if-ne v10, v0, :cond_1d

    .line 900
    .line 901
    return-object v0

    .line 902
    :cond_1d
    move-object v13, v2

    .line 903
    move-wide v11, v3

    .line 904
    move-object v4, v7

    .line 905
    move-object v2, v8

    .line 906
    move-object v3, v10

    .line 907
    :goto_12
    check-cast v3, Ljava/lang/Boolean;

    .line 908
    .line 909
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    if-eqz v3, :cond_1e

    .line 914
    .line 915
    if-eqz v1, :cond_1f

    .line 916
    .line 917
    invoke-direct {v13, v1}, Lio/ktor/utils/io/ByteBufferChannel;->z0(Lio/ktor/utils/io/internal/c;)Z

    .line 918
    .line 919
    .line 920
    move-result v3

    .line 921
    if-eqz v3, :cond_1f

    .line 922
    .line 923
    goto :goto_14

    .line 924
    :cond_1e
    if-eqz v1, :cond_20

    .line 925
    .line 926
    invoke-direct {v13, v1}, Lio/ktor/utils/io/ByteBufferChannel;->z0(Lio/ktor/utils/io/internal/c;)Z

    .line 927
    .line 928
    .line 929
    move-result v3

    .line 930
    if-eqz v3, :cond_1f

    .line 931
    .line 932
    goto :goto_14

    .line 933
    :cond_1f
    move-object v8, v2

    .line 934
    move-object v7, v4

    .line 935
    move-wide v2, v11

    .line 936
    :goto_13
    move-object v4, v1

    .line 937
    goto :goto_15

    .line 938
    :cond_20
    :goto_14
    move-object v8, v2

    .line 939
    goto/16 :goto_18

    .line 940
    .line 941
    :cond_21
    const/4 v5, 0x2

    .line 942
    move-object v13, v2

    .line 943
    move-wide v2, v3

    .line 944
    goto :goto_13

    .line 945
    :goto_15
    iget-object v1, v14, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 946
    .line 947
    if-eqz v1, :cond_22

    .line 948
    .line 949
    iput-object v14, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->h:Ljava/lang/Object;

    .line 950
    .line 951
    iput-object v13, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->i:Ljava/lang/Object;

    .line 952
    .line 953
    iput-object v4, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->j:Ljava/lang/Object;

    .line 954
    .line 955
    iput-object v8, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->k:Ljava/lang/Object;

    .line 956
    .line 957
    const/4 v1, 0x0

    .line 958
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->l:Ljava/lang/Object;

    .line 959
    .line 960
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->m:Ljava/lang/Object;

    .line 961
    .line 962
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->n:Ljava/lang/Object;

    .line 963
    .line 964
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->o:Ljava/lang/Object;

    .line 965
    .line 966
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->p:Ljava/lang/Object;

    .line 967
    .line 968
    iput-object v1, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->q:Ljava/lang/Object;

    .line 969
    .line 970
    iput-wide v2, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->r:J

    .line 971
    .line 972
    iput-boolean v6, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->t:Z

    .line 973
    .line 974
    const/4 v9, 0x3

    .line 975
    iput v9, v7, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 976
    .line 977
    const/4 v10, 0x1

    .line 978
    invoke-virtual {v14, v10, v7}, Lio/ktor/utils/io/ByteBufferChannel;->C0(ILrs/c;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 982
    if-ne v11, v0, :cond_22

    .line 983
    .line 984
    return-object v0

    .line 985
    :cond_22
    :goto_16
    move-object/from16 v1, p0

    .line 986
    .line 987
    move-object v5, v0

    .line 988
    move-object v0, v13

    .line 989
    goto/16 :goto_2

    .line 990
    .line 991
    :cond_23
    :try_start_15
    invoke-virtual {v15}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-static {v0}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 996
    .line 997
    .line 998
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 999
    .line 1000
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .line 1004
    :catchall_d
    move-exception v0

    .line 1005
    move-object v8, v9

    .line 1006
    move-object v7, v11

    .line 1007
    move-wide v11, v12

    .line 1008
    move-object v10, v14

    .line 1009
    :goto_17
    :try_start_16
    invoke-virtual {v7}, Lio/ktor/utils/io/internal/h;->h()Z

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    if-nez v1, :cond_24

    .line 1014
    .line 1015
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->g()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-eqz v1, :cond_25

    .line 1020
    .line 1021
    :cond_24
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 1022
    .line 1023
    .line 1024
    :cond_25
    if-eq v8, v10, :cond_26

    .line 1025
    .line 1026
    invoke-virtual {v10}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 1027
    .line 1028
    .line 1029
    move-result-wide v1

    .line 1030
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->Q()J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v3

    .line 1034
    sub-long/2addr v3, v11

    .line 1035
    add-long/2addr v1, v3

    .line 1036
    invoke-virtual {v10, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->u0(J)V

    .line 1037
    .line 1038
    .line 1039
    :cond_26
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v8}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 1043
    .line 1044
    .line 1045
    throw v0

    .line 1046
    :cond_27
    :goto_18
    if-eqz v6, :cond_28

    .line 1047
    .line 1048
    invoke-virtual {v14}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 1049
    .line 1050
    .line 1051
    :cond_28
    iget-wide v0, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1052
    .line 1053
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1057
    return-object v0

    .line 1058
    :catchall_e
    move-exception v0

    .line 1059
    move-object/from16 v14, p0

    .line 1060
    .line 1061
    :goto_19
    invoke-virtual {v14, v0}, Lio/ktor/utils/io/ByteBufferChannel;->a(Ljava/lang/Throwable;)Z

    .line 1062
    .line 1063
    .line 1064
    throw v0
.end method

.method public final J()Lio/ktor/utils/io/internal/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public P()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesRead:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public Q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesWritten:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public S()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    sget-object v0, Lio/ktor/utils/io/internal/b;->b:Lio/ktor/utils/io/internal/b$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b$a;->a()Lio/ktor/utils/io/internal/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Lio/ktor/utils/io/internal/b;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lio/ktor/utils/io/internal/b;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v2, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 28
    .line 29
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 30
    .line 31
    .line 32
    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v2, p0, v3, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 47
    .line 48
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 56
    .line 57
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/h;->g()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->p0(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v1, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 76
    .line 77
    if-ne v0, v1, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->K(Lio/ktor/utils/io/internal/c;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 87
    if-eqz p1, :cond_7

    .line 88
    .line 89
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/r;

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-static {v1, v3, v0, v3}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_6
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->i:Lio/ktor/utils/io/internal/a;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/a;->d(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->j:Lio/ktor/utils/io/internal/a;

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/a;->d(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return v0

    .line 107
    :cond_7
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->j:Lio/ktor/utils/io/internal/a;

    .line 108
    .line 109
    new-instance v1, Lio/ktor/utils/io/ClosedWriteChannelException;

    .line 110
    .line 111
    const-string v2, "Byte channel was closed"

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/a;->d(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->i:Lio/ktor/utils/io/internal/a;

    .line 120
    .line 121
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object v1, v1, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 126
    .line 127
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/h;->e()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/a;->c(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return v0
.end method

.method public b([BIILrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
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
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->K0(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 6
    .line 7
    iget v0, v0, Lio/ktor/utils/io/internal/h;->_availableForRead$internal:I

    .line 8
    .line 9
    return v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v0, "Channel has been cancelled"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->a(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public d(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;",
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
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->V(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e([BIILrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->a0(Lio/ktor/utils/io/ByteBufferChannel;[BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Lis/a;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lis/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->Z(Lio/ktor/utils/io/ByteBufferChannel;Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public flush()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->L(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->b()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public i(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
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
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->J0(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j(Lkotlinx/coroutines/r;)V
    .locals 9
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, "job"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/r;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/r;

    .line 16
    .line 17
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;

    .line 18
    .line 19
    invoke-direct {v6, p0}, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v3, p1

    .line 27
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/r$a;->e(Lkotlinx/coroutines/r;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lgt/s0;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public k(JLrs/c;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Lhs/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->e0(Lio/ktor/utils/io/ByteBufferChannel;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final l0()Lio/ktor/utils/io/ByteBufferChannel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->m0(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/c;)Lio/ktor/utils/io/ByteBufferChannel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    :cond_1
    return-object v0
.end method

.method public m(Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhs/a;",
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
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->I0(Lio/ktor/utils/io/ByteBufferChannel;Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final o0()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v2, v1

    .line 5
    check-cast v2, Lio/ktor/utils/io/internal/f;

    .line 6
    .line 7
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/f;->f()Lio/ktor/utils/io/internal/f;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    instance-of v3, v2, Lio/ktor/utils/io/internal/f$b;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget-object v3, v2, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 16
    .line 17
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/h;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    sget-object v0, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 24
    .line 25
    move-object v4, v2

    .line 26
    move-object v2, v0

    .line 27
    move-object v0, v4

    .line 28
    :cond_1
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 29
    .line 30
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    sget-object v1, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 37
    .line 38
    if-ne v2, v1, :cond_2

    .line 39
    .line 40
    check-cast v0, Lio/ktor/utils/io/internal/f$b;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/f$b;->g()Lio/ktor/utils/io/internal/f$c;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public t0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesRead:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ByteBufferChannel("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->O()Lio/ktor/utils/io/internal/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x29

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public u0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesWritten:J

    .line 2
    .line 3
    return-void
.end method

.method public final w0()Ljava/nio/ByteBuffer;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->R()Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v0, v1

    .line 9
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lio/ktor/utils/io/internal/f;

    .line 13
    .line 14
    iget-object v4, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-object v1

    .line 24
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_4

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 47
    .line 48
    .line 49
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 50
    .line 51
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_4
    sget-object v4, Lio/ktor/utils/io/internal/f$a;->c:Lio/ktor/utils/io/internal/f$a;

    .line 56
    .line 57
    if-ne v3, v4, :cond_6

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->T()Lio/ktor/utils/io/internal/f$c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/f$c;->l()Lio/ktor/utils/io/internal/f$g;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_0

    .line 70
    :cond_6
    sget-object v5, Lio/ktor/utils/io/internal/f$f;->c:Lio/ktor/utils/io/internal/f$f;

    .line 71
    .line 72
    if-ne v3, v5, :cond_9

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 77
    .line 78
    .line 79
    :cond_7
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->joining:Lio/ktor/utils/io/internal/c;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_8
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 96
    .line 97
    .line 98
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 99
    .line 100
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_9
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/f;->d()Lio/ktor/utils/io/internal/f;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    :goto_0
    sget-object v6, Lio/ktor/utils/io/ByteBufferChannel;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 109
    .line 110
    invoke-static {v6, p0, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-nez v2, :cond_c

    .line 121
    .line 122
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/f;->b()Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v0, :cond_b

    .line 127
    .line 128
    if-nez v3, :cond_a

    .line 129
    .line 130
    const-string v3, "old"

    .line 131
    .line 132
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_a
    move-object v1, v3

    .line 137
    :goto_1
    if-eq v1, v4, :cond_b

    .line 138
    .line 139
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->j0(Lio/ktor/utils/io/internal/f$c;)V

    .line 140
    .line 141
    .line 142
    :cond_b
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->f:I

    .line 143
    .line 144
    iget-object v1, v5, Lio/ktor/utils/io/internal/f;->b:Lio/ktor/utils/io/internal/h;

    .line 145
    .line 146
    iget v1, v1, Lio/ktor/utils/io/internal/h;->_availableForWrite$internal:I

    .line 147
    .line 148
    invoke-direct {p0, v2, v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->U(Ljava/nio/ByteBuffer;II)V

    .line 149
    .line 150
    .line 151
    return-object v2

    .line 152
    :cond_c
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->o0()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->B0()Z

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->M()Lio/ktor/utils/io/internal/b;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 170
    .line 171
    .line 172
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 173
    .line 174
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v3, "Write operation is already in progress: "

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v1
.end method
