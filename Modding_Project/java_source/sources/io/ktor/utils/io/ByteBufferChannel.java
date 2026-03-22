package io.ktor.utils.io;

import io.ktor.utils.io.internal.f;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteBufferChannel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n+ 2 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 8 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 9 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,2411:1\n2110#1,2:2436\n459#1,4:2443\n466#1,2:2448\n464#1:2450\n459#1,4:2451\n466#1,2:2456\n464#1:2458\n459#1,4:2463\n466#1,2:2468\n464#1:2470\n459#1,4:2472\n466#1,2:2477\n464#1:2479\n849#1,4:2481\n459#1,4:2485\n466#1,2:2490\n464#1:2492\n853#1,15:2493\n849#1,4:2508\n459#1,4:2512\n466#1,2:2517\n464#1:2519\n853#1,15:2520\n849#1,4:2535\n459#1,4:2539\n466#1,2:2544\n464#1:2546\n853#1,15:2547\n849#1,4:2562\n459#1,4:2566\n466#1,2:2571\n464#1:2573\n853#1,15:2574\n849#1,4:2589\n459#1,4:2593\n466#1,2:2598\n464#1:2600\n853#1,15:2601\n849#1,4:2616\n459#1,4:2620\n466#1,2:2625\n464#1:2627\n853#1,15:2628\n459#1,4:2643\n466#1,2:2648\n464#1:2650\n964#1:2651\n966#1:2653\n1036#1,7:2654\n929#1,2:2661\n1043#1,2:2663\n931#1:2665\n1045#1:2666\n967#1,76:2667\n929#1,2:2743\n1043#1,2:2745\n931#1:2747\n1045#1:2748\n1030#1,3:2749\n979#1,32:2752\n1033#1:2784\n972#1:2785\n964#1:2786\n966#1:2788\n1036#1,7:2789\n929#1,2:2796\n1043#1,2:2798\n931#1:2800\n1045#1:2801\n967#1,76:2802\n929#1,2:2878\n1043#1,2:2880\n931#1:2882\n1045#1:2883\n1030#1,3:2884\n979#1,32:2887\n1033#1:2919\n972#1:2920\n964#1:2921\n966#1:2923\n1036#1,7:2924\n929#1,2:2931\n1043#1,2:2933\n931#1:2935\n1045#1:2936\n967#1,76:2937\n929#1,2:3013\n1043#1,2:3015\n931#1:3017\n1045#1:3018\n1030#1,3:3019\n979#1,32:3022\n1033#1:3054\n972#1:3055\n964#1:3056\n966#1:3058\n1036#1,7:3059\n929#1,2:3066\n1043#1,2:3068\n931#1:3070\n1045#1:3071\n967#1,76:3072\n929#1,2:3148\n1043#1,2:3150\n931#1:3152\n1045#1:3153\n1030#1,3:3154\n979#1,32:3157\n1033#1:3189\n972#1:3190\n1036#1,7:3191\n929#1,2:3198\n1043#1,2:3200\n931#1:3202\n1045#1:3203\n979#1,32:3204\n1019#1,24:3236\n929#1,2:3260\n1043#1,2:3262\n931#1:3264\n1045#1:3265\n1030#1,3:3266\n979#1,32:3269\n1033#1:3301\n993#1,18:3302\n1036#1,7:3320\n929#1,2:3327\n1043#1,2:3329\n931#1:3331\n1045#1:3332\n979#1,32:3333\n929#1,3:3365\n440#1:3370\n441#1,7:3372\n459#1,4:3381\n466#1,2:3386\n464#1:3388\n449#1,8:3389\n440#1:3397\n441#1,7:3399\n449#1,8:3407\n440#1:3415\n441#1,7:3417\n449#1,8:3426\n440#1:3434\n441#1,7:3436\n449#1,8:3444\n440#1:3452\n441#1,16:3454\n440#1:3470\n441#1,16:3472\n440#1:3488\n441#1,16:3490\n459#1,4:3506\n466#1,2:3511\n464#1:3513\n459#1,4:3515\n466#1,2:3520\n464#1:3522\n459#1,4:3523\n466#1,2:3528\n464#1:3530\n440#1:3533\n441#1,16:3535\n459#1,4:3551\n466#1,2:3556\n464#1:3558\n459#1,4:3559\n466#1,2:3564\n464#1:3566\n459#1,4:3569\n466#1,2:3574\n464#1:3576\n2197#1,3:3628\n2201#1,3:3632\n2341#1,3:3636\n2345#1:3640\n2197#1,3:3641\n2201#1,3:3645\n2346#1,5:3648\n2197#1,7:3653\n2197#1,3:3660\n2201#1,3:3664\n2341#1,3:3679\n2345#1,6:3683\n12#2:2412\n18#2:2413\n18#2:2415\n12#2:2416\n18#2:2421\n12#2:2429\n12#2:2431\n12#2:2442\n12#2:2447\n12#2:2455\n12#2:2461\n12#2:2467\n12#2:2476\n12#2:2489\n12#2:2516\n12#2:2543\n12#2:2570\n12#2:2597\n12#2:2624\n12#2:2647\n18#2:3379\n18#2:3380\n12#2:3385\n18#2:3406\n18#2:3425\n18#2:3443\n12#2:3510\n12#2:3514\n12#2:3519\n12#2:3527\n12#2:3555\n12#2:3563\n12#2:3567\n12#2:3568\n12#2:3573\n12#2:3577\n12#2:3622\n12#2:3623\n12#2:3624\n12#2:3625\n12#2:3626\n12#2:3627\n12#2:3631\n12#2:3635\n12#2:3644\n12#2:3663\n18#2:3667\n1#3:2414\n1#3:2652\n1#3:2787\n1#3:2922\n1#3:3057\n1#3:3371\n1#3:3398\n1#3:3416\n1#3:3435\n1#3:3453\n1#3:3471\n1#3:3489\n1#3:3534\n1#3:3639\n1#3:3682\n186#4,4:2417\n186#4,4:2422\n186#4,3:2426\n189#4:2430\n186#4,4:2432\n164#4,4:2438\n74#5:2459\n74#5:2462\n69#5:3424\n74#5:3589\n74#5:3611\n361#6:2460\n361#6:2471\n361#6:2480\n355#6:3368\n355#6:3369\n43#7:3531\n43#7:3532\n12#8,7:3578\n19#8,4:3596\n12#8,7:3600\n19#8,4:3618\n488#9,4:3585\n492#9,6:3590\n488#9,4:3607\n492#9,6:3612\n314#10,11:3668\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n377#1:2436,2\n474#1:2443,4\n474#1:2448,2\n474#1:2450\n512#1:2451,4\n512#1:2456,2\n512#1:2458\n539#1:2463,4\n539#1:2468,2\n539#1:2470\n637#1:2472,4\n637#1:2477,2\n637#1:2479\n822#1:2481,4\n822#1:2485,4\n822#1:2490,2\n822#1:2492\n822#1:2493,15\n826#1:2508,4\n826#1:2512,4\n826#1:2517,2\n826#1:2519\n826#1:2520,15\n830#1:2535,4\n830#1:2539,4\n830#1:2544,2\n830#1:2546\n830#1:2547,15\n834#1:2562,4\n834#1:2566,4\n834#1:2571,2\n834#1:2573\n834#1:2574,15\n838#1:2589,4\n838#1:2593,4\n838#1:2598,2\n838#1:2600\n838#1:2601,15\n842#1:2616,4\n842#1:2620,4\n842#1:2625,2\n842#1:2627\n842#1:2628,15\n852#1:2643,4\n852#1:2648,2\n852#1:2650\n936#1:2651\n936#1:2653\n936#1:2654,7\n936#1:2661,2\n936#1:2663,2\n936#1:2665\n936#1:2666\n936#1:2667,76\n936#1:2743,2\n936#1:2745,2\n936#1:2747\n936#1:2748\n936#1:2749,3\n936#1:2752,32\n936#1:2784\n936#1:2785\n940#1:2786\n940#1:2788\n940#1:2789,7\n940#1:2796,2\n940#1:2798,2\n940#1:2800\n940#1:2801\n940#1:2802,76\n940#1:2878,2\n940#1:2880,2\n940#1:2882\n940#1:2883\n940#1:2884,3\n940#1:2887,32\n940#1:2919\n940#1:2920\n944#1:2921\n944#1:2923\n944#1:2924,7\n944#1:2931,2\n944#1:2933,2\n944#1:2935\n944#1:2936\n944#1:2937,76\n944#1:3013,2\n944#1:3015,2\n944#1:3017\n944#1:3018\n944#1:3019,3\n944#1:3022,32\n944#1:3054\n944#1:3055\n948#1:3056\n948#1:3058\n948#1:3059,7\n948#1:3066,2\n948#1:3068,2\n948#1:3070\n948#1:3071\n948#1:3072,76\n948#1:3148,2\n948#1:3150,2\n948#1:3152\n948#1:3153\n948#1:3154,3\n948#1:3157,32\n948#1:3189\n948#1:3190\n966#1:3191,7\n966#1:3198,2\n966#1:3200,2\n966#1:3202\n966#1:3203\n969#1:3204,32\n970#1:3236,24\n970#1:3260,2\n970#1:3262,2\n970#1:3264\n970#1:3265\n970#1:3266,3\n970#1:3269,32\n970#1:3301\n983#1:3302,18\n1029#1:3320,7\n1029#1:3327,2\n1029#1:3329,2\n1029#1:3331\n1029#1:3332\n1032#1:3333,32\n1042#1:3365,3\n1196#1:3370\n1196#1:3372,7\n1209#1:3381,4\n1209#1:3386,2\n1209#1:3388\n1196#1:3389,8\n1322#1:3397\n1322#1:3399,7\n1322#1:3407,8\n1352#1:3415\n1352#1:3417,7\n1352#1:3426,8\n1376#1:3434\n1376#1:3436,7\n1376#1:3444,8\n1455#1:3452\n1455#1:3454,16\n1525#1:3470\n1525#1:3472,16\n1535#1:3488\n1535#1:3490,16\n1640#1:3506,4\n1640#1:3511,2\n1640#1:3513\n1675#1:3515,4\n1675#1:3520,2\n1675#1:3522\n1693#1:3523,4\n1693#1:3528,2\n1693#1:3530\n1754#1:3533\n1754#1:3535,16\n1775#1:3551,4\n1775#1:3556,2\n1775#1:3558\n1796#1:3559,4\n1796#1:3564,2\n1796#1:3566\n1902#1:3569,4\n1902#1:3574,2\n1902#1:3576\n2209#1:3628,3\n2209#1:3632,3\n2225#1:3636,3\n2225#1:3640\n2225#1:3641,3\n2225#1:3645,3\n2225#1:3648,5\n2225#1:3653,7\n2231#1:3660,3\n2231#1:3664,3\n2326#1:3679,3\n2326#1:3683,6\n95#1:2412\n98#1:2413\n181#1:2415\n182#1:2416\n269#1:2421\n302#1:2429\n309#1:2431\n462#1:2442\n474#1:2447\n512#1:2455\n531#1:2461\n539#1:2467\n637#1:2476\n822#1:2489\n826#1:2516\n830#1:2543\n834#1:2570\n838#1:2597\n842#1:2624\n852#1:2647\n1198#1:3379\n1202#1:3380\n1209#1:3385\n1338#1:3406\n1364#1:3425\n1387#1:3443\n1640#1:3510\n1641#1:3514\n1675#1:3519\n1693#1:3527\n1775#1:3555\n1796#1:3563\n1858#1:3567\n1880#1:3568\n1902#1:3573\n1930#1:3577\n2139#1:3622\n2158#1:3623\n2164#1:3624\n2179#1:3625\n2184#1:3626\n2199#1:3627\n2209#1:3631\n2221#1:3635\n2225#1:3644\n2231#1:3663\n2258#1:3667\n936#1:2652\n940#1:2787\n944#1:2922\n948#1:3057\n1196#1:3371\n1322#1:3398\n1352#1:3416\n1376#1:3435\n1455#1:3453\n1525#1:3471\n1535#1:3489\n1754#1:3534\n2225#1:3639\n2326#1:3682\n224#1:2417,4\n276#1:2422,4\n292#1:2426,3\n292#1:2430\n316#1:2432,4\n398#1:2438,4\n513#1:2459\n505#1:2462\n1356#1:3424\n2072#1:3589\n2087#1:3611\n531#1:2460\n607#1:2471\n723#1:2480\n1099#1:3368\n1122#1:3369\n1725#1:3531\n1741#1:3532\n2069#1:3578,7\n2069#1:3596,4\n2084#1:3600,7\n2084#1:3618,4\n2071#1:3585,4\n2071#1:3590,6\n2086#1:3607,4\n2086#1:3612,6\n2311#1:3668,11\n*E\n"})
/* loaded from: classes8.dex */
public class ByteBufferChannel implements b, ByteReadChannel, e {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f59322l = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59323m = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_state");

