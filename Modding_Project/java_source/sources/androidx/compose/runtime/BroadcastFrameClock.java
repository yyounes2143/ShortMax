package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BroadcastFrameClock.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nBroadcastFrameClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 4 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock$AtomicAwaitersCount\n+ 5 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 6 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,232:1\n25#2,5:233\n33#2:242\n33#2:262\n33#2:285\n1516#3:238\n1516#3:239\n174#4:240\n219#4:241\n177#4:243\n193#4,5:244\n216#4:249\n198#4,2:250\n178#4:252\n183#4,17:263\n219#4:280\n185#4:281\n216#4:282\n177#4:292\n193#4,5:293\n216#4:298\n198#4,2:299\n178#4:301\n318#5,9:253\n327#5,2:283\n287#6,6:286\n*S KotlinDebug\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock\n*L\n65#1:233,5\n80#1:242\n101#1:262\n133#1:285\n68#1:238\n69#1:239\n73#1:240\n73#1:241\n87#1:243\n87#1:244,5\n87#1:249\n87#1:250,2\n87#1:252\n108#1:263,17\n108#1:280\n108#1:281\n108#1:282\n138#1:292\n138#1:293,5\n138#1:298\n138#1:299,2\n138#1:301\n97#1:253,9\n97#1:283,2\n136#1:286,6\n*E\n"})
/* loaded from: classes.dex */
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;
    @NotNull
    private MutableObjectList<FrameAwaiter<?>> awaiters;
    @Nullable
    private Throwable failureCause;
    @NotNull
    private final Object lock;
    @Nullable
    private final Function0<Unit> onNewAwaiters;
    @NotNull
    private final AtomicInt pendingAwaitersCountUnlocked;
    @NotNull
    private MutableObjectList<FrameAwaiter<?>> spareList;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BroadcastFrameClock.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBroadcastFrameClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock$AtomicAwaitersCount\n*L\n1#1,232:1\n219#1:233\n193#1,5:234\n216#1:239\n198#1,2:240\n193#1,7:242\n219#1:249\n216#1:250\n193#1,5:251\n216#1:256\n198#1,2:257\n216#1,4:259\n*S KotlinDebug\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock$AtomicAwaitersCount\n*L\n174#1:233\n177#1:234,5\n177#1:239\n177#1:240,2\n183#1:242,7\n184#1:249\n185#1:250\n189#1:251,5\n189#1:256\n189#1:257,2\n223#1:259,4\n*E\n"})
    /* loaded from: classes.dex */
    public static final class AtomicAwaitersCount {
        private static final int COUNT_BITS = 27;
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int VERSION_BITS = 4;
        @NotNull
        private final AtomicInt value;

        /* compiled from: BroadcastFrameClock.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private /* synthetic */ AtomicAwaitersCount(AtomicInt atomicInt) {
            this.value = atomicInt;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ AtomicAwaitersCount m1298boximpl(AtomicInt atomicInt) {
            return new AtomicAwaitersCount(atomicInt);
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        private static AtomicInt m1300constructorimpl(AtomicInt atomicInt) {
            return atomicInt;
        }

        /* renamed from: decrementCount-impl  reason: not valid java name */
        public static final void m1301decrementCountimpl(AtomicInt atomicInt, int i10) {
            int i11;
            int i12;
            do {
                i11 = atomicInt.get();
                if (((i11 >>> 27) & 15) == i10) {
                    i12 = i11 - 1;
                } else {
                    i12 = i11;
                }
            } while (!atomicInt.compareAndSet(i11, i12));
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m1302equalsimpl(AtomicInt atomicInt, Object obj) {
            if (!(obj instanceof AtomicAwaitersCount) || !Intrinsics.areEqual(atomicInt, ((AtomicAwaitersCount) obj).m1313unboximpl())) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m1303equalsimpl0(AtomicInt atomicInt, AtomicInt atomicInt2) {
            return Intrinsics.areEqual(atomicInt, atomicInt2);
        }

        /* renamed from: getCount-impl  reason: not valid java name */
        private static final int m1304getCountimpl(AtomicInt atomicInt, int i10) {
            return 134217727 & i10;
        }

        /* renamed from: getVersion-impl  reason: not valid java name */
        private static final int m1305getVersionimpl(AtomicInt atomicInt, int i10) {
            return (i10 >>> 27) & 15;
        }

        /* renamed from: hasAwaiters-impl  reason: not valid java name */
        public static final boolean m1306hasAwaitersimpl(AtomicInt atomicInt) {
            if ((atomicInt.get() & 134217727) > 0) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m1307hashCodeimpl(AtomicInt atomicInt) {
            return atomicInt.hashCode();
        }

        /* renamed from: incrementCountAndGetVersion-impl  reason: not valid java name */
        public static final int m1308incrementCountAndGetVersionimpl(AtomicInt atomicInt, @NotNull Function0<Unit> function0) {
            int i10;
            int i11;
            do {
                i10 = atomicInt.get();
                i11 = i10 + 1;
            } while (!atomicInt.compareAndSet(i10, i11));
            if ((134217727 & i11) == 1) {
                function0.invoke();
            }
            return (i11 >>> 27) & 15;
        }

        /* renamed from: incrementVersionAndResetCount-impl  reason: not valid java name */
        public static final void m1309incrementVersionAndResetCountimpl(AtomicInt atomicInt) {
            int i10;
            do {
                i10 = atomicInt.get();
            } while (!atomicInt.compareAndSet(i10, m1310packimpl(atomicInt, ((i10 >>> 27) & 15) + 1, 0)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: pack-impl  reason: not valid java name */
        public static final int m1310packimpl(AtomicInt atomicInt, int i10, int i11) {
            return ((i10 & 15) << 27) | (134217727 & i11);
        }

        @NotNull
        /* renamed from: toString-impl  reason: not valid java name */
        public static String m1311toStringimpl(AtomicInt atomicInt) {
            int i10 = atomicInt.get();
            return "AtomicAwaitersCount(version = " + ((i10 >>> 27) & 15) + ", count = " + (i10 & 134217727) + ')';
        }

        /* renamed from: update-impl  reason: not valid java name */
        private static final int m1312updateimpl(AtomicInt atomicInt, Function1<? super Integer, Integer> function1) {
            int i10;
            int intValue;
            do {
                i10 = atomicInt.get();
                intValue = function1.invoke(Integer.valueOf(i10)).intValue();
            } while (!atomicInt.compareAndSet(i10, intValue));
            return intValue;
        }

        public boolean equals(Object obj) {
            return m1302equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1307hashCodeimpl(this.value);
        }

        @NotNull
        public String toString() {
            return m1311toStringimpl(this.value);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ AtomicInt m1313unboximpl() {
            return this.value;
        }

        @NotNull
        /* renamed from: constructor-impl  reason: not valid java name */
        public static AtomicInt m1299constructorimpl() {
            return m1300constructorimpl(new AtomicInt(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BroadcastFrameClock.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBroadcastFrameClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n1#2:233\n*E\n"})
    /* loaded from: classes.dex */
    public static final class FrameAwaiter<R> {
        @Nullable
        private gt.i<? super R> continuation;
        @Nullable
        private Function1<? super Long, ? extends R> onFrame;

        public FrameAwaiter(@NotNull Function1<? super Long, ? extends R> function1, @NotNull gt.i<? super R> iVar) {
            this.onFrame = function1;
            this.continuation = iVar;
        }

        public final void cancel() {
            this.onFrame = null;
            this.continuation = null;
        }

        public final void resume(long j10) {
            gt.i<? super R> iVar;
            Object d10;
            Function1<? super Long, ? extends R> function1 = this.onFrame;
            if (function1 != null && (iVar = this.continuation) != null) {
                try {
                    Result.a aVar = Result.f60901b;
                    d10 = Result.d(function1.invoke(Long.valueOf(j10)));
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                iVar.resumeWith(d10);
            }
        }

        public final void resumeWithException(@NotNull Throwable th2) {
            gt.i<? super R> iVar = this.continuation;
            if (iVar != null) {
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(th2)));
            }
        }
    }

    public BroadcastFrameClock() {
        this(null, 1, null);
    }

    public static /* synthetic */ void cancel$default(BroadcastFrameClock broadcastFrameClock, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = new CancellationException("clock cancelled");
        }
        broadcastFrameClock.cancel(cancellationException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fail(Throwable th2) {
        int i10;
        synchronized (this.lock) {
            try {
                if (this.failureCause != null) {
                    return;
                }
                this.failureCause = th2;
                MutableObjectList<FrameAwaiter<?>> mutableObjectList = this.awaiters;
                Object[] objArr = mutableObjectList.content;
                int i11 = mutableObjectList._size;
                for (int i12 = 0; i12 < i11; i12++) {
                    ((FrameAwaiter) objArr[i12]).resumeWithException(th2);
                }
                this.awaiters.clear();
                AtomicInt atomicInt = this.pendingAwaitersCountUnlocked;
                do {
                    i10 = atomicInt.get();
                } while (!atomicInt.compareAndSet(i10, AtomicAwaitersCount.m1310packimpl(atomicInt, ((i10 >>> 27) & 15) + 1, 0)));
                Unit unit = Unit.f60915a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void cancel(@NotNull CancellationException cancellationException) {
        fail(cancellationException);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r10, function2);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, bVar);
    }

    public final boolean getHasAwaiters() {
        if ((this.pendingAwaitersCountUnlocked.get() & 134217727) > 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return MonotonicFrameClock.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return MonotonicFrameClock.DefaultImpls.plus(this, coroutineContext);
    }

    public final void sendFrame(long j10) {
        int i10;
        int i11;
        synchronized (this.lock) {
            try {
                MutableObjectList<FrameAwaiter<?>> mutableObjectList = this.awaiters;
                this.awaiters = this.spareList;
                this.spareList = mutableObjectList;
                AtomicInt atomicInt = this.pendingAwaitersCountUnlocked;
                do {
                    i10 = atomicInt.get();
                } while (!atomicInt.compareAndSet(i10, AtomicAwaitersCount.m1310packimpl(atomicInt, ((i10 >>> 27) & 15) + 1, 0)));
                int size = mutableObjectList.getSize();
                for (i11 = 0; i11 < size; i11++) {
                    mutableObjectList.get(i11).resume(j10);
                }
                mutableObjectList.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object withFrameNanos(@NotNull Function1<? super Long, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        int i10;
        int i11;
        boolean z10 = true;
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final FrameAwaiter frameAwaiter = new FrameAwaiter(function1, eVar);
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = -1;
        synchronized (this.lock) {
            Throwable th2 = this.failureCause;
            if (th2 == null) {
                AtomicInt atomicInt = this.pendingAwaitersCountUnlocked;
                do {
                    i10 = atomicInt.get();
                    i11 = i10 + 1;
                } while (!atomicInt.compareAndSet(i10, i11));
                if ((134217727 & i11) != 1) {
                    z10 = false;
                }
                intRef.element = (i11 >>> 27) & 15;
                this.awaiters.add(frameAwaiter);
                eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.BroadcastFrameClock$withFrameNanos$2$2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th3) {
                        invoke2(th3);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th3) {
                        int i12;
                        frameAwaiter.cancel();
                        AtomicInt atomicInt2 = this.pendingAwaitersCountUnlocked;
                        int i13 = intRef.element;
                        do {
                            i12 = atomicInt2.get();
                        } while (!atomicInt2.compareAndSet(i12, ((i12 >>> 27) & 15) == i13 ? i12 - 1 : i12));
                    }
                });
                if (z10 && this.onNewAwaiters != null) {
                    try {
                        this.onNewAwaiters.invoke();
                    } catch (Throwable th3) {
                        fail(th3);
                    }
                }
            } else {
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(kotlin.f.a(th2)));
            }
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public BroadcastFrameClock(@Nullable Function0<Unit> function0) {
        this.onNewAwaiters = function0;
        this.lock = new Object();
        this.pendingAwaitersCountUnlocked = AtomicAwaitersCount.m1299constructorimpl();
        this.awaiters = new MutableObjectList<>(0, 1, null);
        this.spareList = new MutableObjectList<>(0, 1, null);
    }

    public /* synthetic */ BroadcastFrameClock(Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : function0);
    }
}
