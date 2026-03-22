package kotlinx.coroutines.channels;

import androidx.collection.SieveCacheKt;
import at.n;
import gt.l;
import gt.y1;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import mt.a0;
import mt.j;
import mt.u;
import mt.x;
import mt.y;
import mt.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BufferedChannel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3116:1\n270#1,6:3119\n277#1,68:3126\n394#1,18:3217\n241#1:3235\n266#1,10:3236\n277#1,48:3247\n415#1:3295\n331#1,14:3296\n419#1,3:3311\n241#1:3324\n266#1,10:3325\n277#1,68:3336\n241#1:3414\n266#1,10:3415\n277#1,68:3426\n241#1:3498\n266#1,10:3499\n277#1,68:3510\n241#1:3579\n266#1,10:3580\n277#1,68:3591\n906#1,52:3661\n984#1,8:3717\n878#1:3725\n902#1,33:3726\n994#1:3759\n936#1,14:3760\n955#1,3:3775\n999#1,6:3778\n906#1,52:3792\n984#1,8:3848\n878#1:3856\n902#1,33:3857\n994#1:3890\n936#1,14:3891\n955#1,3:3906\n999#1,6:3909\n878#1:3924\n902#1,48:3925\n955#1,3:3974\n878#1:3977\n902#1,48:3978\n955#1,3:4027\n241#1:4039\n266#1,10:4040\n277#1,68:4051\n878#1:4120\n902#1,48:4121\n955#1,3:4170\n1#2:3117\n3099#3:3118\n3099#3:3125\n3099#3:3246\n3099#3:3335\n3099#3:3425\n3099#3:3497\n3099#3:3509\n3099#3:3590\n3099#3:3660\n3099#3:3923\n3099#3:4030\n3099#3:4031\n3113#3:4032\n3113#3:4033\n3112#3:4034\n3112#3:4035\n3112#3:4036\n3113#3:4037\n3112#3:4038\n3099#3:4050\n3100#3:4173\n3099#3:4174\n3099#3:4175\n3099#3:4176\n3100#3:4177\n3099#3:4178\n3100#3:4201\n3099#3:4202\n3099#3:4203\n3100#3:4204\n3099#3:4254\n3100#3:4255\n3100#3:4256\n3100#3:4274\n3100#3:4275\n426#4,9:3194\n435#4,2:3211\n444#4,4:3213\n448#4,8:3314\n426#4,9:3405\n435#4,2:3495\n444#4,4:3713\n448#4,8:3784\n444#4,4:3844\n448#4,8:3915\n204#5:3203\n205#5:3206\n204#5:3207\n205#5:3210\n57#6,2:3204\n57#6,2:3208\n57#6,2:3322\n266#7:3310\n266#7:3404\n266#7:3494\n266#7:3578\n266#7:3659\n266#7:4119\n902#8:3774\n902#8:3905\n902#8:3973\n902#8:4026\n902#8:4169\n33#9,11:4179\n33#9,11:4190\n68#10,3:4205\n42#10,8:4208\n68#10,3:4216\n42#10,8:4219\n42#10,8:4227\n68#10,3:4235\n42#10,8:4238\n42#10,8:4246\n774#11:4257\n865#11,2:4258\n2318#11,14:4260\n774#11:4276\n865#11,2:4277\n2318#11,14:4279\n774#11:4293\n865#11,2:4294\n2318#11,14:4296\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n110#1:3119,6\n110#1:3126,68\n151#1:3217,18\n151#1:3235\n151#1:3236,10\n151#1:3247,48\n151#1:3295\n151#1:3296,14\n151#1:3311,3\n191#1:3324\n191#1:3325,10\n191#1:3336,68\n222#1:3414\n222#1:3415,10\n222#1:3426,68\n353#1:3498\n353#1:3499,10\n353#1:3510,68\n411#1:3579\n411#1:3580,10\n411#1:3591,68\n687#1:3661,52\n716#1:3717,8\n716#1:3725\n716#1:3726,33\n716#1:3759\n716#1:3760,14\n716#1:3775,3\n716#1:3778,6\n752#1:3792,52\n768#1:3848,8\n768#1:3856\n768#1:3857,33\n768#1:3890\n768#1:3891,14\n768#1:3906,3\n768#1:3909,6\n801#1:3924\n801#1:3925,48\n801#1:3974,3\n991#1:3977\n991#1:3978,48\n991#1:4027,3\n1484#1:4039\n1484#1:4040,10\n1484#1:4051,68\n1532#1:4120\n1532#1:4121,48\n1532#1:4170,3\n67#1:3118\n110#1:3125\n151#1:3246\n191#1:3335\n222#1:3425\n275#1:3497\n353#1:3509\n411#1:3590\n626#1:3660\n791#1:3923\n1027#1:4030\n1076#1:4031\n1394#1:4032\n1396#1:4033\n1426#1:4034\n1436#1:4035\n1445#1:4036\n1446#1:4037\n1453#1:4038\n1484#1:4050\n1898#1:4173\n1900#1:4174\n1902#1:4175\n1915#1:4176\n1926#1:4177\n1927#1:4178\n2229#1:4201\n2242#1:4202\n2252#1:4203\n2255#1:4204\n2572#1:4254\n2574#1:4255\n2599#1:4256\n2661#1:4274\n2662#1:4275\n131#1:3194,9\n131#1:3211,2\n150#1:3213,4\n150#1:3314,8\n218#1:3405,9\n218#1:3495,2\n715#1:3713,4\n715#1:3784,8\n766#1:3844,4\n766#1:3915,8\n135#1:3203\n135#1:3206\n138#1:3207\n138#1:3210\n135#1:3204,2\n138#1:3208,2\n180#1:3322,2\n151#1:3310\n191#1:3404\n222#1:3494\n353#1:3578\n411#1:3659\n1484#1:4119\n716#1:3774\n768#1:3905\n801#1:3973\n991#1:4026\n1532#1:4169\n2131#1:4179,11\n2186#1:4190,11\n2394#1:4205,3\n2394#1:4208,8\n2449#1:4216,3\n2449#1:4219,8\n2468#1:4227,8\n2498#1:4235,3\n2498#1:4238,8\n2559#1:4246,8\n2608#1:4257\n2608#1:4258,2\n2609#1:4260,14\n2673#1:4276\n2673#1:4277,2\n2674#1:4279,14\n2714#1:4293\n2714#1:4294,2\n2715#1:4296,14\n*E\n"})
/* loaded from: classes8.dex */
public class BufferedChannel<E> implements jt.d<E> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61321d = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61322e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61323f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f61324g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61325h = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61326i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    /* renamed from: j  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61327j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61328k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");

    /* renamed from: l  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61329l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* renamed from: a  reason: collision with root package name */
    private final int f61330a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Function1<E, Unit> f61331b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final n<pt.i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> f61332c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BufferedChannel.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3116:1\n906#2,52:3117\n984#2,8:3173\n878#2:3181\n902#2,33:3182\n994#2:3215\n936#2,14:3216\n955#2,3:3231\n999#2,6:3234\n444#3,4:3169\n448#3,8:3240\n902#4:3230\n57#5,2:3248\n57#5,2:3251\n1#6:3250\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1619#1:3117,52\n1657#1:3173,8\n1657#1:3181\n1657#1:3182,33\n1657#1:3215\n1657#1:3216,14\n1657#1:3231,3\n1657#1:3234,6\n1655#1:3169,4\n1655#1:3240,8\n1657#1:3230\n1693#1:3248,2\n1741#1:3251,2\n*E\n"})
    /* loaded from: classes8.dex */
    public final class a implements jt.f<E>, y1 {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Object f61333a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private kotlinx.coroutines.e<? super Boolean> f61334b;

        public a() {
            a0 a0Var;
            a0Var = BufferedChannelKt.f61365p;
            this.f61333a = a0Var;
        }

        private final Object e(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10, rs.c<? super Boolean> cVar) {
            a0 a0Var;
            a0 a0Var2;
            Boolean a10;
            a0 a0Var3;
            a0 a0Var4;
            a0 a0Var5;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            kotlinx.coroutines.e b10 = l.b(kotlin.coroutines.intrinsics.a.c(cVar));
            try {
                this.f61334b = b10;
                Object l12 = bufferedChannel.l1(bVar, i10, j10, this);
                a0Var = BufferedChannelKt.f61362m;
                if (l12 == a0Var) {
                    bufferedChannel.R0(this, bVar, i10);
                } else {
                    a0Var2 = BufferedChannelKt.f61364o;
                    n nVar = null;
                    if (l12 == a0Var2) {
                        if (j10 < bufferedChannel.n0()) {
                            bVar.c();
                        }
                        kotlinx.coroutines.channels.b bVar2 = (kotlinx.coroutines.channels.b) BufferedChannel.r().get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.v0()) {
                                h();
                                break;
                            }
                            long andIncrement = BufferedChannel.s().getAndIncrement(bufferedChannel);
                            int i11 = BufferedChannelKt.f61351b;
                            long j11 = andIncrement / i11;
                            int i12 = (int) (andIncrement % i11);
                            if (bVar2.f62709c != j11) {
                                kotlinx.coroutines.channels.b Y = bufferedChannel.Y(j11, bVar2);
                                if (Y != null) {
                                    bVar2 = Y;
                                }
                            }
                            Object l13 = bufferedChannel.l1(bVar2, i12, andIncrement, this);
                            a0Var3 = BufferedChannelKt.f61362m;
                            if (l13 == a0Var3) {
                                bufferedChannel.R0(this, bVar2, i12);
                                break;
                            }
                            a0Var4 = BufferedChannelKt.f61364o;
                            if (l13 != a0Var4) {
                                a0Var5 = BufferedChannelKt.f61363n;
                                if (l13 != a0Var5) {
                                    bVar2.c();
                                    this.f61333a = l13;
                                    this.f61334b = null;
                                    a10 = kotlin.coroutines.jvm.internal.a.a(true);
                                    Function1<E, Unit> function1 = bufferedChannel.f61331b;
                                    if (function1 != null) {
                                        nVar = bufferedChannel.J(function1, l13);
                                    }
                                } else {
                                    throw new IllegalStateException("unexpected");
                                }
                            } else if (andIncrement < bufferedChannel.n0()) {
                                bVar2.c();
                            }
                        }
                    } else {
                        bVar.c();
                        this.f61333a = l12;
                        this.f61334b = null;
                        a10 = kotlin.coroutines.jvm.internal.a.a(true);
                        Function1<E, Unit> function12 = bufferedChannel.f61331b;
                        if (function12 != null) {
                            nVar = bufferedChannel.J(function12, l12);
                        }
                    }
                    b10.y(a10, nVar);
                }
                Object B = b10.B();
                if (B == kotlin.coroutines.intrinsics.a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return B;
            } catch (Throwable th2) {
                b10.P();
                throw th2;
            }
        }

        private final boolean f() {
            this.f61333a = BufferedChannelKt.z();
            Throwable d02 = BufferedChannel.this.d0();
            if (d02 == null) {
                return false;
            }
            throw z.a(d02);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h() {
            kotlinx.coroutines.e<? super Boolean> eVar = this.f61334b;
            Intrinsics.checkNotNull(eVar);
            this.f61334b = null;
            this.f61333a = BufferedChannelKt.z();
            Throwable d02 = BufferedChannel.this.d0();
            if (d02 == null) {
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(Boolean.FALSE));
                return;
            }
            Result.a aVar2 = Result.f60901b;
            eVar.resumeWith(Result.d(kotlin.f.a(d02)));
        }

        @Override // jt.f
        @Nullable
        public Object a(@NotNull rs.c<? super Boolean> cVar) {
            a0 a0Var;
            a0 a0Var2;
            a0 a0Var3;
            a0 a0Var4;
            Object obj = this.f61333a;
            a0Var = BufferedChannelKt.f61365p;
            boolean z10 = true;
            if (obj == a0Var || this.f61333a == BufferedChannelKt.z()) {
                BufferedChannel<E> bufferedChannel = BufferedChannel.this;
                kotlinx.coroutines.channels.b<E> bVar = (kotlinx.coroutines.channels.b) BufferedChannel.r().get(bufferedChannel);
                while (true) {
                    if (bufferedChannel.v0()) {
                        z10 = f();
                        break;
                    }
                    long andIncrement = BufferedChannel.s().getAndIncrement(bufferedChannel);
                    int i10 = BufferedChannelKt.f61351b;
                    long j10 = andIncrement / i10;
                    int i11 = (int) (andIncrement % i10);
                    if (bVar.f62709c != j10) {
                        kotlinx.coroutines.channels.b<E> Y = bufferedChannel.Y(j10, bVar);
                        if (Y == null) {
                            continue;
                        } else {
                            bVar = Y;
                        }
                    }
                    Object l12 = bufferedChannel.l1(bVar, i11, andIncrement, null);
                    a0Var2 = BufferedChannelKt.f61362m;
                    if (l12 != a0Var2) {
                        a0Var3 = BufferedChannelKt.f61364o;
                        if (l12 != a0Var3) {
                            a0Var4 = BufferedChannelKt.f61363n;
                            if (l12 == a0Var4) {
                                return e(bVar, i11, andIncrement, cVar);
                            }
                            bVar.c();
                            this.f61333a = l12;
                        } else if (andIncrement < bufferedChannel.n0()) {
                            bVar.c();
                        }
                    } else {
                        throw new IllegalStateException("unreachable");
                    }
                }
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }

        @Override // gt.y1
        public void g(@NotNull x<?> xVar, int i10) {
            kotlinx.coroutines.e<? super Boolean> eVar = this.f61334b;
            if (eVar != null) {
                eVar.g(xVar, i10);
            }
        }

        public final boolean i(E e10) {
            boolean B;
            kotlinx.coroutines.e<? super Boolean> eVar = this.f61334b;
            Intrinsics.checkNotNull(eVar);
            n nVar = null;
            this.f61334b = null;
            this.f61333a = e10;
            Boolean bool = Boolean.TRUE;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            Function1<E, Unit> function1 = bufferedChannel.f61331b;
            if (function1 != null) {
                nVar = bufferedChannel.J(function1, e10);
            }
            B = BufferedChannelKt.B(eVar, bool, nVar);
            return B;
        }

        public final void j() {
            kotlinx.coroutines.e<? super Boolean> eVar = this.f61334b;
            Intrinsics.checkNotNull(eVar);
            this.f61334b = null;
            this.f61333a = BufferedChannelKt.z();
            Throwable d02 = BufferedChannel.this.d0();
            if (d02 == null) {
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(Boolean.FALSE));
                return;
            }
            Result.a aVar2 = Result.f60901b;
            eVar.resumeWith(Result.d(kotlin.f.a(d02)));
        }

        @Override // jt.f
        public E next() {
            a0 a0Var;
            a0 a0Var2;
            E e10 = (E) this.f61333a;
            a0Var = BufferedChannelKt.f61365p;
            if (e10 != a0Var) {
                a0Var2 = BufferedChannelKt.f61365p;
                this.f61333a = a0Var2;
                if (e10 != BufferedChannelKt.z()) {
                    return e10;
                }
                throw z.a(BufferedChannel.this.g0());
            }
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BufferedChannel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements y1 {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ kotlinx.coroutines.e<Boolean> f61336a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final gt.i<Boolean> f61337b;

        @NotNull
        public final gt.i<Boolean> a() {
            return this.f61337b;
        }

        @Override // gt.y1
        public void g(@NotNull x<?> xVar, int i10) {
            this.f61336a.g(xVar, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BufferedChannel(int i10, @Nullable Function1<? super E, Unit> function1) {
        long A;
        n<pt.i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> nVar;
        a0 a0Var;
        this.f61330a = i10;
        this.f61331b = function1;
        if (i10 >= 0) {
            A = BufferedChannelKt.A(i10);
            this.bufferEnd$volatile = A;
            this.completedExpandBuffersAndPauseFlag$volatile = b0();
            kotlinx.coroutines.channels.b bVar = new kotlinx.coroutines.channels.b(0L, null, this, 3);
            this.sendSegment$volatile = bVar;
            this.receiveSegment$volatile = bVar;
            if (z0()) {
                bVar = BufferedChannelKt.f61350a;
                Intrinsics.checkNotNull(bVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment$volatile = bVar;
            if (function1 != 0) {
                nVar = new n() { // from class: jt.a
                    @Override // at.n
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        n P0;
                        P0 = BufferedChannel.P0(BufferedChannel.this, (pt.i) obj, obj2, obj3);
                        return P0;
                    }
                };
            } else {
                nVar = null;
            }
            this.f61332c = nVar;
            a0Var = BufferedChannelKt.f61368s;
            this._closeCause$volatile = a0Var;
            return;
        }
        throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
    }

    private final long A0(kotlinx.coroutines.channels.b<E> bVar) {
        a0 a0Var;
        do {
            int i10 = BufferedChannelKt.f61351b;
            while (true) {
                i10--;
                if (-1 < i10) {
                    long j10 = (bVar.f62709c * BufferedChannelKt.f61351b) + i10;
                    if (j10 >= j0()) {
                        while (true) {
                            Object B = bVar.B(i10);
                            if (B != null) {
                                a0Var = BufferedChannelKt.f61354e;
                                if (B != a0Var) {
                                    if (B == BufferedChannelKt.f61353d) {
                                        return j10;
                                    }
                                }
                            }
                            if (bVar.v(i10, B, BufferedChannelKt.z())) {
                                bVar.t();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                } else {
                    bVar = (kotlinx.coroutines.channels.b) bVar.h();
                }
            }
        } while (bVar != null);
        return -1L;
    }

    private final void B0() {
        long j10;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61321d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (((int) (j10 >> 60)) == 0) {
                w10 = BufferedChannelKt.w(1152921504606846975L & j10, 1);
            } else {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, w10));
    }

    private final void C0() {
        long j10;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61321d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            w10 = BufferedChannelKt.w(1152921504606846975L & j10, 3);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, w10));
    }

    private final void D0() {
        long j10;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61321d;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (j10 >> 60);
            if (i10 == 0) {
                w10 = BufferedChannelKt.w(j10 & 1152921504606846975L, 2);
            } else if (i10 == 1) {
                w10 = BufferedChannelKt.w(j10 & 1152921504606846975L, 3);
            } else {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, w10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void E0(long r5, kotlinx.coroutines.channels.b<E> r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.f62709c
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            mt.c r0 = r7.f()
            kotlinx.coroutines.channels.b r0 = (kotlinx.coroutines.channels.b) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.k()
            if (r5 == 0) goto L22
            mt.c r5 = r7.f()
            kotlinx.coroutines.channels.b r5 = (kotlinx.coroutines.channels.b) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = c0()
        L26:
            java.lang.Object r6 = r5.get(r4)
            mt.x r6 = (mt.x) r6
            long r0 = r6.f62709c
            long r2 = r7.f62709c
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L35
            goto L4b
        L35:
            boolean r0 = r7.u()
            if (r0 != 0) goto L3c
            goto L11
        L3c:
            boolean r0 = androidx.concurrent.futures.a.a(r5, r4, r6, r7)
            if (r0 == 0) goto L4c
            boolean r5 = r6.p()
            if (r5 == 0) goto L4b
            r6.n()
        L4b:
            return
        L4c:
            boolean r6 = r7.p()
            if (r6 == 0) goto L26
            r7.n()
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.E0(long, kotlinx.coroutines.channels.b):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        Function1<E, Unit> function1 = this.f61331b;
        Intrinsics.checkNotNull(function1);
        Object f10 = kotlinx.coroutines.channels.a.f(obj);
        Intrinsics.checkNotNull(f10);
        u.a(function1, f10, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(Throwable th2, E e10, CoroutineContext coroutineContext) {
        Function1<E, Unit> function1 = this.f61331b;
        Intrinsics.checkNotNull(function1);
        u.a(function1, e10, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I0(gt.i<? super kotlinx.coroutines.channels.a<? extends E>> iVar) {
        Result.a aVar = Result.f60901b;
        iVar.resumeWith(Result.d(kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.f61379b.a(d0()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n<Throwable, Object, CoroutineContext, Unit> J(final Function1<? super E, Unit> function1, final E e10) {
        return new n() { // from class: jt.b
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit L;
                L = BufferedChannel.L(Function1.this, e10, (Throwable) obj, obj2, (CoroutineContext) obj3);
                return L;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(gt.i<? super E> iVar) {
        Result.a aVar = Result.f60901b;
        iVar.resumeWith(Result.d(kotlin.f.a(g0())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction<Unit> K(Function1<? super E, Unit> function1) {
        return new BufferedChannel$bindCancellationFun$2(this);
    }

    private final void K0(pt.i<?> iVar) {
        iVar.e(BufferedChannelKt.z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(Function1 function1, Object obj, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        u.a(function1, obj, coroutineContext);
        return Unit.f60915a;
    }

    private final Object L0(E e10, rs.c<? super Unit> cVar) {
        UndeliveredElementException c10;
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        Function1<E, Unit> function1 = this.f61331b;
        if (function1 != null && (c10 = u.c(function1, e10, null, 2, null)) != null) {
            ms.d.a(c10, k0());
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(kotlin.f.a(c10)));
        } else {
            Throwable k02 = k0();
            Result.a aVar2 = Result.f60901b;
            eVar.resumeWith(Result.d(kotlin.f.a(k02)));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KFunction<Unit> M(Function1<? super E, Unit> function1) {
        return new BufferedChannel$bindCancellationFunResult$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M0(E e10, gt.i<? super Unit> iVar) {
        Function1<E, Unit> function1 = this.f61331b;
        if (function1 != null) {
            u.a(function1, e10, iVar.getContext());
        }
        Throwable k02 = k0();
        Result.a aVar = Result.f60901b;
        iVar.resumeWith(Result.d(kotlin.f.a(k02)));
    }

    private final boolean N(long j10) {
        if (j10 >= b0() && j10 >= j0() + this.f61330a) {
            return false;
        }
        return true;
    }

    private final void P(kotlinx.coroutines.channels.b<E> bVar, long j10) {
        a0 a0Var;
        Object b10 = j.b(null, 1, null);
        loop0: while (bVar != null) {
            for (int i10 = BufferedChannelKt.f61351b - 1; -1 < i10; i10--) {
                if ((bVar.f62709c * BufferedChannelKt.f61351b) + i10 < j10) {
                    break loop0;
                }
                while (true) {
                    Object B = bVar.B(i10);
                    if (B != null) {
                        a0Var = BufferedChannelKt.f61354e;
                        if (B != a0Var) {
                            if (B instanceof i) {
                                if (bVar.v(i10, B, BufferedChannelKt.z())) {
                                    b10 = j.c(b10, ((i) B).f61388a);
                                    bVar.C(i10, true);
                                    break;
                                }
                            } else if (!(B instanceof y1)) {
                                break;
                            } else if (bVar.v(i10, B, BufferedChannelKt.z())) {
                                b10 = j.c(b10, B);
                                bVar.C(i10, true);
                                break;
                            }
                        }
                    }
                    if (bVar.v(i10, B, BufferedChannelKt.z())) {
                        bVar.t();
                        break;
                    }
                }
            }
            bVar = (kotlinx.coroutines.channels.b) bVar.h();
        }
        if (b10 != null) {
            if (!(b10 instanceof ArrayList)) {
                a1((y1) b10);
                return;
            }
            Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ArrayList arrayList = (ArrayList) b10;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                a1((y1) arrayList.get(size));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n P0(final BufferedChannel bufferedChannel, final pt.i iVar, Object obj, final Object obj2) {
        return new n() { // from class: jt.c
            @Override // at.n
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                Unit Q0;
                Q0 = BufferedChannel.Q0(obj2, bufferedChannel, iVar, (Throwable) obj3, obj4, (CoroutineContext) obj5);
                return Q0;
            }
        };
    }

    private final kotlinx.coroutines.channels.b<E> Q() {
        kotlinx.coroutines.channels.b bVar = f61327j.get(this);
        kotlinx.coroutines.channels.b bVar2 = (kotlinx.coroutines.channels.b) f61325h.get(this);
        if (bVar2.f62709c > ((kotlinx.coroutines.channels.b) bVar).f62709c) {
            bVar = bVar2;
        }
        kotlinx.coroutines.channels.b bVar3 = (kotlinx.coroutines.channels.b) f61326i.get(this);
        if (bVar3.f62709c > ((kotlinx.coroutines.channels.b) bVar).f62709c) {
            bVar = bVar3;
        }
        return (kotlinx.coroutines.channels.b) mt.b.b((mt.c) bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(Object obj, BufferedChannel bufferedChannel, pt.i iVar, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        if (obj != BufferedChannelKt.z()) {
            u.a(bufferedChannel.f61331b, obj, iVar.getContext());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0(y1 y1Var, kotlinx.coroutines.channels.b<E> bVar, int i10) {
        O0();
        y1Var.g(bVar, i10);
    }

    private final void S(long j10) {
        Z0(T(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S0(y1 y1Var, kotlinx.coroutines.channels.b<E> bVar, int i10) {
        y1Var.g(bVar, i10 + BufferedChannelKt.f61351b);
    }

    private final kotlinx.coroutines.channels.b<E> T(long j10) {
        kotlinx.coroutines.channels.b<E> Q = Q();
        if (y0()) {
            long A0 = A0(Q);
            if (A0 != -1) {
                V(A0);
            }
        }
        P(Q, j10);
        return Q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object T0(Object obj, Object obj2) {
        Object c10;
        if (obj2 == BufferedChannelKt.z()) {
            c10 = kotlinx.coroutines.channels.a.f61379b.a(d0());
        } else {
            c10 = kotlinx.coroutines.channels.a.f61379b.c(obj2);
        }
        return kotlinx.coroutines.channels.a.b(c10);
    }

    private final void U() {
        o();
    }

    static /* synthetic */ <E> Object U0(BufferedChannel<E> bufferedChannel, rs.c<? super E> cVar) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        kotlinx.coroutines.channels.b<E> bVar = (kotlinx.coroutines.channels.b) r().get(bufferedChannel);
        while (!bufferedChannel.v0()) {
            long andIncrement = s().getAndIncrement(bufferedChannel);
            int i10 = BufferedChannelKt.f61351b;
            long j10 = andIncrement / i10;
            int i11 = (int) (andIncrement % i10);
            if (bVar.f62709c != j10) {
                kotlinx.coroutines.channels.b<E> Y = bufferedChannel.Y(j10, bVar);
                if (Y == null) {
                    continue;
                } else {
                    bVar = Y;
                }
            }
            Object l12 = bufferedChannel.l1(bVar, i11, andIncrement, null);
            a0Var = BufferedChannelKt.f61362m;
            if (l12 != a0Var) {
                a0Var2 = BufferedChannelKt.f61364o;
                if (l12 != a0Var2) {
                    a0Var3 = BufferedChannelKt.f61363n;
                    if (l12 == a0Var3) {
                        return bufferedChannel.X0(bVar, i11, andIncrement, cVar);
                    }
                    bVar.c();
                    return l12;
                } else if (andIncrement < bufferedChannel.n0()) {
                    bVar.c();
                }
            } else {
                throw new IllegalStateException("unexpected");
            }
        }
        throw z.a(bufferedChannel.g0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <E> java.lang.Object V0(kotlinx.coroutines.channels.BufferedChannel<E> r13, rs.c<? super kotlinx.coroutines.channels.a<? extends E>> r14) {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            if (r0 == 0) goto L14
            r0 = r14
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1) r0
            int r1 = r0.f61342j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f61342j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.f61340h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f61342j
            r2 = 1
            if (r1 == 0) goto L3a
            if (r1 != r2) goto L32
            kotlin.f.b(r14)
            kotlinx.coroutines.channels.a r14 = (kotlinx.coroutines.channels.a) r14
            java.lang.Object r13 = r14.k()
            goto Lb2
        L32:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3a:
            kotlin.f.b(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = r()
            java.lang.Object r14 = r14.get(r13)
            kotlinx.coroutines.channels.b r14 = (kotlinx.coroutines.channels.b) r14
        L47:
            boolean r1 = r13.v0()
            if (r1 == 0) goto L58
            kotlinx.coroutines.channels.a$b r14 = kotlinx.coroutines.channels.a.f61379b
            java.lang.Throwable r13 = r13.d0()
            java.lang.Object r13 = r14.a(r13)
            goto Lb2
        L58:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = s()
            long r4 = r1.getAndIncrement(r13)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.f61351b
            long r7 = (long) r1
            long r7 = r4 / r7
            long r9 = (long) r1
            long r9 = r4 % r9
            int r3 = (int) r9
            long r9 = r14.f62709c
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L77
            kotlinx.coroutines.channels.b r1 = k(r13, r7, r14)
            if (r1 != 0) goto L76
            goto L47
        L76:
            r14 = r1
        L77:
            r12 = 0
            r7 = r13
            r8 = r14
            r9 = r3
            r10 = r4
            java.lang.Object r1 = H(r7, r8, r9, r10, r12)
            mt.a0 r7 = kotlinx.coroutines.channels.BufferedChannelKt.r()
            if (r1 == r7) goto Lb3
            mt.a0 r7 = kotlinx.coroutines.channels.BufferedChannelKt.h()
            if (r1 != r7) goto L98
            long r7 = r13.n0()
            int r1 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r1 >= 0) goto L47
            r14.c()
            goto L47
        L98:
            mt.a0 r7 = kotlinx.coroutines.channels.BufferedChannelKt.s()
            if (r1 != r7) goto La9
            r6.f61342j = r2
            r1 = r13
            r2 = r14
            java.lang.Object r13 = r1.W0(r2, r3, r4, r6)
            if (r13 != r0) goto Lb2
            return r0
        La9:
            r14.c()
            kotlinx.coroutines.channels.a$b r13 = kotlinx.coroutines.channels.a.f61379b
            java.lang.Object r13 = r13.c(r1)
        Lb2:
            return r13
        Lb3:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.V0(kotlinx.coroutines.channels.BufferedChannel, rs.c):java.lang.Object");
    }

    private final void W() {
        if (z0()) {
            return;
        }
        kotlinx.coroutines.channels.b<E> bVar = (kotlinx.coroutines.channels.b) f61327j.get(this);
        while (true) {
            long andIncrement = f61323f.getAndIncrement(this);
            int i10 = BufferedChannelKt.f61351b;
            long j10 = andIncrement / i10;
            if (n0() <= andIncrement) {
                if (bVar.f62709c < j10 && bVar.f() != 0) {
                    E0(j10, bVar);
                }
                r0(this, 0L, 1, null);
                return;
            }
            if (bVar.f62709c != j10) {
                kotlinx.coroutines.channels.b<E> X = X(j10, bVar, andIncrement);
                if (X == null) {
                    continue;
                } else {
                    bVar = X;
                }
            }
            if (j1(bVar, (int) (andIncrement % i10), andIncrement)) {
                r0(this, 0L, 1, null);
                return;
            }
            r0(this, 0L, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object W0(kotlinx.coroutines.channels.b<E> r11, int r12, long r13, rs.c<? super kotlinx.coroutines.channels.a<? extends E>> r15) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.W0(kotlinx.coroutines.channels.b, int, long, rs.c):java.lang.Object");
    }

    private final kotlinx.coroutines.channels.b<E> X(long j10, kotlinx.coroutines.channels.b<E> bVar, long j11) {
        Object c10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61327j;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            c10 = mt.b.c(bVar, j10, function2);
            if (!y.c(c10)) {
                x b10 = y.b(c10);
                while (true) {
                    x xVar = (x) atomicReferenceFieldUpdater.get(this);
                    if (xVar.f62709c >= b10.f62709c) {
                        break loop0;
                    } else if (!b10.u()) {
                        break;
                    } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar, b10)) {
                        if (xVar.p()) {
                            xVar.n();
                        }
                    } else if (b10.p()) {
                        b10.n();
                    }
                }
            } else {
                break;
            }
        }
        if (y.c(c10)) {
            U();
            E0(j10, bVar);
            r0(this, 0L, 1, null);
            return null;
        }
        kotlinx.coroutines.channels.b<E> bVar2 = (kotlinx.coroutines.channels.b) y.b(c10);
        if (bVar2.f62709c > j10) {
            long j12 = bVar2.f62709c;
            int i10 = BufferedChannelKt.f61351b;
            if (f61323f.compareAndSet(this, j11 + 1, j12 * i10)) {
                q0((bVar2.f62709c * i10) - j11);
                return null;
            }
            r0(this, 0L, 1, null);
            return null;
        }
        return bVar2;
    }

    private final Object X0(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10, rs.c<? super E> cVar) {
        a0 a0Var;
        a0 a0Var2;
        n nVar;
        a0 a0Var3;
        a0 a0Var4;
        a0 a0Var5;
        kotlinx.coroutines.e b10 = l.b(kotlin.coroutines.intrinsics.a.c(cVar));
        try {
            Object l12 = l1(bVar, i10, j10, b10);
            a0Var = BufferedChannelKt.f61362m;
            if (l12 == a0Var) {
                R0(b10, bVar, i10);
            } else {
                a0Var2 = BufferedChannelKt.f61364o;
                KFunction kFunction = null;
                KFunction kFunction2 = null;
                kotlinx.coroutines.e eVar = null;
                if (l12 == a0Var2) {
                    if (j10 < n0()) {
                        bVar.c();
                    }
                    kotlinx.coroutines.channels.b bVar2 = (kotlinx.coroutines.channels.b) r().get(this);
                    while (true) {
                        if (v0()) {
                            J0(b10);
                            break;
                        }
                        long andIncrement = s().getAndIncrement(this);
                        int i11 = BufferedChannelKt.f61351b;
                        long j11 = andIncrement / i11;
                        int i12 = (int) (andIncrement % i11);
                        if (bVar2.f62709c != j11) {
                            kotlinx.coroutines.channels.b Y = Y(j11, bVar2);
                            if (Y != null) {
                                bVar2 = Y;
                            }
                        }
                        l12 = l1(bVar2, i12, andIncrement, b10);
                        a0Var3 = BufferedChannelKt.f61362m;
                        if (l12 != a0Var3) {
                            a0Var4 = BufferedChannelKt.f61364o;
                            if (l12 != a0Var4) {
                                a0Var5 = BufferedChannelKt.f61363n;
                                if (l12 != a0Var5) {
                                    bVar2.c();
                                    Function1<E, Unit> function1 = this.f61331b;
                                    if (function1 != null) {
                                        kFunction2 = K(function1);
                                    }
                                    nVar = (n) kFunction2;
                                } else {
                                    throw new IllegalStateException("unexpected");
                                }
                            } else if (andIncrement < n0()) {
                                bVar2.c();
                            }
                        } else {
                            if (b10 != null) {
                                eVar = b10;
                            }
                            if (eVar != null) {
                                R0(eVar, bVar2, i12);
                            }
                        }
                    }
                } else {
                    bVar.c();
                    Function1<E, Unit> function12 = this.f61331b;
                    if (function12 != null) {
                        kFunction = K(function12);
                    }
                    nVar = (n) kFunction;
                }
                b10.y(l12, nVar);
            }
            Object B = b10.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
            return B;
        } catch (Throwable th2) {
            b10.P();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.channels.b<E> Y(long j10, kotlinx.coroutines.channels.b<E> bVar) {
        Object c10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61326i;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            c10 = mt.b.c(bVar, j10, function2);
            if (!y.c(c10)) {
                x b10 = y.b(c10);
                while (true) {
                    x xVar = (x) atomicReferenceFieldUpdater.get(this);
                    if (xVar.f62709c >= b10.f62709c) {
                        break loop0;
                    } else if (!b10.u()) {
                        break;
                    } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar, b10)) {
                        if (xVar.p()) {
                            xVar.n();
                        }
                    } else if (b10.p()) {
                        b10.n();
                    }
                }
            } else {
                break;
            }
        }
        if (y.c(c10)) {
            U();
            if (bVar.f62709c * BufferedChannelKt.f61351b >= n0()) {
                return null;
            }
            bVar.c();
            return null;
        }
        kotlinx.coroutines.channels.b<E> bVar2 = (kotlinx.coroutines.channels.b) y.b(c10);
        if (!z0() && j10 <= b0() / BufferedChannelKt.f61351b) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f61327j;
            while (true) {
                x xVar2 = (x) atomicReferenceFieldUpdater2.get(this);
                if (xVar2.f62709c >= bVar2.f62709c || !bVar2.u()) {
                    break;
                } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, xVar2, bVar2)) {
                    if (xVar2.p()) {
                        xVar2.n();
                    }
                } else if (bVar2.p()) {
                    bVar2.n();
                }
            }
        }
        long j11 = bVar2.f62709c;
        if (j11 > j10) {
            int i10 = BufferedChannelKt.f61351b;
            p1(j11 * i10);
            if (bVar2.f62709c * i10 >= n0()) {
                return null;
            }
            bVar2.c();
            return null;
        }
        return bVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0(pt.i<?> iVar, Object obj) {
        a0 a0Var;
        y1 y1Var;
        a0 a0Var2;
        a0 a0Var3;
        kotlinx.coroutines.channels.b bVar = (kotlinx.coroutines.channels.b) r().get(this);
        while (!v0()) {
            long andIncrement = s().getAndIncrement(this);
            int i10 = BufferedChannelKt.f61351b;
            long j10 = andIncrement / i10;
            int i11 = (int) (andIncrement % i10);
            if (bVar.f62709c != j10) {
                kotlinx.coroutines.channels.b Y = Y(j10, bVar);
                if (Y == null) {
                    continue;
                } else {
                    bVar = Y;
                }
            }
            Object l12 = l1(bVar, i11, andIncrement, iVar);
            a0Var = BufferedChannelKt.f61362m;
            if (l12 != a0Var) {
                a0Var2 = BufferedChannelKt.f61364o;
                if (l12 != a0Var2) {
                    a0Var3 = BufferedChannelKt.f61363n;
                    if (l12 != a0Var3) {
                        bVar.c();
                        iVar.e(l12);
                        return;
                    }
                    throw new IllegalStateException("unexpected");
                } else if (andIncrement < n0()) {
                    bVar.c();
                }
            } else {
                if (iVar instanceof y1) {
                    y1Var = (y1) iVar;
                } else {
                    y1Var = null;
                }
                if (y1Var != null) {
                    R0(y1Var, bVar, i11);
                    return;
                }
                return;
            }
        }
        K0(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.channels.b<E> Z(long j10, kotlinx.coroutines.channels.b<E> bVar) {
        Object c10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61325h;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        loop0: while (true) {
            c10 = mt.b.c(bVar, j10, function2);
            if (!y.c(c10)) {
                x b10 = y.b(c10);
                while (true) {
                    x xVar = (x) atomicReferenceFieldUpdater.get(this);
                    if (xVar.f62709c >= b10.f62709c) {
                        break loop0;
                    } else if (!b10.u()) {
                        break;
                    } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar, b10)) {
                        if (xVar.p()) {
                            xVar.n();
                        }
                    } else if (b10.p()) {
                        b10.n();
                    }
                }
            } else {
                break;
            }
        }
        if (y.c(c10)) {
            U();
            if (bVar.f62709c * BufferedChannelKt.f61351b >= j0()) {
                return null;
            }
            bVar.c();
            return null;
        }
        kotlinx.coroutines.channels.b<E> bVar2 = (kotlinx.coroutines.channels.b) y.b(c10);
        long j11 = bVar2.f62709c;
        if (j11 > j10) {
            int i10 = BufferedChannelKt.f61351b;
            q1(j11 * i10);
            if (bVar2.f62709c * i10 >= j0()) {
                return null;
            }
            bVar2.c();
            return null;
        }
        return bVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
        r12 = (kotlinx.coroutines.channels.b) r12.h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void Z0(kotlinx.coroutines.channels.b<E> r12) {
        /*
            r11 = this;
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r0 = r11.f61331b
            r1 = 0
            r2 = 1
            java.lang.Object r3 = mt.j.b(r1, r2, r1)
        L8:
            int r4 = kotlinx.coroutines.channels.BufferedChannelKt.f61351b
            int r4 = r4 - r2
        Lb:
            r5 = -1
            if (r5 >= r4) goto Lb3
            long r6 = r12.f62709c
            int r8 = kotlinx.coroutines.channels.BufferedChannelKt.f61351b
            long r8 = (long) r8
            long r6 = r6 * r8
            long r8 = (long) r4
            long r6 = r6 + r8
        L16:
            java.lang.Object r8 = r12.B(r4)
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.f()
            if (r8 == r9) goto Lbb
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.f61353d
            if (r8 != r9) goto L48
            long r9 = r11.j0()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r8 = r12.v(r4, r8, r9)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L40
            java.lang.Object r5 = r12.A(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = mt.u.b(r0, r5, r1)
        L40:
            r12.w(r4)
            r12.t()
            goto Laf
        L48:
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.k()
            if (r8 == r9) goto La2
            if (r8 != 0) goto L51
            goto La2
        L51:
            boolean r9 = r8 instanceof gt.y1
            if (r9 != 0) goto L6e
            boolean r9 = r8 instanceof kotlinx.coroutines.channels.i
            if (r9 == 0) goto L5a
            goto L6e
        L5a:
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.p()
            if (r8 == r9) goto Lbb
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.q()
            if (r8 != r9) goto L67
            goto Lbb
        L67:
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.p()
            if (r8 == r9) goto L16
            goto Laf
        L6e:
            long r9 = r11.j0()
            int r9 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r9 < 0) goto Lbb
            boolean r9 = r8 instanceof kotlinx.coroutines.channels.i
            if (r9 == 0) goto L80
            r9 = r8
            kotlinx.coroutines.channels.i r9 = (kotlinx.coroutines.channels.i) r9
            gt.y1 r9 = r9.f61388a
            goto L83
        L80:
            r9 = r8
            gt.y1 r9 = (gt.y1) r9
        L83:
            mt.a0 r10 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r8 = r12.v(r4, r8, r10)
            if (r8 == 0) goto L16
            if (r0 == 0) goto L97
            java.lang.Object r5 = r12.A(r4)
            kotlinx.coroutines.internal.UndeliveredElementException r1 = mt.u.b(r0, r5, r1)
        L97:
            java.lang.Object r3 = mt.j.c(r3, r9)
            r12.w(r4)
            r12.t()
            goto Laf
        La2:
            mt.a0 r9 = kotlinx.coroutines.channels.BufferedChannelKt.z()
            boolean r8 = r12.v(r4, r8, r9)
            if (r8 == 0) goto L16
            r12.t()
        Laf:
            int r4 = r4 + (-1)
            goto Lb
        Lb3:
            mt.c r12 = r12.h()
            kotlinx.coroutines.channels.b r12 = (kotlinx.coroutines.channels.b) r12
            if (r12 != 0) goto L8
        Lbb:
            if (r3 == 0) goto Le1
            boolean r12 = r3 instanceof java.util.ArrayList
            if (r12 != 0) goto Lc7
            gt.y1 r3 = (gt.y1) r3
            r11.b1(r3)
            goto Le1
        Lc7:
            java.lang.String r12 = "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r12)
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r12 = r3.size()
            int r12 = r12 - r2
        Ld3:
            if (r5 >= r12) goto Le1
            java.lang.Object r0 = r3.get(r12)
            gt.y1 r0 = (gt.y1) r0
            r11.b1(r0)
            int r12 = r12 + (-1)
            goto Ld3
        Le1:
            if (r1 != 0) goto Le4
            return
        Le4:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.Z0(kotlinx.coroutines.channels.b):void");
    }

    private final void a1(y1 y1Var) {
        c1(y1Var, true);
    }

    private final long b0() {
        return f61323f.get(this);
    }

    private final void b1(y1 y1Var) {
        c1(y1Var, false);
    }

    private final void c1(y1 y1Var, boolean z10) {
        Throwable k02;
        if (y1Var instanceof b) {
            gt.i<Boolean> a10 = ((b) y1Var).a();
            Result.a aVar = Result.f60901b;
            a10.resumeWith(Result.d(Boolean.FALSE));
        } else if (y1Var instanceof gt.i) {
            rs.c cVar = (rs.c) y1Var;
            Result.a aVar2 = Result.f60901b;
            if (z10) {
                k02 = g0();
            } else {
                k02 = k0();
            }
            cVar.resumeWith(Result.d(kotlin.f.a(k02)));
        } else if (y1Var instanceof g) {
            kotlinx.coroutines.e<kotlinx.coroutines.channels.a<? extends E>> eVar = ((g) y1Var).f61387a;
            Result.a aVar3 = Result.f60901b;
            eVar.resumeWith(Result.d(kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.f61379b.a(d0()))));
        } else if (y1Var instanceof a) {
            ((a) y1Var).j();
        } else if (y1Var instanceof pt.i) {
            ((pt.i) y1Var).f(this, BufferedChannelKt.z());
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + y1Var).toString());
        }
    }

    static /* synthetic */ <E> Object d1(BufferedChannel<E> bufferedChannel, E e10, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.channels.b<E> bVar = (kotlinx.coroutines.channels.b) t().get(bufferedChannel);
        while (true) {
            long andIncrement = u().getAndIncrement(bufferedChannel);
            long j10 = 1152921504606846975L & andIncrement;
            boolean x02 = bufferedChannel.x0(andIncrement);
            int i10 = BufferedChannelKt.f61351b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (bVar.f62709c != j11) {
                kotlinx.coroutines.channels.b<E> Z = bufferedChannel.Z(j11, bVar);
                if (Z == null) {
                    if (x02) {
                        Object L0 = bufferedChannel.L0(e10, cVar);
                        if (L0 == kotlin.coroutines.intrinsics.a.f()) {
                            return L0;
                        }
                    }
                } else {
                    bVar = Z;
                }
            }
            int n12 = bufferedChannel.n1(bVar, i11, e10, j10, null, x02);
            if (n12 != 0) {
                if (n12 == 1) {
                    break;
                } else if (n12 != 2) {
                    if (n12 != 3) {
                        if (n12 != 4) {
                            if (n12 == 5) {
                                bVar.c();
                            }
                        } else {
                            if (j10 < bufferedChannel.j0()) {
                                bVar.c();
                            }
                            Object L02 = bufferedChannel.L0(e10, cVar);
                            if (L02 == kotlin.coroutines.intrinsics.a.f()) {
                                return L02;
                            }
                        }
                    } else {
                        Object e12 = bufferedChannel.e1(bVar, i11, e10, j10, cVar);
                        if (e12 == kotlin.coroutines.intrinsics.a.f()) {
                            return e12;
                        }
                    }
                } else if (x02) {
                    bVar.t();
                    Object L03 = bufferedChannel.L0(e10, cVar);
                    if (L03 == kotlin.coroutines.intrinsics.a.f()) {
                        return L03;
                    }
                }
            } else {
                bVar.c();
                break;
            }
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object e1(kotlinx.coroutines.channels.b<E> r21, int r22, E r23, long r24, rs.c<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.e1(kotlinx.coroutines.channels.b, int, java.lang.Object, long, rs.c):java.lang.Object");
    }

    private final boolean f1(long j10) {
        if (x0(j10)) {
            return false;
        }
        return !N(j10 & 1152921504606846975L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable g0() {
        Throwable d02 = d0();
        if (d02 == null) {
            return new ClosedReceiveChannelException("Channel was closed");
        }
        return d02;
    }

    private final boolean g1(Object obj, E e10) {
        boolean B;
        boolean B2;
        if (obj instanceof pt.i) {
            return ((pt.i) obj).f(this, e10);
        }
        KFunction<Unit> kFunction = null;
        if (obj instanceof g) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            kotlinx.coroutines.e<kotlinx.coroutines.channels.a<? extends E>> eVar = ((g) obj).f61387a;
            kotlinx.coroutines.channels.a b10 = kotlinx.coroutines.channels.a.b(kotlinx.coroutines.channels.a.f61379b.c(e10));
            Function1<E, Unit> function1 = this.f61331b;
            if (function1 != null) {
                kFunction = M(function1);
            }
            B2 = BufferedChannelKt.B(eVar, b10, (n) kFunction);
            return B2;
        } else if (obj instanceof a) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).i(e10);
        } else if (obj instanceof gt.i) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            gt.i iVar = (gt.i) obj;
            Function1<E, Unit> function12 = this.f61331b;
            if (function12 != null) {
                kFunction = K(function12);
            }
            B = BufferedChannelKt.B(iVar, e10, (n) kFunction);
            return B;
        } else {
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
    }

    private final boolean h1(Object obj, kotlinx.coroutines.channels.b<E> bVar, int i10) {
        if (obj instanceof gt.i) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.C((gt.i) obj, Unit.f60915a, null, 2, null);
        } else if (obj instanceof pt.i) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult x10 = ((SelectImplementation) obj).x(this, Unit.f60915a);
            if (x10 == TrySelectDetailedResult.REREGISTER) {
                bVar.w(i10);
            }
            if (x10 == TrySelectDetailedResult.SUCCESSFUL) {
                return true;
            }
            return false;
        } else if (obj instanceof b) {
            return BufferedChannelKt.C(((b) obj).a(), Boolean.TRUE, null, 2, null);
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
    }

    private final boolean j1(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10) {
        a0 a0Var;
        a0 a0Var2;
        Object B = bVar.B(i10);
        if ((B instanceof y1) && j10 >= f61322e.get(this)) {
            a0Var = BufferedChannelKt.f61356g;
            if (bVar.v(i10, B, a0Var)) {
                if (!h1(B, bVar, i10)) {
                    a0Var2 = BufferedChannelKt.f61359j;
                    bVar.F(i10, a0Var2);
                    bVar.C(i10, false);
                    return false;
                }
                bVar.F(i10, BufferedChannelKt.f61353d);
                return true;
            }
        }
        return k1(bVar, i10, j10);
    }

    private final boolean k1(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        a0 a0Var5;
        a0 a0Var6;
        a0 a0Var7;
        a0 a0Var8;
        while (true) {
            Object B = bVar.B(i10);
            if (!(B instanceof y1)) {
                a0Var3 = BufferedChannelKt.f61359j;
                if (B == a0Var3) {
                    return false;
                }
                if (B == null) {
                    a0Var4 = BufferedChannelKt.f61354e;
                    if (bVar.v(i10, B, a0Var4)) {
                        return true;
                    }
                } else if (B != BufferedChannelKt.f61353d) {
                    a0Var5 = BufferedChannelKt.f61357h;
                    if (B == a0Var5) {
                        break;
                    }
                    a0Var6 = BufferedChannelKt.f61358i;
                    if (B == a0Var6) {
                        break;
                    }
                    a0Var7 = BufferedChannelKt.f61360k;
                    if (B != a0Var7 && B != BufferedChannelKt.z()) {
                        a0Var8 = BufferedChannelKt.f61355f;
                        if (B != a0Var8) {
                            throw new IllegalStateException(("Unexpected cell state: " + B).toString());
                        }
                    } else {
                        return true;
                    }
                } else {
                    return true;
                }
            } else if (j10 >= f61322e.get(this)) {
                a0Var = BufferedChannelKt.f61356g;
                if (bVar.v(i10, B, a0Var)) {
                    if (!h1(B, bVar, i10)) {
                        a0Var2 = BufferedChannelKt.f61359j;
                        bVar.F(i10, a0Var2);
                        bVar.C(i10, false);
                        return false;
                    }
                    bVar.F(i10, BufferedChannelKt.f61353d);
                    return true;
                }
            } else if (bVar.v(i10, B, new i((y1) B))) {
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object l1(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10, Object obj) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        Object B = bVar.B(i10);
        if (B == null) {
            if (j10 >= (f61321d.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    a0Var3 = BufferedChannelKt.f61363n;
                    return a0Var3;
                } else if (bVar.v(i10, B, obj)) {
                    W();
                    a0Var2 = BufferedChannelKt.f61362m;
                    return a0Var2;
                }
            }
        } else if (B == BufferedChannelKt.f61353d) {
            a0Var = BufferedChannelKt.f61358i;
            if (bVar.v(i10, B, a0Var)) {
                W();
                return bVar.D(i10);
            }
        }
        return m1(bVar, i10, j10, obj);
    }

    private final Object m1(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10, Object obj) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        a0 a0Var5;
        a0 a0Var6;
        a0 a0Var7;
        a0 a0Var8;
        a0 a0Var9;
        a0 a0Var10;
        a0 a0Var11;
        a0 a0Var12;
        a0 a0Var13;
        a0 a0Var14;
        a0 a0Var15;
        a0 a0Var16;
        while (true) {
            Object B = bVar.B(i10);
            if (B != null) {
                a0Var5 = BufferedChannelKt.f61354e;
                if (B != a0Var5) {
                    if (B == BufferedChannelKt.f61353d) {
                        a0Var6 = BufferedChannelKt.f61358i;
                        if (bVar.v(i10, B, a0Var6)) {
                            W();
                            return bVar.D(i10);
                        }
                    } else {
                        a0Var7 = BufferedChannelKt.f61359j;
                        if (B == a0Var7) {
                            a0Var8 = BufferedChannelKt.f61364o;
                            return a0Var8;
                        }
                        a0Var9 = BufferedChannelKt.f61357h;
                        if (B == a0Var9) {
                            a0Var10 = BufferedChannelKt.f61364o;
                            return a0Var10;
                        } else if (B != BufferedChannelKt.z()) {
                            a0Var12 = BufferedChannelKt.f61356g;
                            if (B != a0Var12) {
                                a0Var13 = BufferedChannelKt.f61355f;
                                if (bVar.v(i10, B, a0Var13)) {
                                    boolean z10 = B instanceof i;
                                    if (z10) {
                                        B = ((i) B).f61388a;
                                    }
                                    if (h1(B, bVar, i10)) {
                                        a0Var16 = BufferedChannelKt.f61358i;
                                        bVar.F(i10, a0Var16);
                                        W();
                                        return bVar.D(i10);
                                    }
                                    a0Var14 = BufferedChannelKt.f61359j;
                                    bVar.F(i10, a0Var14);
                                    bVar.C(i10, false);
                                    if (z10) {
                                        W();
                                    }
                                    a0Var15 = BufferedChannelKt.f61364o;
                                    return a0Var15;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            W();
                            a0Var11 = BufferedChannelKt.f61364o;
                            return a0Var11;
                        }
                    }
                }
            }
            if (j10 < (f61321d.get(this) & 1152921504606846975L)) {
                a0Var = BufferedChannelKt.f61357h;
                if (bVar.v(i10, B, a0Var)) {
                    W();
                    a0Var2 = BufferedChannelKt.f61364o;
                    return a0Var2;
                }
            } else if (obj == null) {
                a0Var3 = BufferedChannelKt.f61363n;
                return a0Var3;
            } else if (bVar.v(i10, B, obj)) {
                W();
                a0Var4 = BufferedChannelKt.f61362m;
                return a0Var4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int n1(kotlinx.coroutines.channels.b<E> bVar, int i10, E e10, long j10, Object obj, boolean z10) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        bVar.G(i10, e10);
        if (z10) {
            return o1(bVar, i10, e10, j10, obj, z10);
        }
        Object B = bVar.B(i10);
        if (B == null) {
            if (N(j10)) {
                if (bVar.v(i10, null, BufferedChannelKt.f61353d)) {
                    return 1;
                }
            } else if (obj == null) {
                return 3;
            } else {
                if (bVar.v(i10, null, obj)) {
                    return 2;
                }
            }
        } else if (B instanceof y1) {
            bVar.w(i10);
            if (g1(B, e10)) {
                a0Var3 = BufferedChannelKt.f61358i;
                bVar.F(i10, a0Var3);
                N0();
                return 0;
            }
            a0Var = BufferedChannelKt.f61360k;
            Object x10 = bVar.x(i10, a0Var);
            a0Var2 = BufferedChannelKt.f61360k;
            if (x10 != a0Var2) {
                bVar.C(i10, true);
            }
            return 5;
        }
        return o1(bVar, i10, e10, j10, obj, z10);
    }

    private final int o1(kotlinx.coroutines.channels.b<E> bVar, int i10, E e10, long j10, Object obj, boolean z10) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        a0 a0Var5;
        a0 a0Var6;
        a0 a0Var7;
        while (true) {
            Object B = bVar.B(i10);
            if (B != null) {
                a0Var2 = BufferedChannelKt.f61354e;
                if (B != a0Var2) {
                    a0Var3 = BufferedChannelKt.f61360k;
                    if (B != a0Var3) {
                        a0Var4 = BufferedChannelKt.f61357h;
                        if (B == a0Var4) {
                            bVar.w(i10);
                            return 5;
                        } else if (B == BufferedChannelKt.z()) {
                            bVar.w(i10);
                            U();
                            return 4;
                        } else {
                            bVar.w(i10);
                            if (B instanceof i) {
                                B = ((i) B).f61388a;
                            }
                            if (g1(B, e10)) {
                                a0Var7 = BufferedChannelKt.f61358i;
                                bVar.F(i10, a0Var7);
                                N0();
                                return 0;
                            }
                            a0Var5 = BufferedChannelKt.f61360k;
                            Object x10 = bVar.x(i10, a0Var5);
                            a0Var6 = BufferedChannelKt.f61360k;
                            if (x10 != a0Var6) {
                                bVar.C(i10, true);
                            }
                            return 5;
                        }
                    }
                    bVar.w(i10);
                    return 5;
                } else if (bVar.v(i10, B, BufferedChannelKt.f61353d)) {
                    return 1;
                }
            } else if (N(j10) && !z10) {
                if (bVar.v(i10, null, BufferedChannelKt.f61353d)) {
                    return 1;
                }
            } else if (z10) {
                a0Var = BufferedChannelKt.f61359j;
                if (bVar.v(i10, null, a0Var)) {
                    bVar.C(i10, false);
                    return 4;
                }
            } else if (obj == null) {
                return 3;
            } else {
                if (bVar.v(i10, null, obj)) {
                    return 2;
                }
            }
        }
    }

    private final void p1(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61322e;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (j11 >= j10) {
                return;
            }
        } while (!f61322e.compareAndSet(this, j11, j10));
    }

    private final void q0(long j10) {
        if ((f61324g.addAndGet(this, j10) & SieveCacheKt.NodeVisitedBit) != 0) {
            do {
            } while ((f61324g.get(this) & SieveCacheKt.NodeVisitedBit) != 0);
        }
    }

    private final void q1(long j10) {
        long j11;
        long w10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61321d;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            long j12 = 1152921504606846975L & j11;
            if (j12 < j10) {
                w10 = BufferedChannelKt.w(j12, (int) (j11 >> 60));
            } else {
                return;
            }
        } while (!f61321d.compareAndSet(this, j11, w10));
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater r() {
        return f61326i;
    }

    static /* synthetic */ void r0(BufferedChannel bufferedChannel, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                j10 = 1;
            }
            bufferedChannel.q0(j10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
    }

    public static final /* synthetic */ AtomicLongFieldUpdater s() {
        return f61322e;
    }

    private final void s0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61329l;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.f61366q : BufferedChannelKt.f61367r));
        if (obj == null) {
            return;
        }
        Function1 function1 = (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 1);
        ((Function1) obj).invoke(d0());
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater t() {
        return f61325h;
    }

    private final boolean t0(kotlinx.coroutines.channels.b<E> bVar, int i10, long j10) {
        Object B;
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        a0 a0Var5;
        a0 a0Var6;
        a0 a0Var7;
        do {
            B = bVar.B(i10);
            if (B != null) {
                a0Var2 = BufferedChannelKt.f61354e;
                if (B != a0Var2) {
                    if (B != BufferedChannelKt.f61353d) {
                        a0Var3 = BufferedChannelKt.f61359j;
                        if (B != a0Var3 && B != BufferedChannelKt.z()) {
                            a0Var4 = BufferedChannelKt.f61358i;
                            if (B != a0Var4) {
                                a0Var5 = BufferedChannelKt.f61357h;
                                if (B != a0Var5) {
                                    a0Var6 = BufferedChannelKt.f61356g;
                                    if (B != a0Var6) {
                                        a0Var7 = BufferedChannelKt.f61355f;
                                        if (B == a0Var7 || j10 != j0()) {
                                            return false;
                                        }
                                        return true;
                                    }
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return true;
                }
            }
            a0Var = BufferedChannelKt.f61357h;
        } while (!bVar.v(i10, B, a0Var));
        W();
        return false;
    }

    public static final /* synthetic */ AtomicLongFieldUpdater u() {
        return f61321d;
    }

    private final boolean u0(long j10, boolean z10) {
        int i10 = (int) (j10 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                S(j10 & 1152921504606846975L);
            } else {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
        } else {
            T(j10 & 1152921504606846975L);
            if (z10 && p0()) {
                return false;
            }
        }
        return true;
    }

    private final boolean w0(long j10) {
        return u0(j10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean x0(long j10) {
        return u0(j10, false);
    }

    private final boolean z0() {
        long b02 = b0();
        if (b02 != 0 && b02 != Long.MAX_VALUE) {
            return false;
        }
        return true;
    }

    public boolean O(@Nullable Throwable th2) {
        if (th2 == null) {
            th2 = new CancellationException("Channel was cancelled");
        }
        return R(th2, true);
    }

    protected boolean R(@Nullable Throwable th2, boolean z10) {
        a0 a0Var;
        if (z10) {
            B0();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61328k;
        a0Var = BufferedChannelKt.f61368s;
        boolean a10 = androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, a0Var, th2);
        if (z10) {
            C0();
        } else {
            D0();
        }
        U();
        H0();
        if (a10) {
            s0();
        }
        return a10;
    }

    protected final void V(long j10) {
        a0 a0Var;
        UndeliveredElementException c10;
        kotlinx.coroutines.channels.b<E> bVar = (kotlinx.coroutines.channels.b) f61326i.get(this);
        while (true) {
            long j11 = f61322e.get(this);
            if (j10 < Math.max(this.f61330a + j11, b0())) {
                return;
            }
            if (f61322e.compareAndSet(this, j11, j11 + 1)) {
                int i10 = BufferedChannelKt.f61351b;
                long j12 = j11 / i10;
                int i11 = (int) (j11 % i10);
                if (bVar.f62709c != j12) {
                    kotlinx.coroutines.channels.b<E> Y = Y(j12, bVar);
                    if (Y == null) {
                        continue;
                    } else {
                        bVar = Y;
                    }
                }
                Object l12 = l1(bVar, i11, j11, null);
                a0Var = BufferedChannelKt.f61364o;
                if (l12 == a0Var) {
                    if (j11 < n0()) {
                        bVar.c();
                    }
                } else {
                    bVar.c();
                    Function1<E, Unit> function1 = this.f61331b;
                    if (function1 != null && (c10 = u.c(function1, l12, null, 2, null)) != null) {
                        throw c10;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.h
    public boolean a(@Nullable Throwable th2) {
        return R(th2, false);
    }

    @Override // kotlinx.coroutines.channels.h
    public void c(@NotNull Function1<? super Throwable, Unit> function1) {
        a0 a0Var;
        a0 a0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        a0 a0Var3;
        a0 a0Var4;
        if (!androidx.concurrent.futures.a.a(f61329l, this, null, function1)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f61329l;
            do {
                Object obj = atomicReferenceFieldUpdater2.get(this);
                a0Var = BufferedChannelKt.f61366q;
                if (obj == a0Var) {
                    atomicReferenceFieldUpdater = f61329l;
                    a0Var3 = BufferedChannelKt.f61366q;
                    a0Var4 = BufferedChannelKt.f61367r;
                } else {
                    a0Var2 = BufferedChannelKt.f61367r;
                    if (obj == a0Var2) {
                        throw new IllegalStateException("Another handler was already registered and successfully invoked");
                    }
                    throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
                }
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, a0Var3, a0Var4));
            function1.invoke(d0());
        }
    }

    @Override // jt.i
    public final void cancel(@Nullable CancellationException cancellationException) {
        O(cancellationException);
    }

    @Nullable
    protected final Throwable d0() {
        return (Throwable) f61328k.get(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
        return kotlinx.coroutines.channels.a.f61379b.c(kotlin.Unit.f60915a);
     */
    @Override // kotlinx.coroutines.channels.h
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object h(E r15) {
        /*
            r14 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = m0()
            long r0 = r0.get(r14)
            boolean r0 = r14.f1(r0)
            if (r0 == 0) goto L15
            kotlinx.coroutines.channels.a$b r15 = kotlinx.coroutines.channels.a.f61379b
            java.lang.Object r15 = r15.b()
            return r15
        L15:
            mt.a0 r8 = kotlinx.coroutines.channels.BufferedChannelKt.j()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = t()
            java.lang.Object r0 = r0.get(r14)
            kotlinx.coroutines.channels.b r0 = (kotlinx.coroutines.channels.b) r0
        L23:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = u()
            long r1 = r1.getAndIncrement(r14)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r9 = r1 & r3
            boolean r11 = v(r14, r1)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.f61351b
            long r2 = (long) r1
            long r2 = r9 / r2
            long r4 = (long) r1
            long r4 = r9 % r4
            int r12 = (int) r4
            long r4 = r0.f62709c
            int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r1 == 0) goto L5b
            kotlinx.coroutines.channels.b r1 = m(r14, r2, r0)
            if (r1 != 0) goto L59
            if (r11 == 0) goto L23
        L4d:
            kotlinx.coroutines.channels.a$b r15 = kotlinx.coroutines.channels.a.f61379b
            java.lang.Throwable r0 = r14.k0()
            java.lang.Object r15 = r15.a(r0)
            goto Lbc
        L59:
            r13 = r1
            goto L5c
        L5b:
            r13 = r0
        L5c:
            r0 = r14
            r1 = r13
            r2 = r12
            r3 = r15
            r4 = r9
            r6 = r8
            r7 = r11
            int r0 = I(r0, r1, r2, r3, r4, r6, r7)
            if (r0 == 0) goto Lb8
            r1 = 1
            if (r0 == r1) goto Laf
            r1 = 2
            if (r0 == r1) goto L92
            r1 = 3
            if (r0 == r1) goto L8a
            r1 = 4
            if (r0 == r1) goto L7e
            r1 = 5
            if (r0 == r1) goto L79
            goto L7c
        L79:
            r13.c()
        L7c:
            r0 = r13
            goto L23
        L7e:
            long r0 = r14.j0()
            int r15 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r15 >= 0) goto L4d
            r13.c()
            goto L4d
        L8a:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "unexpected"
            r15.<init>(r0)
            throw r15
        L92:
            if (r11 == 0) goto L98
            r13.t()
            goto L4d
        L98:
            boolean r15 = r8 instanceof gt.y1
            if (r15 == 0) goto L9f
            gt.y1 r8 = (gt.y1) r8
            goto La0
        L9f:
            r8 = 0
        La0:
            if (r8 == 0) goto La5
            D(r14, r8, r13, r12)
        La5:
            r13.t()
            kotlinx.coroutines.channels.a$b r15 = kotlinx.coroutines.channels.a.f61379b
            java.lang.Object r15 = r15.b()
            goto Lbc
        Laf:
            kotlinx.coroutines.channels.a$b r15 = kotlinx.coroutines.channels.a.f61379b
            kotlin.Unit r0 = kotlin.Unit.f60915a
            java.lang.Object r15 = r15.c(r0)
            goto Lbc
        Lb8:
            r13.c()
            goto Laf
        Lbc:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.h(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Object i1(E e10) {
        kotlinx.coroutines.channels.b bVar;
        y1 y1Var;
        a0 a0Var = BufferedChannelKt.f61353d;
        kotlinx.coroutines.channels.b bVar2 = (kotlinx.coroutines.channels.b) t().get(this);
        while (true) {
            long andIncrement = u().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean x02 = x0(andIncrement);
            int i10 = BufferedChannelKt.f61351b;
            long j11 = j10 / i10;
            int i11 = (int) (j10 % i10);
            if (bVar2.f62709c != j11) {
                kotlinx.coroutines.channels.b Z = Z(j11, bVar2);
                if (Z == null) {
                    if (x02) {
                        return kotlinx.coroutines.channels.a.f61379b.a(k0());
                    }
                } else {
                    bVar = Z;
                }
            } else {
                bVar = bVar2;
            }
            int n12 = n1(bVar, i11, e10, j10, a0Var, x02);
            if (n12 != 0) {
                if (n12 != 1) {
                    if (n12 != 2) {
                        if (n12 != 3) {
                            if (n12 != 4) {
                                if (n12 == 5) {
                                    bVar.c();
                                }
                                bVar2 = bVar;
                            } else {
                                if (j10 < j0()) {
                                    bVar.c();
                                }
                                return kotlinx.coroutines.channels.a.f61379b.a(k0());
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else if (x02) {
                        bVar.t();
                        return kotlinx.coroutines.channels.a.f61379b.a(k0());
                    } else {
                        if (a0Var instanceof y1) {
                            y1Var = (y1) a0Var;
                        } else {
                            y1Var = null;
                        }
                        if (y1Var != null) {
                            S0(y1Var, bVar, i11);
                        }
                        V((bVar.f62709c * i10) + i11);
                        return kotlinx.coroutines.channels.a.f61379b.c(Unit.f60915a);
                    }
                } else {
                    return kotlinx.coroutines.channels.a.f61379b.c(Unit.f60915a);
                }
            } else {
                bVar.c();
                return kotlinx.coroutines.channels.a.f61379b.c(Unit.f60915a);
            }
        }
    }

    @Override // jt.i
    @NotNull
    public jt.f<E> iterator() {
        return new a();
    }

    @Override // jt.i
    @NotNull
    public pt.d<kotlinx.coroutines.channels.a<E>> j() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.f61338a;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.f61339a;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new pt.e(this, (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$1, 3), (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$2, 3), this.f61332c);
    }

    public final long j0() {
        return f61322e.get(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Throwable k0() {
        Throwable d02 = d0();
        if (d02 == null) {
            return new ClosedSendChannelException("Channel was closed");
        }
        return d02;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // jt.i
    @NotNull
    public Object l() {
        a0 a0Var;
        kotlinx.coroutines.channels.b bVar;
        a0 a0Var2;
        y1 y1Var;
        a0 a0Var3;
        a0 a0Var4;
        long j10 = f61322e.get(this);
        long j11 = f61321d.get(this);
        if (w0(j11)) {
            return kotlinx.coroutines.channels.a.f61379b.a(d0());
        }
        if (j10 < (j11 & 1152921504606846975L)) {
            a0Var = BufferedChannelKt.f61360k;
            kotlinx.coroutines.channels.b bVar2 = (kotlinx.coroutines.channels.b) r().get(this);
            while (!v0()) {
                long andIncrement = s().getAndIncrement(this);
                int i10 = BufferedChannelKt.f61351b;
                long j12 = andIncrement / i10;
                int i11 = (int) (andIncrement % i10);
                if (bVar2.f62709c != j12) {
                    kotlinx.coroutines.channels.b Y = Y(j12, bVar2);
                    if (Y == null) {
                        continue;
                    } else {
                        bVar = Y;
                    }
                } else {
                    bVar = bVar2;
                }
                Object l12 = l1(bVar, i11, andIncrement, a0Var);
                a0Var2 = BufferedChannelKt.f61362m;
                if (l12 != a0Var2) {
                    a0Var3 = BufferedChannelKt.f61364o;
                    if (l12 != a0Var3) {
                        a0Var4 = BufferedChannelKt.f61363n;
                        if (l12 != a0Var4) {
                            bVar.c();
                            return kotlinx.coroutines.channels.a.f61379b.c(l12);
                        }
                        throw new IllegalStateException("unexpected");
                    }
                    if (andIncrement < n0()) {
                        bVar.c();
                    }
                    bVar2 = bVar;
                } else {
                    if (a0Var instanceof y1) {
                        y1Var = (y1) a0Var;
                    } else {
                        y1Var = null;
                    }
                    if (y1Var != null) {
                        R0(y1Var, bVar, i11);
                    }
                    r1(andIncrement);
                    bVar.t();
                    return kotlinx.coroutines.channels.a.f61379b.b();
                }
            }
            return kotlinx.coroutines.channels.a.f61379b.a(d0());
        }
        return kotlinx.coroutines.channels.a.f61379b.b();
    }

    @Override // jt.i
    @Nullable
    public Object n(@NotNull rs.c<? super kotlinx.coroutines.channels.a<? extends E>> cVar) {
        return V0(this, cVar);
    }

    public final long n0() {
        return f61321d.get(this) & 1152921504606846975L;
    }

    @Override // kotlinx.coroutines.channels.h
    public boolean o() {
        return x0(f61321d.get(this));
    }

    @Override // kotlinx.coroutines.channels.h
    @Nullable
    public Object p(E e10, @NotNull rs.c<? super Unit> cVar) {
        return d1(this, e10, cVar);
    }

    public final boolean p0() {
        while (true) {
            kotlinx.coroutines.channels.b<E> bVar = (kotlinx.coroutines.channels.b) f61326i.get(this);
            long j02 = j0();
            if (n0() <= j02) {
                return false;
            }
            int i10 = BufferedChannelKt.f61351b;
            long j10 = j02 / i10;
            if (bVar.f62709c != j10 && (bVar = Y(j10, bVar)) == null) {
                if (((kotlinx.coroutines.channels.b) f61326i.get(this)).f62709c < j10) {
                    return false;
                }
            } else {
                bVar.c();
                if (t0(bVar, (int) (j02 % i10), j02)) {
                    return true;
                }
                f61322e.compareAndSet(this, j02, 1 + j02);
            }
        }
    }

    public final void r1(long j10) {
        int i10;
        long j11;
        long v10;
        boolean z10;
        long v11;
        long j12;
        long v12;
        if (z0()) {
            return;
        }
        do {
        } while (b0() <= j10);
        i10 = BufferedChannelKt.f61352c;
        for (int i11 = 0; i11 < i10; i11++) {
            long b02 = b0();
            if (b02 == (f61324g.get(this) & 4611686018427387903L) && b02 == b0()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f61324g;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            v10 = BufferedChannelKt.v(j11 & 4611686018427387903L, true);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, v10));
        while (true) {
            long b03 = b0();
            long j13 = f61324g.get(this);
            long j14 = j13 & 4611686018427387903L;
            if ((SieveCacheKt.NodeVisitedBit & j13) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (b03 == j14 && b03 == b0()) {
                break;
            } else if (!z10) {
                AtomicLongFieldUpdater atomicLongFieldUpdater2 = f61324g;
                v11 = BufferedChannelKt.v(j14, true);
                atomicLongFieldUpdater2.compareAndSet(this, j13, v11);
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater3 = f61324g;
        do {
            j12 = atomicLongFieldUpdater3.get(this);
            v12 = BufferedChannelKt.v(j12 & 4611686018427387903L, false);
        } while (!atomicLongFieldUpdater3.compareAndSet(this, j12, v12));
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x01d7, code lost:
        r3 = (kotlinx.coroutines.channels.b) r3.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01de, code lost:
        if (r3 != null) goto L105;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01d7 A[EDGE_INSN: B:104:0x01d7->B:86:0x01d7 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01e6  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    public boolean v0() {
        return w0(f61321d.get(this));
    }

    @Override // jt.i
    @Nullable
    public Object w(@NotNull rs.c<? super E> cVar) {
        return U0(this, cVar);
    }

    protected boolean y0() {
        return false;
    }

    protected void H0() {
    }

    protected void N0() {
    }

    protected void O0() {
    }
}