    /* renamed from: n  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59324n = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_closed");

    /* renamed from: o  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59325o = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_readOp");

    /* renamed from: p  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f59326p = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_writeOp");
    @NotNull
    private volatile /* synthetic */ Object _closed;
    @NotNull
    private volatile /* synthetic */ Object _readOp;
    @NotNull
    private volatile /* synthetic */ Object _state;
    @NotNull
    volatile /* synthetic */ Object _writeOp;
    @Nullable
    private volatile r attachedJob;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f59327b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final io.ktor.utils.io.pool.b<f.c> f59328c;

    /* renamed from: d  reason: collision with root package name */
    private final int f59329d;

    /* renamed from: e  reason: collision with root package name */
    private int f59330e;

    /* renamed from: f  reason: collision with root package name */
    private int f59331f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final io.ktor.utils.io.internal.e f59332g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final io.ktor.utils.io.internal.j f59333h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final io.ktor.utils.io.internal.a<Boolean> f59334i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final io.ktor.utils.io.internal.a<Unit> f59335j;
    @Nullable
    private volatile io.ktor.utils.io.internal.c joining;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final Function1<rs.c<? super Unit>, Object> f59336k;
    private volatile long totalBytesRead;
    private volatile long totalBytesWritten;
    private volatile int writeSuspensionSize;

    /* compiled from: ByteBufferChannel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public ByteBufferChannel(boolean z10, @NotNull io.ktor.utils.io.pool.b<f.c> pool, int i10) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.f59327b = z10;
        this.f59328c = pool;
        this.f59329d = i10;
        this._state = f.a.f59558c;
        this._closed = null;
        this._readOp = null;
        this._writeOp = null;
        this.f59332g = new io.ktor.utils.io.internal.e(this);
        this.f59333h = new io.ktor.utils.io.internal.j(this);
        this.f59334i = new io.ktor.utils.io.internal.a<>();
        this.f59335j = new io.ktor.utils.io.internal.a<>();
        this.f59336k = new Function1<rs.c<? super Unit>, Object>() { // from class: io.ktor.utils.io.ByteBufferChannel$writeSuspension$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            /* JADX WARN: Incorrect condition in loop: B:15:0x0043 */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
                /*
                    r7 = this;
                    java.lang.String r0 = "ucont"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                    io.ktor.utils.io.ByteBufferChannel r0 = io.ktor.utils.io.ByteBufferChannel.this
                    int r0 = io.ktor.utils.io.ByteBufferChannel.q(r0)
                Lb:
                    io.ktor.utils.io.ByteBufferChannel r1 = io.ktor.utils.io.ByteBufferChannel.this
                    io.ktor.utils.io.internal.b r1 = io.ktor.utils.io.ByteBufferChannel.o(r1)
                    if (r1 == 0) goto L23
                    java.lang.Throwable r1 = r1.c()
                    if (r1 != 0) goto L1a
                    goto L23
                L1a:
                    io.ktor.utils.io.a.a(r1)
                    kotlin.KotlinNothingValueException r8 = new kotlin.KotlinNothingValueException
                    r8.<init>()
                    throw r8
                L23:
                    io.ktor.utils.io.ByteBufferChannel r1 = io.ktor.utils.io.ByteBufferChannel.this
                    boolean r1 = io.ktor.utils.io.ByteBufferChannel.E(r1, r0)
                    if (r1 != 0) goto L37
                    kotlin.Result$a r1 = kotlin.Result.f60901b
                    kotlin.Unit r1 = kotlin.Unit.f60915a
                    java.lang.Object r1 = kotlin.Result.d(r1)
                    r8.resumeWith(r1)
                    goto L61
                L37:
                    io.ktor.utils.io.ByteBufferChannel r1 = io.ktor.utils.io.ByteBufferChannel.this
                    rs.c r2 = kotlin.coroutines.intrinsics.a.c(r8)
                    io.ktor.utils.io.ByteBufferChannel r3 = io.ktor.utils.io.ByteBufferChannel.this
                L3f:
                    rs.c r4 = io.ktor.utils.io.ByteBufferChannel.p(r1)
                    if (r4 != 0) goto L78
                    boolean r4 = io.ktor.utils.io.ByteBufferChannel.E(r3, r0)
                    if (r4 != 0) goto L4c
                    goto Lb
                L4c:
                    java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = io.ktor.utils.io.ByteBufferChannel.f59326p
                    r5 = 0
                    boolean r6 = androidx.concurrent.futures.a.a(r4, r1, r5, r2)
                    if (r6 == 0) goto L3f
                    boolean r3 = io.ktor.utils.io.ByteBufferChannel.E(r3, r0)
                    if (r3 != 0) goto L61
                    boolean r1 = androidx.concurrent.futures.a.a(r4, r1, r2, r5)
                    if (r1 != 0) goto Lb
                L61:
                    io.ktor.utils.io.ByteBufferChannel r8 = io.ktor.utils.io.ByteBufferChannel.this
                    io.ktor.utils.io.ByteBufferChannel.n(r8, r0)
                    io.ktor.utils.io.ByteBufferChannel r8 = io.ktor.utils.io.ByteBufferChannel.this
                    boolean r8 = io.ktor.utils.io.ByteBufferChannel.z(r8)
                    if (r8 == 0) goto L73
                    io.ktor.utils.io.ByteBufferChannel r8 = io.ktor.utils.io.ByteBufferChannel.this
                    io.ktor.utils.io.ByteBufferChannel.x(r8)
                L73:
                    java.lang.Object r8 = kotlin.coroutines.intrinsics.a.f()
                    return r8
                L78:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "Operation is already in progress"
                    r8.<init>(r0)
                    throw r8
                */
                throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel$writeSuspension$1.invoke(rs.c):java.lang.Object");
            }
        };
    }

    private final boolean A0(boolean z10) {
        Object obj;
        f.C0829f c0829f;
        Throwable th2;
        f.c cVar = null;
        do {
            obj = this._state;
            io.ktor.utils.io.internal.f fVar = (io.ktor.utils.io.internal.f) obj;
            io.ktor.utils.io.internal.b M = M();
            if (cVar != null) {
                if (M != null) {
                    th2 = M.b();
                } else {
                    th2 = null;
                }
                if (th2 == null) {
                    cVar.f59557b.j();
                }
                r0();
                cVar = null;
            }
            c0829f = f.C0829f.f59568c;
            if (fVar == c0829f) {
                return true;
            }
            if (fVar != f.a.f59558c) {
                if (M != null && (fVar instanceof f.b) && (fVar.f59557b.k() || M.b() != null)) {
                    if (M.b() != null) {
                        fVar.f59557b.f();
                    }
                    cVar = ((f.b) fVar).g();
                } else if (z10 && (fVar instanceof f.b) && fVar.f59557b.k()) {
                    cVar = ((f.b) fVar).g();
                } else {
                    return false;
                }
            }
        } while (!androidx.concurrent.futures.a.a(f59323m, this, obj, c0829f));
        if (cVar != null && O() == c0829f) {
            j0(cVar);
        }
        return true;
    }

    private final int D0(hs.a aVar) {
        ByteBufferChannel byteBufferChannel;
        io.ktor.utils.io.internal.c cVar = this.joining;
        if (cVar == null || (byteBufferChannel = m0(this, cVar)) == null) {
            byteBufferChannel = this;
        }
        ByteBuffer w02 = byteBufferChannel.w0();
        int i10 = 0;
        if (w02 == null) {
            return 0;
        }
        io.ktor.utils.io.internal.h hVar = byteBufferChannel.O().f59557b;
        long Q = byteBufferChannel.Q();
        try {
            io.ktor.utils.io.internal.b M = byteBufferChannel.M();
            if (M != null) {
                io.ktor.utils.io.a.b(M.c());
                throw new KotlinNothingValueException();
            }
            while (true) {
                int n10 = hVar.n(Math.min(aVar.j() - aVar.h(), w02.remaining()));
                if (n10 == 0) {
                    break;
                }
                hs.g.a(aVar, w02, n10);
                i10 += n10;
                byteBufferChannel.U(w02, byteBufferChannel.H(w02, byteBufferChannel.f59331f + i10), hVar._availableForWrite$internal);
            }
            byteBufferChannel.G(w02, hVar, i10);
            if (hVar.h() || byteBufferChannel.g()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                u0(Q() + (byteBufferChannel.Q() - Q));
            }
            byteBufferChannel.o0();
            byteBufferChannel.B0();
            return i10;
        } catch (Throwable th2) {
            if (hVar.h() || byteBufferChannel.g()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                u0(Q() + (byteBufferChannel.Q() - Q));
            }
            byteBufferChannel.o0();
            byteBufferChannel.B0();
            throw th2;
        }
    }

    private final int E0(ByteBuffer byteBuffer) {
        ByteBufferChannel byteBufferChannel;
        int n10;
        io.ktor.utils.io.internal.c cVar = this.joining;
        if (cVar == null || (byteBufferChannel = m0(this, cVar)) == null) {
            byteBufferChannel = this;
        }
        ByteBuffer w02 = byteBufferChannel.w0();
        int i10 = 0;
        if (w02 == null) {
            return 0;
        }
        io.ktor.utils.io.internal.h hVar = byteBufferChannel.O().f59557b;
        long Q = byteBufferChannel.Q();
        try {
            io.ktor.utils.io.internal.b M = byteBufferChannel.M();
            if (M != null) {
                io.ktor.utils.io.a.b(M.c());
                throw new KotlinNothingValueException();
            }
            int limit = byteBuffer.limit();
            while (true) {
                int position = limit - byteBuffer.position();
                if (position == 0 || (n10 = hVar.n(Math.min(position, w02.remaining()))) == 0) {
                    break;
                } else if (n10 > 0) {
                    byteBuffer.limit(byteBuffer.position() + n10);
                    w02.put(byteBuffer);
                    i10 += n10;
                    byteBufferChannel.U(w02, byteBufferChannel.H(w02, byteBufferChannel.f59331f + i10), hVar._availableForWrite$internal);
                } else {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            byteBuffer.limit(limit);
            byteBufferChannel.G(w02, hVar, i10);
            if (hVar.h() || byteBufferChannel.g()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                u0(Q() + (byteBufferChannel.Q() - Q));
            }
            byteBufferChannel.o0();
            byteBufferChannel.B0();
            return i10;
        } catch (Throwable th2) {
            if (hVar.h() || byteBufferChannel.g()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                u0(Q() + (byteBufferChannel.Q() - Q));
            }
            byteBufferChannel.o0();
            byteBufferChannel.B0();
            throw th2;
        }
    }

    private final void F(ByteBuffer byteBuffer, io.ktor.utils.io.internal.h hVar, int i10) {
        if (i10 >= 0) {
            this.f59330e = H(byteBuffer, this.f59330e + i10);
            hVar.a(i10);
            t0(P() + i10);
            r0();
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    private final int F0(byte[] bArr, int i10, int i11) {
        ByteBufferChannel byteBufferChannel;
        io.ktor.utils.io.internal.c cVar = this.joining;
        if (cVar == null || (byteBufferChannel = m0(this, cVar)) == null) {
            byteBufferChannel = this;
        }
        ByteBuffer w02 = byteBufferChannel.w0();
        int i12 = 0;
        if (w02 == null) {
            return 0;
        }
        io.ktor.utils.io.internal.h hVar = byteBufferChannel.O().f59557b;
        long Q = byteBufferChannel.Q();
        try {
            io.ktor.utils.io.internal.b M = byteBufferChannel.M();
            if (M != null) {
                io.ktor.utils.io.a.b(M.c());
                throw new KotlinNothingValueException();
            }
            while (true) {
                int n10 = hVar.n(Math.min(i11 - i12, w02.remaining()));
                if (n10 != 0) {
                    if (n10 > 0) {
                        w02.put(bArr, i10 + i12, n10);
                        i12 += n10;
                        byteBufferChannel.U(w02, byteBufferChannel.H(w02, byteBufferChannel.f59331f + i12), hVar._availableForWrite$internal);
                    } else {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                } else {
                    byteBufferChannel.G(w02, hVar, i12);
                    if (hVar.h() || byteBufferChannel.g()) {
                        byteBufferChannel.flush();
                    }
                    if (byteBufferChannel != this) {
                        u0(Q() + (byteBufferChannel.Q() - Q));
                    }
                    byteBufferChannel.o0();
                    byteBufferChannel.B0();
                    return i12;
                }
            }
        } catch (Throwable th2) {
            if (hVar.h() || byteBufferChannel.g()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                u0(Q() + (byteBufferChannel.Q() - Q));
            }
            byteBufferChannel.o0();
            byteBufferChannel.B0();
            throw th2;
        }
    }

    private final void G(ByteBuffer byteBuffer, io.ktor.utils.io.internal.h hVar, int i10) {
        if (i10 >= 0) {
            this.f59331f = H(byteBuffer, this.f59331f + i10);
            hVar.c(i10);
            u0(Q() + i10);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    private final int H(ByteBuffer byteBuffer, int i10) {
        if (i10 >= byteBuffer.capacity() - this.f59329d) {
            return i10 - (byteBuffer.capacity() - this.f59329d);
        }
        return i10;
    }

    static /* synthetic */ Object H0(ByteBufferChannel byteBufferChannel, byte[] bArr, int i10, int i11, rs.c<? super Integer> cVar) {
        ByteBufferChannel m02;
        io.ktor.utils.io.internal.c cVar2 = byteBufferChannel.joining;
        if (cVar2 != null && (m02 = byteBufferChannel.m0(byteBufferChannel, cVar2)) != null) {
            return m02.G0(bArr, i10, i11, cVar);
        }
        int F0 = byteBufferChannel.F0(bArr, i10, i11);
        if (F0 > 0) {
            return kotlin.coroutines.jvm.internal.a.d(F0);
        }
        return byteBufferChannel.O0(bArr, i10, i11, cVar);
    }

    static /* synthetic */ Object I0(ByteBufferChannel byteBufferChannel, hs.a aVar, rs.c<? super Unit> cVar) {
        byteBufferChannel.D0(aVar);
        if (aVar.j() > aVar.h()) {
            Object L0 = byteBufferChannel.L0(aVar, cVar);
            if (L0 == kotlin.coroutines.intrinsics.a.f()) {
                return L0;
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }

    static /* synthetic */ Object J0(ByteBufferChannel byteBufferChannel, ByteBuffer byteBuffer, rs.c<? super Unit> cVar) {
        ByteBufferChannel m02;
        io.ktor.utils.io.internal.c cVar2 = byteBufferChannel.joining;
        if (cVar2 != null && (m02 = byteBufferChannel.m0(byteBufferChannel, cVar2)) != null) {
            Object i10 = m02.i(byteBuffer, cVar);
            if (i10 == kotlin.coroutines.intrinsics.a.f()) {
                return i10;
            }
            return Unit.f60915a;
        }
        byteBufferChannel.E0(byteBuffer);
        if (!byteBuffer.hasRemaining()) {
            return Unit.f60915a;
        }
        Object M0 = byteBufferChannel.M0(byteBuffer, cVar);
        if (M0 == kotlin.coroutines.intrinsics.a.f()) {
            return M0;
        }
        return Unit.f60915a;
    }

    private final void K(io.ktor.utils.io.internal.c cVar) {
        boolean z10;
        io.ktor.utils.io.internal.b M = M();
        if (M == null) {
            return;
        }
        this.joining = null;
        if (!cVar.b()) {
            cVar.c().flush();
            cVar.a();
            return;
        }
        io.ktor.utils.io.internal.f O = cVar.c().O();
        if (!(O instanceof f.g) && !(O instanceof f.e)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (M.b() == null && z10) {
            cVar.c().flush();
        } else {
            cVar.c().a(M.b());
        }
        cVar.a();
    }

    static /* synthetic */ Object K0(ByteBufferChannel byteBufferChannel, byte[] bArr, int i10, int i11, rs.c<? super Unit> cVar) {
        ByteBufferChannel m02;
        io.ktor.utils.io.internal.c cVar2 = byteBufferChannel.joining;
        if (cVar2 != null && (m02 = byteBufferChannel.m0(byteBufferChannel, cVar2)) != null) {
            Object b10 = m02.b(bArr, i10, i11, cVar);
            if (b10 == kotlin.coroutines.intrinsics.a.f()) {
                return b10;
            }
            return Unit.f60915a;
        }
        while (i11 > 0) {
            int F0 = byteBufferChannel.F0(bArr, i10, i11);
            if (F0 == 0) {
                break;
            }
            i10 += F0;
            i11 -= F0;
        }
        if (i11 == 0) {
            return Unit.f60915a;
        }
        Object N0 = byteBufferChannel.N0(bArr, i10, i11, cVar);
        if (N0 == kotlin.coroutines.intrinsics.a.f()) {
            return N0;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(int i10) {
        io.ktor.utils.io.internal.f O;
        f.C0829f c0829f;
        ByteBufferChannel c10;
        io.ktor.utils.io.internal.c cVar = this.joining;
        if (cVar != null && (c10 = cVar.c()) != null) {
            c10.flush();
        }
        do {
            O = O();
            c0829f = f.C0829f.f59568c;
            if (O == c0829f) {
                return;
            }
            O.f59557b.e();
        } while (O != O());
        int i11 = O.f59557b._availableForWrite$internal;
        if (O.f59557b._availableForRead$internal >= 1) {
            q0();
        }
        io.ktor.utils.io.internal.c cVar2 = this.joining;
        if (i11 >= i10) {
            if (cVar2 == null || O() == c0829f) {
                r0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0058 -> B:22:0x005b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object L0(hs.a r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3) r0
            int r1 = r0.f59399l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59399l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f59397j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59399l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r8)
            goto L73
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.f59396i
            hs.a r7 = (hs.a) r7
            java.lang.Object r2 = r0.f59395h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r8)
            goto L5b
        L40:
            kotlin.f.b(r8)
            r2 = r6
        L44:
            int r8 = r7.j()
            int r5 = r7.h()
            if (r8 <= r5) goto L7a
            r0.f59395h = r2
            r0.f59396i = r7
            r0.f59399l = r4
            java.lang.Object r8 = r2.C0(r4, r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            io.ktor.utils.io.internal.c r8 = r2.joining
            if (r8 == 0) goto L76
            io.ktor.utils.io.ByteBufferChannel r8 = r2.m0(r2, r8)
            if (r8 == 0) goto L76
            r2 = 0
            r0.f59395h = r2
            r0.f59396i = r2
            r0.f59399l = r3
            java.lang.Object r7 = r8.m(r7, r0)
            if (r7 != r1) goto L73
            return r1
        L73:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L76:
            r2.D0(r7)
            goto L44
        L7a:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.L0(hs.a, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final io.ktor.utils.io.internal.b M() {
        return (io.ktor.utils.io.internal.b) this._closed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0054 -> B:22:0x0057). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object M0(java.nio.ByteBuffer r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1) r0
            int r1 = r0.f59394l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59394l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f59392j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59394l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L6f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.f59391i
            java.nio.ByteBuffer r6 = (java.nio.ByteBuffer) r6
            java.lang.Object r2 = r0.f59390h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r7)
            goto L57
        L40:
            kotlin.f.b(r7)
            r2 = r5
        L44:
            boolean r7 = r6.hasRemaining()
            if (r7 == 0) goto L76
            r0.f59390h = r2
            r0.f59391i = r6
            r0.f59394l = r4
            java.lang.Object r7 = r2.C0(r4, r0)
            if (r7 != r1) goto L57
            return r1
        L57:
            io.ktor.utils.io.internal.c r7 = r2.joining
            if (r7 == 0) goto L72
            io.ktor.utils.io.ByteBufferChannel r7 = r2.m0(r2, r7)
            if (r7 == 0) goto L72
            r2 = 0
            r0.f59390h = r2
            r0.f59391i = r2
            r0.f59394l = r3
            java.lang.Object r6 = r7.i(r6, r0)
            if (r6 != r1) goto L6f
            return r1
        L6f:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L72:
            r2.E0(r6)
            goto L44
        L76:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.M0(java.nio.ByteBuffer, rs.c):java.lang.Object");
    }

    private final rs.c<Boolean> N() {
        return (rs.c) this._readOp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0054 -> B:20:0x0057). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object N0(byte[] r6, int r7, int r8, rs.c<? super kotlin.Unit> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5 r0 = (io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5) r0
            int r1 = r0.f59406n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59406n = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f59404l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59406n
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            int r6 = r0.f59403k
            int r7 = r0.f59402j
            java.lang.Object r8 = r0.f59401i
            byte[] r8 = (byte[]) r8
            java.lang.Object r2 = r0.f59400h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r9)
            goto L57
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlin.f.b(r9)
            r2 = r5
        L41:
            if (r8 <= 0) goto L63
            r0.f59400h = r2
            r0.f59401i = r6
            r0.f59402j = r7
            r0.f59403k = r8
            r0.f59406n = r3
            java.lang.Object r9 = r2.G0(r6, r7, r8, r0)
            if (r9 != r1) goto L54
            return r1
        L54:
            r4 = r8
            r8 = r6
            r6 = r4
        L57:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            int r7 = r7 + r9
            int r6 = r6 - r9
            r4 = r8
            r8 = r6
            r6 = r4
            goto L41
        L63:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.N0(byte[], int, int, rs.c):java.lang.Object");
    }

    private final io.ktor.utils.io.internal.f O() {
        return (io.ktor.utils.io.internal.f) this._state;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:20:0x005c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object O0(byte[] r7, int r8, int r9, rs.c<? super java.lang.Integer> r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel$writeSuspend$1
            if (r0 == 0) goto L13
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel$writeSuspend$1) r0
            int r1 = r0.f59413n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59413n = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeSuspend$1
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.f59411l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59413n
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r10)
            goto L74
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            int r7 = r0.f59410k
            int r8 = r0.f59409j
            java.lang.Object r9 = r0.f59408i
            byte[] r9 = (byte[]) r9
            java.lang.Object r2 = r0.f59407h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r10)
            r5 = r9
            r9 = r7
            r7 = r5
            goto L5c
        L47:
            kotlin.f.b(r10)
            r2 = r6
        L4b:
            r0.f59407h = r2
            r0.f59408i = r7
            r0.f59409j = r8
            r0.f59410k = r9
            r0.f59413n = r4
            java.lang.Object r10 = r2.C0(r4, r0)
            if (r10 != r1) goto L5c
            return r1
        L5c:
            io.ktor.utils.io.internal.c r10 = r2.joining
            if (r10 == 0) goto L75
            io.ktor.utils.io.ByteBufferChannel r10 = r2.m0(r2, r10)
            if (r10 == 0) goto L75
            r2 = 0
            r0.f59407h = r2
            r0.f59408i = r2
            r0.f59413n = r3
            java.lang.Object r10 = r10.O0(r7, r8, r9, r0)
            if (r10 != r1) goto L74
            return r1
        L74:
            return r10
        L75:
            int r10 = r2.F0(r7, r8, r9)
            if (r10 <= 0) goto L4b
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.a.d(r10)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.O0(byte[], int, int, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P0(int i10) {
        io.ktor.utils.io.internal.c cVar = this.joining;
        io.ktor.utils.io.internal.f O = O();
        if (M() != null) {
            return false;
        }
        if (cVar == null) {
            if (O.f59557b._availableForWrite$internal >= i10 || O == f.a.f59558c) {
                return false;
            }
        } else if (O == f.C0829f.f59568c || (O instanceof f.g) || (O instanceof f.e)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rs.c<Unit> R() {
        return (rs.c) this._writeOp;
    }

    private final f.c T() {
        f.c p02 = this.f59328c.p0();
        p02.f59557b.j();
        return p02;
    }

    private final void U(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 >= 0) {
            if (i11 >= 0) {
                byteBuffer.limit(kotlin.ranges.e.j(i11 + i10, byteBuffer.capacity() - this.f59329d));
                byteBuffer.position(i10);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    static /* synthetic */ Object V(ByteBufferChannel byteBufferChannel, int i10, Function1<? super ByteBuffer, Unit> function1, rs.c<? super Unit> cVar) {
        int i11;
        if (i10 >= 0) {
            ByteBuffer v02 = byteBufferChannel.v0();
            boolean z10 = false;
            if (v02 != null) {
                io.ktor.utils.io.internal.h hVar = byteBufferChannel.O().f59557b;
                try {
                    if (hVar._availableForRead$internal != 0 && (i11 = hVar._availableForRead$internal) > 0 && i11 >= i10) {
                        int position = v02.position();
                        int limit = v02.limit();
                        function1.invoke(v02);
                        if (limit == v02.limit()) {
                            int position2 = v02.position() - position;
                            if (position2 >= 0) {
                                if (hVar.m(position2)) {
                                    byteBufferChannel.F(v02, hVar, position2);
                                    z10 = true;
                                } else {
                                    throw new IllegalStateException("Check failed.");
                                }
                            } else {
                                throw new IllegalStateException("Position has been moved backward: pushback is not supported.");
                            }
                        } else {
                            throw new IllegalStateException("Buffer limit modified.");
                        }
                    }
                } finally {
                    byteBufferChannel.n0();
                    byteBufferChannel.B0();
                }
            }
            if (!z10) {
                if (byteBufferChannel.l() && i10 > 0) {
                    throw new EOFException("Got EOF but at least " + i10 + " bytes were expected");
                }
                Object d02 = byteBufferChannel.d0(i10, function1, cVar);
                if (d02 == kotlin.coroutines.intrinsics.a.f()) {
                    return d02;
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new IllegalArgumentException("min should be positive or zero");
    }

    private final int W(hs.a aVar, int i10, int i11) {
        int l10;
        do {
            ByteBuffer v02 = v0();
            boolean z10 = false;
            if (v02 != null) {
                io.ktor.utils.io.internal.h hVar = O().f59557b;
                try {
                    if (hVar._availableForRead$internal == 0) {
                        n0();
                        B0();
                    } else {
                        int f10 = aVar.f() - aVar.j();
                        l10 = hVar.l(Math.min(v02.remaining(), Math.min(f10, i11)));
                        if (l10 > 0) {
                            if (f10 < v02.remaining()) {
                                v02.limit(v02.position() + f10);
                            }
                            hs.e.a(aVar, v02);
                            F(v02, hVar, l10);
                            z10 = true;
                        }
                        i10 += l10;
                        i11 -= l10;
                        if (!z10 || aVar.f() <= aVar.j()) {
                            break;
                        }
                    }
                } finally {
                    n0();
                    B0();
                }
            }
            l10 = 0;
            i10 += l10;
            i11 -= l10;
            if (!z10) {
                break;
            }
            break;
        } while (O().f59557b._availableForRead$internal > 0);
        return i10;
    }

    private final int X(byte[] bArr, int i10, int i11) {
        ByteBuffer v02 = v0();
        int i12 = 0;
        if (v02 != null) {
            io.ktor.utils.io.internal.h hVar = O().f59557b;
            try {
                if (hVar._availableForRead$internal != 0) {
                    int capacity = v02.capacity() - this.f59329d;
                    while (true) {
                        int i13 = i11 - i12;
                        if (i13 == 0) {
                            break;
                        }
                        int i14 = this.f59330e;
                        int l10 = hVar.l(Math.min(capacity - i14, i13));
                        if (l10 == 0) {
                            break;
                        }
                        v02.limit(i14 + l10);
                        v02.position(i14);
                        v02.get(bArr, i10 + i12, l10);
                        F(v02, hVar, l10);
                        i12 += l10;
                    }
                }
            } finally {
                n0();
                B0();
            }
        }
        return i12;
    }

    static /* synthetic */ int Y(ByteBufferChannel byteBufferChannel, hs.a aVar, int i10, int i11, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = aVar.f() - aVar.j();
            }
            return byteBufferChannel.W(aVar, i10, i11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAsMuchAsPossible");
    }

    static /* synthetic */ Object Z(ByteBufferChannel byteBufferChannel, is.a aVar, rs.c<? super Integer> cVar) {
        int Y = Y(byteBufferChannel, aVar, 0, 0, 6, null);
        if (Y == 0 && byteBufferChannel.M() != null) {
            Y = byteBufferChannel.O().f59557b.e() ? Y(byteBufferChannel, aVar, 0, 0, 6, null) : -1;
        } else if (Y <= 0 && aVar.f() > aVar.j()) {
            return byteBufferChannel.b0(aVar, cVar);
        }
        return kotlin.coroutines.jvm.internal.a.d(Y);
    }

    static /* synthetic */ Object a0(ByteBufferChannel byteBufferChannel, byte[] bArr, int i10, int i11, rs.c<? super Integer> cVar) {
        int X = byteBufferChannel.X(bArr, i10, i11);
        if (X == 0 && byteBufferChannel.M() != null) {
            X = byteBufferChannel.O().f59557b.e() ? byteBufferChannel.X(bArr, i10, i11) : -1;
        } else if (X <= 0 && i11 != 0) {
            return byteBufferChannel.c0(bArr, i10, i11, cVar);
        }
        return kotlin.coroutines.jvm.internal.a.d(X);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b0(is.a r6, rs.c<? super java.lang.Integer> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3) r0
            int r1 = r0.f59365l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59365l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f59363j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59365l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L6d
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.f59362i
            is.a r6 = (is.a) r6
            java.lang.Object r2 = r0.f59361h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r7)
            goto L51
        L40:
            kotlin.f.b(r7)
            r0.f59361h = r5
            r0.f59362i = r6
            r0.f59365l = r4
            java.lang.Object r7 = r5.g0(r4, r0)
            if (r7 != r1) goto L50
            return r1
        L50:
            r2 = r5
        L51:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L5f
            r6 = -1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.a.d(r6)
            return r6
        L5f:
            r7 = 0
            r0.f59361h = r7
            r0.f59362i = r7
            r0.f59365l = r3
            java.lang.Object r7 = r2.f(r6, r0)
            if (r7 != r1) goto L6d
            return r1
        L6d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.b0(is.a, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c0(byte[] r6, int r7, int r8, rs.c<? super java.lang.Integer> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1) r0
            int r1 = r0.f59360n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59360n = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f59358l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59360n
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r9)
            goto L75
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            int r8 = r0.f59357k
            int r7 = r0.f59356j
            java.lang.Object r6 = r0.f59355i
            byte[] r6 = (byte[]) r6
            java.lang.Object r2 = r0.f59354h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r9)
            goto L59
        L44:
            kotlin.f.b(r9)
            r0.f59354h = r5
            r0.f59355i = r6
            r0.f59356j = r7
            r0.f59357k = r8
            r0.f59360n = r4
            java.lang.Object r9 = r5.g0(r4, r0)
            if (r9 != r1) goto L58
            return r1
        L58:
            r2 = r5
        L59:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L67
            r6 = -1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.a.d(r6)
            return r6
        L67:
            r9 = 0
            r0.f59354h = r9
            r0.f59355i = r9
            r0.f59360n = r3
            java.lang.Object r9 = r2.e(r6, r7, r8, r0)
            if (r9 != r1) goto L75
            return r1
        L75:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.c0(byte[], int, int, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d0(int r6, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1) r0
            int r1 = r0.f59371m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59371m = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f59369k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59371m
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r8)
            goto L90
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            int r6 = r0.f59368j
            java.lang.Object r7 = r0.f59367i
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r2 = r0.f59366h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r8)
            goto L59
        L42:
            kotlin.f.b(r8)
            int r8 = kotlin.ranges.e.e(r6, r4)
            r0.f59366h = r5
            r0.f59367i = r7
            r0.f59368j = r6
            r0.f59371m = r4
            java.lang.Object r8 = r5.g0(r8, r0)
            if (r8 != r1) goto L58
            return r1
        L58:
            r2 = r5
        L59:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L82
            if (r6 > 0) goto L66
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L66:
            java.io.EOFException r7 = new java.io.EOFException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Got EOF but at least "
            r8.append(r0)
            r8.append(r6)
            java.lang.String r6 = " bytes were expected"
            r8.append(r6)
            java.lang.String r6 = r8.toString()
            r7.<init>(r6)
            throw r7
        L82:
            r8 = 0
            r0.f59366h = r8
            r0.f59367i = r8
            r0.f59371m = r3
            java.lang.Object r6 = r2.d(r6, r7, r0)
            if (r6 != r1) goto L90
            return r1
        L90:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.d0(int, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    static /* synthetic */ Object e0(ByteBufferChannel byteBufferChannel, long j10, rs.c<? super hs.j> cVar) {
        if (byteBufferChannel.S()) {
            Throwable h10 = byteBufferChannel.h();
            if (h10 != null) {
                io.ktor.utils.io.a.b(h10);
                throw new KotlinNothingValueException();
            }
            return byteBufferChannel.k0(j10);
        }
        return byteBufferChannel.f0(j10, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: all -> 0x003e, TryCatch #1 {all -> 0x00c9, blocks: (B:40:0x00bb, B:42:0x00c4, B:46:0x00cc, B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:52:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b A[Catch: all -> 0x003e, TryCatch #1 {all -> 0x00c9, blocks: (B:40:0x00bb, B:42:0x00c4, B:46:0x00cc, B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:52:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6 A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #1 {all -> 0x00c9, blocks: (B:40:0x00bb, B:42:0x00c4, B:46:0x00cc, B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:52:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bb A[Catch: all -> 0x00c9, TRY_ENTER, TryCatch #1 {all -> 0x00c9, blocks: (B:40:0x00bb, B:42:0x00c4, B:46:0x00cc, B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:52:0x0039 }] */
    /* JADX WARN: Type inference failed for: r14v7, types: [hs.n] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00a7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b3 -> B:37:0x00b4). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f0(long r13, rs.c<? super hs.j> r15) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.f0(long, rs.c):java.lang.Object");
    }

    private final Object g0(int i10, rs.c<? super Boolean> cVar) {
        boolean z10 = true;
        if (O().f59557b._availableForRead$internal >= i10) {
            return kotlin.coroutines.jvm.internal.a.a(true);
        }
        io.ktor.utils.io.internal.b M = M();
        if (M != null) {
            Throwable b10 = M.b();
            if (b10 != null) {
                io.ktor.utils.io.a.b(b10);
                throw new KotlinNothingValueException();
            }
            io.ktor.utils.io.internal.h hVar = O().f59557b;
            z10 = (!hVar.e() || hVar._availableForRead$internal < i10) ? false : false;
            if (N() == null) {
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("Read operation is already in progress");
        } else if (i10 == 1) {
            return h0(1, cVar);
        } else {
            return i0(i10, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h0(int r5, rs.c<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1 r0 = (io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1) r0
            int r1 = r0.f59384l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59384l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f59382j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59384l
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.f59380h
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.io.ByteBufferChannel) r5
            kotlin.f.b(r6)     // Catch: java.lang.Throwable -> L2d
            goto L79
        L2d:
            r6 = move-exception
            goto L7a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            io.ktor.utils.io.internal.f r6 = r4.O()
            io.ktor.utils.io.internal.h r2 = r6.f59557b
            int r2 = r2._availableForRead$internal
            if (r2 >= r5) goto L7f
            io.ktor.utils.io.internal.c r2 = r4.joining
            if (r2 == 0) goto L56
            rs.c r2 = r4.R()
            if (r2 == 0) goto L56
            io.ktor.utils.io.internal.f$a r2 = io.ktor.utils.io.internal.f.a.f59558c
            if (r6 == r2) goto L7f
            boolean r6 = r6 instanceof io.ktor.utils.io.internal.f.b
            if (r6 != 0) goto L7f
        L56:
            r0.f59380h = r4     // Catch: java.lang.Throwable -> L73
            r0.f59381i = r5     // Catch: java.lang.Throwable -> L73
            r0.f59384l = r3     // Catch: java.lang.Throwable -> L73
            io.ktor.utils.io.internal.a<java.lang.Boolean> r6 = r4.f59334i     // Catch: java.lang.Throwable -> L73
            r4.y0(r5, r6)     // Catch: java.lang.Throwable -> L73
            rs.c r5 = kotlin.coroutines.intrinsics.a.c(r0)     // Catch: java.lang.Throwable -> L73
            java.lang.Object r6 = r6.g(r5)     // Catch: java.lang.Throwable -> L73
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()     // Catch: java.lang.Throwable -> L73
            if (r6 != r5) goto L76
            kotlin.coroutines.jvm.internal.f.c(r0)     // Catch: java.lang.Throwable -> L73
            goto L76
        L73:
            r6 = move-exception
            r5 = r4
            goto L7a
        L76:
            if (r6 != r1) goto L79
            return r1
        L79:
            return r6
        L7a:
            r0 = 0
            r5.s0(r0)
            throw r6
        L7f:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.h0(int, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0092 -> B:39:0x0095). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i0(int r6, rs.c<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 r0 = (io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1) r0
            int r1 = r0.f59389l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59389l = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f59387j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59389l
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            int r6 = r0.f59386i
            java.lang.Object r2 = r0.f59385h
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.f.b(r7)
            goto L95
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.f.b(r7)
            r2 = r5
        L3c:
            io.ktor.utils.io.internal.f r7 = r2.O()
            io.ktor.utils.io.internal.h r7 = r7.f59557b
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L4b
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r4)
            return r6
        L4b:
            io.ktor.utils.io.internal.b r7 = r2.M()
            if (r7 == 0) goto L88
            java.lang.Throwable r0 = r7.b()
            if (r0 != 0) goto L7b
            io.ktor.utils.io.internal.f r7 = r2.O()
            io.ktor.utils.io.internal.h r7 = r7.f59557b
            boolean r0 = r7.e()
            if (r0 == 0) goto L68
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L68
            r3 = r4
        L68:
            rs.c r6 = r2.N()
            if (r6 != 0) goto L73
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r6
        L73:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Read operation is already in progress"
            r6.<init>(r7)
            throw r6
        L7b:
            java.lang.Throwable r6 = r7.b()
            io.ktor.utils.io.a.a(r6)
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        L88:
            r0.f59385h = r2
            r0.f59386i = r6
            r0.f59389l = r4
            java.lang.Object r7 = r2.h0(r6, r0)
            if (r7 != r1) goto L95
            return r1
        L95:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L3c
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.i0(int, rs.c):java.lang.Object");
    }

    private final void j0(f.c cVar) {
        this.f59328c.y(cVar);
    }

    private final hs.j k0(long j10) {
        hs.i iVar = new hs.i(null, 1, null);
        try {
            is.a d10 = is.f.d(iVar, 1, null);
            while (true) {
                if (d10.f() - d10.j() > j10) {
                    d10.s((int) j10);
                }
                j10 -= Y(this, d10, 0, 0, 6, null);
                if (j10 <= 0 || l()) {
                    break;
                }
                d10 = is.f.d(iVar, 1, d10);
            }
            iVar.k();
            return iVar.h0();
        } catch (Throwable th2) {
            iVar.release();
            throw th2;
        }
    }

    private final ByteBufferChannel m0(ByteBufferChannel byteBufferChannel, io.ktor.utils.io.internal.c cVar) {
        while (byteBufferChannel.O() == f.C0829f.f59568c) {
            byteBufferChannel = cVar.c();
            cVar = byteBufferChannel.joining;
            if (cVar == null) {
                return byteBufferChannel;
            }
        }
        return null;
    }

    private final void n0() {
        Object obj;
        io.ktor.utils.io.internal.f e10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        f.b bVar = null;
        do {
            obj = this._state;
            io.ktor.utils.io.internal.f fVar = (io.ktor.utils.io.internal.f) obj;
            f.b bVar2 = bVar;
            if (bVar2 != null) {
                bVar2.f59557b.j();
                r0();
                bVar = null;
            }
            e10 = fVar.e();
            if ((e10 instanceof f.b) && O() == fVar && e10.f59557b.k()) {
                e10 = f.a.f59558c;
                bVar = e10;
            }
            atomicReferenceFieldUpdater = f59323m;
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, e10));
        f.a aVar = f.a.f59558c;
        if (e10 == aVar) {
            f.b bVar3 = bVar;
            if (bVar3 != null) {
                j0(bVar3.g());
            }
            r0();
        } else if ((e10 instanceof f.b) && e10.f59557b.g() && e10.f59557b.k() && androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, e10, aVar)) {
            e10.f59557b.j();
            j0(((f.b) e10).g());
            r0();
        }
    }

    private final void p0(Throwable th2) {
        boolean z10;
        rs.c cVar = (rs.c) f59325o.getAndSet(this, null);
        if (cVar != null) {
            if (th2 != null) {
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(kotlin.f.a(th2)));
            } else {
                if (O().f59557b._availableForRead$internal > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cVar.resumeWith(Result.d(Boolean.valueOf(z10)));
            }
        }
        rs.c cVar2 = (rs.c) f59326p.getAndSet(this, null);
        if (cVar2 != null) {
            Result.a aVar2 = Result.f60901b;
            if (th2 == null) {
                th2 = new ClosedWriteChannelException("Byte channel was closed");
            }
            cVar2.resumeWith(Result.d(kotlin.f.a(th2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0() {
        Throwable th2 = null;
        rs.c cVar = (rs.c) f59325o.getAndSet(this, null);
        if (cVar != null) {
            io.ktor.utils.io.internal.b M = M();
            if (M != null) {
                th2 = M.b();
            }
            if (th2 != null) {
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(kotlin.f.a(th2)));
                return;
            }
            Result.a aVar2 = Result.f60901b;
            cVar.resumeWith(Result.d(Boolean.TRUE));
        }
    }

    private final void r0() {
        rs.c<Unit> R;
        io.ktor.utils.io.internal.b M;
        Object a10;
        do {
            R = R();
            if (R == null) {
                return;
            }
            M = M();
            if (M == null && this.joining != null) {
                io.ktor.utils.io.internal.f O = O();
                if (!(O instanceof f.g) && !(O instanceof f.e) && O != f.C0829f.f59568c) {
                    return;
                }
            }
        } while (!androidx.concurrent.futures.a.a(f59326p, this, R, null));
        if (M == null) {
            Result.a aVar = Result.f60901b;
            a10 = Unit.f60915a;
        } else {
            Result.a aVar2 = Result.f60901b;
            a10 = kotlin.f.a(M.c());
        }
        R.resumeWith(Result.d(a10));
    }

    private final void s0(rs.c<? super Boolean> cVar) {
        this._readOp = cVar;
    }

    private final ByteBuffer v0() {
        Object obj;
        boolean areEqual;
        Throwable b10;
        io.ktor.utils.io.internal.f c10;
        Throwable b11;
        do {
            obj = this._state;
            io.ktor.utils.io.internal.f fVar = (io.ktor.utils.io.internal.f) obj;
            if (Intrinsics.areEqual(fVar, f.C0829f.f59568c)) {
                areEqual = true;
            } else {
                areEqual = Intrinsics.areEqual(fVar, f.a.f59558c);
            }
            if (areEqual) {
                io.ktor.utils.io.internal.b M = M();
                if (M != null && (b10 = M.b()) != null) {
                    io.ktor.utils.io.a.b(b10);
                    throw new KotlinNothingValueException();
                }
                return null;
            }
            io.ktor.utils.io.internal.b M2 = M();
            if (M2 != null && (b11 = M2.b()) != null) {
                io.ktor.utils.io.a.b(b11);
                throw new KotlinNothingValueException();
            } else if (fVar.f59557b._availableForRead$internal == 0) {
                return null;
            } else {
                c10 = fVar.c();
            }
        } while (!androidx.concurrent.futures.a.a(f59323m, this, obj, c10));
        ByteBuffer a10 = c10.a();
        U(a10, this.f59330e, c10.f59557b._availableForRead$internal);
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean x0() {
        if (this.joining != null && (O() == f.a.f59558c || (O() instanceof f.b))) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e0, code lost:
        return kotlin.coroutines.intrinsics.a.f();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object y0(int r5, rs.c<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
        L0:
            io.ktor.utils.io.internal.f r0 = r4.O()
            io.ktor.utils.io.internal.h r1 = r0.f59557b
            int r1 = r1._availableForRead$internal
            if (r1 >= r5) goto Ld1
            io.ktor.utils.io.internal.c r1 = r4.joining
            if (r1 == 0) goto L1c
            rs.c r1 = r4.R()
            if (r1 == 0) goto L1c
            io.ktor.utils.io.internal.f$a r1 = io.ktor.utils.io.internal.f.a.f59558c
            if (r0 == r1) goto Ld1
            boolean r0 = r0 instanceof io.ktor.utils.io.internal.f.b
            if (r0 != 0) goto Ld1
        L1c:
            io.ktor.utils.io.internal.b r0 = r4.M()
            if (r0 == 0) goto L6e
            java.lang.Throwable r1 = r0.b()
            if (r1 == 0) goto L3e
            kotlin.Result$a r5 = kotlin.Result.f60901b
            java.lang.Throwable r5 = r0.b()
            java.lang.Object r5 = kotlin.f.a(r5)
            java.lang.Object r5 = kotlin.Result.d(r5)
            r6.resumeWith(r5)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
            return r5
        L3e:
            io.ktor.utils.io.internal.f r0 = r4.O()
            io.ktor.utils.io.internal.h r0 = r0.f59557b
            boolean r0 = r0.e()
            io.ktor.utils.io.internal.f r1 = r4.O()
            io.ktor.utils.io.internal.h r1 = r1.f59557b
            int r1 = r1._availableForRead$internal
            r2 = 0
            r3 = 1
            if (r1 < r5) goto L56
            r5 = r3
            goto L57
        L56:
            r5 = r2
        L57:
            kotlin.Result$a r1 = kotlin.Result.f60901b
            if (r0 == 0) goto L5e
            if (r5 == 0) goto L5e
            r2 = r3
        L5e:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r2)
            java.lang.Object r5 = kotlin.Result.d(r5)
            r6.resumeWith(r5)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
            return r5
        L6e:
            rs.c r0 = r4.N()
            if (r0 != 0) goto Lc9
            io.ktor.utils.io.internal.b r0 = r4.M()
            if (r0 != 0) goto L0
            io.ktor.utils.io.internal.f r0 = r4.O()
            io.ktor.utils.io.internal.h r1 = r0.f59557b
            int r1 = r1._availableForRead$internal
            if (r1 >= r5) goto L0
            io.ktor.utils.io.internal.c r1 = r4.joining
            if (r1 == 0) goto L96
            rs.c r1 = r4.R()
            if (r1 == 0) goto L96
            io.ktor.utils.io.internal.f$a r1 = io.ktor.utils.io.internal.f.a.f59558c
            if (r0 == r1) goto L0
            boolean r0 = r0 instanceof io.ktor.utils.io.internal.f.b
            if (r0 != 0) goto L0
        L96:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = io.ktor.utils.io.ByteBufferChannel.f59325o
            r1 = 0
            boolean r2 = androidx.concurrent.futures.a.a(r0, r4, r1, r6)
            if (r2 == 0) goto L6e
            io.ktor.utils.io.internal.b r2 = r4.M()
            if (r2 != 0) goto Lc2
            io.ktor.utils.io.internal.f r2 = r4.O()
            io.ktor.utils.io.internal.h r3 = r2.f59557b
            int r3 = r3._availableForRead$internal
            if (r3 >= r5) goto Lc2
            io.ktor.utils.io.internal.c r3 = r4.joining
            if (r3 == 0) goto Ldc
            rs.c r3 = r4.R()
            if (r3 == 0) goto Ldc
            io.ktor.utils.io.internal.f$a r3 = io.ktor.utils.io.internal.f.a.f59558c
            if (r2 == r3) goto Lc2
            boolean r2 = r2 instanceof io.ktor.utils.io.internal.f.b
            if (r2 != 0) goto Lc2
            goto Ldc
        Lc2:
            boolean r0 = androidx.concurrent.futures.a.a(r0, r4, r6, r1)
            if (r0 != 0) goto L0
            goto Ldc
        Lc9:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Operation is already in progress"
            r5.<init>(r6)
            throw r5
        Ld1:
            kotlin.Result$a r5 = kotlin.Result.f60901b
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            java.lang.Object r5 = kotlin.Result.d(r5)
            r6.resumeWith(r5)
        Ldc:
            java.lang.Object r5 = kotlin.coroutines.intrinsics.a.f()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.y0(int, rs.c):java.lang.Object");
    }

    private final boolean z0(io.ktor.utils.io.internal.c cVar) {
        if (!A0(true)) {
            return false;
        }
        K(cVar);
        rs.c cVar2 = (rs.c) f59325o.getAndSet(this, null);
        if (cVar2 != null) {
            Result.a aVar = Result.f60901b;
            cVar2.resumeWith(Result.d(kotlin.f.a(new IllegalStateException("Joining is in progress"))));
        }
        r0();
        return true;
    }

    public final boolean B0() {
        if (M() == null || !A0(false)) {
            return false;
        }
        io.ktor.utils.io.internal.c cVar = this.joining;
        if (cVar != null) {
            K(cVar);
        }
        q0();
        r0();
        return true;
    }

    @Nullable
    public final Object C0(int i10, @NotNull rs.c<? super Unit> cVar) {
        Throwable c10;
        if (!P0(i10)) {
            io.ktor.utils.io.internal.b M = M();
            if (M != null && (c10 = M.c()) != null) {
                io.ktor.utils.io.a.b(c10);
                throw new KotlinNothingValueException();
            }
            return Unit.f60915a;
        }
        this.writeSuspensionSize = i10;
        if (this.attachedJob != null) {
            Object invoke = this.f59336k.invoke(cVar);
            if (invoke == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
            if (invoke == kotlin.coroutines.intrinsics.a.f()) {
                return invoke;
            }
            return Unit.f60915a;
        }
        io.ktor.utils.io.internal.a<Unit> aVar = this.f59335j;
        this.f59336k.invoke(aVar);
        Object g10 = aVar.g(kotlin.coroutines.intrinsics.a.c(cVar));
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public Object G0(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Integer> cVar) {
        return H0(this, bArr, i10, i11, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0307 A[Catch: all -> 0x030e, TryCatch #8 {all -> 0x030e, blocks: (B:138:0x0301, B:140:0x0307, B:147:0x0317, B:148:0x0326, B:145:0x0312), top: B:222:0x0301 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0317 A[Catch: all -> 0x030e, TryCatch #8 {all -> 0x030e, blocks: (B:138:0x0301, B:140:0x0307, B:147:0x0317, B:148:0x0326, B:145:0x0312), top: B:222:0x0301 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0333 A[Catch: all -> 0x0056, TRY_ENTER, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0358 A[Catch: all -> 0x0056, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03b4 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03f6 A[Catch: all -> 0x0056, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0401 A[Catch: all -> 0x0056, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0417 A[Catch: all -> 0x0056, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0284 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0124 A[Catch: all -> 0x0056, TryCatch #12 {all -> 0x0056, blocks: (B:14:0x0047, B:49:0x011e, B:51:0x0124, B:53:0x0128, B:56:0x012f, B:151:0x0333, B:154:0x033b, B:156:0x0347, B:157:0x0352, B:159:0x0358, B:161:0x0361, B:165:0x038a, B:168:0x0394, B:179:0x03b0, B:181:0x03b4, B:172:0x039d, B:59:0x013b, B:189:0x03f0, B:191:0x03f6, B:195:0x0401, B:196:0x040e, B:197:0x0414, B:193:0x03fc, B:199:0x0417, B:200:0x041a, B:21:0x0075), top: B:230:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015d A[Catch: all -> 0x01ce, TryCatch #9 {all -> 0x01ce, blocks: (B:63:0x0157, B:65:0x015d, B:67:0x0161), top: B:224:0x0157 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a5 A[Catch: all -> 0x01b7, TRY_LEAVE, TryCatch #13 {all -> 0x01b7, blocks: (B:74:0x01a1, B:76:0x01a5), top: B:231:0x01a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x020c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0298 -> B:224:0x0157). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:156:0x0347 -> B:49:0x011e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:180:0x03b2 -> B:184:0x03d8). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:182:0x03d5 -> B:184:0x03d8). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object I(@org.jetbrains.annotations.NotNull io.ktor.utils.io.ByteBufferChannel r28, long r29, @org.jetbrains.annotations.Nullable io.ktor.utils.io.internal.c r31, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Long> r32) {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.I(io.ktor.utils.io.ByteBufferChannel, long, io.ktor.utils.io.internal.c, rs.c):java.lang.Object");
    }

    @NotNull
    public final io.ktor.utils.io.internal.f J() {
        return O();
    }

    public long P() {
        return this.totalBytesRead;
    }

    public long Q() {
        return this.totalBytesWritten;
    }

    public boolean S() {
        if (M() != null) {
            return true;
        }
        return false;
    }

    @Override // io.ktor.utils.io.e
    public boolean a(@Nullable Throwable th2) {
        io.ktor.utils.io.internal.b bVar;
        io.ktor.utils.io.internal.c cVar;
        if (M() != null) {
            return false;
        }
        if (th2 == null) {
            bVar = io.ktor.utils.io.internal.b.f59542b.a();
        } else {
            bVar = new io.ktor.utils.io.internal.b(th2);
        }
        O().f59557b.e();
        if (!androidx.concurrent.futures.a.a(f59324n, this, null, bVar)) {
            return false;
        }
        O().f59557b.e();
        if (O().f59557b.g() || th2 != null) {
            B0();
        }
        p0(th2);
        if (O() == f.C0829f.f59568c && (cVar = this.joining) != null) {
            K(cVar);
        }
        if (th2 != null) {
            r rVar = this.attachedJob;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.f59334i.d(th2);
            this.f59335j.d(th2);
            return true;
        }
        this.f59335j.d(new ClosedWriteChannelException("Byte channel was closed"));
        this.f59334i.c(Boolean.valueOf(O().f59557b.e()));
        return true;
    }

    @Override // io.ktor.utils.io.e
    @Nullable
    public Object b(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Unit> cVar) {
        return K0(this, bArr, i10, i11, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public int c() {
        return O().f59557b._availableForRead$internal;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean cancel(@Nullable Throwable th2) {
        if (th2 == null) {
            th2 = new CancellationException("Channel has been cancelled");
        }
        return a(th2);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object d(int i10, @NotNull Function1<? super ByteBuffer, Unit> function1, @NotNull rs.c<? super Unit> cVar) {
        return V(this, i10, function1, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object e(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Integer> cVar) {
        return a0(this, bArr, i10, i11, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object f(@NotNull is.a aVar, @NotNull rs.c<? super Integer> cVar) {
        return Z(this, aVar, cVar);
    }

    @Override // io.ktor.utils.io.e
    public void flush() {
        L(1);
    }

    @Override // io.ktor.utils.io.e
    public boolean g() {
        return this.f59327b;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Throwable h() {
        io.ktor.utils.io.internal.b M = M();
        if (M != null) {
            return M.b();
        }
        return null;
    }

    @Override // io.ktor.utils.io.e
    @Nullable
    public Object i(@NotNull ByteBuffer byteBuffer, @NotNull rs.c<? super Unit> cVar) {
        return J0(this, byteBuffer, cVar);
    }

    @Override // io.ktor.utils.io.b
    @ms.c
    public void j(@NotNull r job) {
        Intrinsics.checkNotNullParameter(job, "job");
        r rVar = this.attachedJob;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.attachedJob = job;
        r.a.e(job, true, false, new Function1<Throwable, Unit>() { // from class: io.ktor.utils.io.ByteBufferChannel$attachJob$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                ByteBufferChannel.this.attachedJob = null;
                if (th2 == null) {
                    return;
                }
                ByteBufferChannel.this.cancel(k.a(th2));
            }
        }, 2, null);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Nullable
    public Object k(long j10, @NotNull rs.c<? super hs.j> cVar) {
        return e0(this, j10, cVar);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean l() {
        if (O() == f.C0829f.f59568c && M() != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ByteBufferChannel l0() {
        ByteBufferChannel m02;
        io.ktor.utils.io.internal.c cVar = this.joining;
        if (cVar == null || (m02 = m0(this, cVar)) == null) {
            return this;
        }
        return m02;
    }

    @Override // io.ktor.utils.io.e
    @Nullable
    public Object m(@NotNull hs.a aVar, @NotNull rs.c<? super Unit> cVar) {
        return I0(this, aVar, cVar);
    }

    public final void o0() {
        Object obj;
        io.ktor.utils.io.internal.f f10;
        f.b bVar;
        f.b bVar2 = null;
        do {
            obj = this._state;
            f10 = ((io.ktor.utils.io.internal.f) obj).f();
            if ((f10 instanceof f.b) && f10.f59557b.g()) {
                f10 = f.a.f59558c;
                bVar2 = f10;
            }
        } while (!androidx.concurrent.futures.a.a(f59323m, this, obj, f10));
        if (f10 == f.a.f59558c && (bVar = bVar2) != null) {
            j0(bVar.g());
        }
    }

    public void t0(long j10) {
        this.totalBytesRead = j10;
    }

    @NotNull
    public String toString() {
        return "ByteBufferChannel(" + hashCode() + ", " + O() + ')';
    }

    public void u0(long j10) {
        this.totalBytesWritten = j10;
    }

    @Nullable
    public final ByteBuffer w0() {
        Object obj;
        io.ktor.utils.io.internal.f fVar;
        f.a aVar;
        io.ktor.utils.io.internal.f d10;
        rs.c<Unit> R = R();
        if (R == null) {
            io.ktor.utils.io.internal.f fVar2 = null;
            f.c cVar = null;
            do {
                obj = this._state;
                fVar = (io.ktor.utils.io.internal.f) obj;
                if (this.joining != null) {
                    if (cVar != null) {
                        j0(cVar);
                    }
                    return null;
                } else if (M() != null) {
                    if (cVar != null) {
                        j0(cVar);
                    }
                    io.ktor.utils.io.internal.b M = M();
                    Intrinsics.checkNotNull(M);
                    io.ktor.utils.io.a.b(M.c());
                    throw new KotlinNothingValueException();
                } else {
                    aVar = f.a.f59558c;
                    if (fVar == aVar) {
                        if (cVar == null) {
                            cVar = T();
                        }
                        d10 = cVar.d();
                    } else if (fVar == f.C0829f.f59568c) {
                        if (cVar != null) {
                            j0(cVar);
                        }
                        if (this.joining != null) {
                            return null;
                        }
                        io.ktor.utils.io.internal.b M2 = M();
                        Intrinsics.checkNotNull(M2);
                        io.ktor.utils.io.a.b(M2.c());
                        throw new KotlinNothingValueException();
                    } else {
                        d10 = fVar.d();
                    }
                }
            } while (!androidx.concurrent.futures.a.a(f59323m, this, obj, d10));
            if (M() == null) {
                ByteBuffer b10 = d10.b();
                if (cVar != null) {
                    if (fVar == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("old");
                    } else {
                        fVar2 = fVar;
                    }
                    if (fVar2 != aVar) {
                        j0(cVar);
                    }
                }
                U(b10, this.f59331f, d10.f59557b._availableForWrite$internal);
                return b10;
            }
            o0();
            B0();
            io.ktor.utils.io.internal.b M3 = M();
            Intrinsics.checkNotNull(M3);
            io.ktor.utils.io.a.b(M3.c());
            throw new KotlinNothingValueException();
        }
        throw new IllegalStateException("Write operation is already in progress: " + R);
    }

    public /* synthetic */ ByteBufferChannel(boolean z10, io.ktor.utils.io.pool.b bVar, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i11 & 2) != 0 ? io.ktor.utils.io.internal.d.c() : bVar, (i11 & 4) != 0 ? 8 : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel(@NotNull ByteBuffer content) {
        this(false, io.ktor.utils.io.internal.d.b(), 0);
        Intrinsics.checkNotNullParameter(content, "content");
        ByteBuffer slice = content.slice();
        Intrinsics.checkNotNullExpressionValue(slice, "content.slice()");
        f.c cVar = new f.c(slice, 0);
        cVar.f59557b.i();
        this._state = cVar.d();
        o0();
        f.a(this);
        B0();
    }
}
