package kotlinx.coroutines.sync;

import at.n;
import gt.c0;
import gt.h0;
import gt.l;
import gt.s0;
import gt.y1;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.sync.MutexImpl;
import mt.a0;
import mt.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pt.g;
import pt.i;
import pt.j;
/* compiled from: Mutex.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n444#2,12:315\n1#3:327\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n171#1:315,12\n*E\n"})
/* loaded from: classes8.dex */
public class MutexImpl extends SemaphoreAndMutexImpl implements qt.a {

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61879i = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> f61880h;
    private volatile /* synthetic */ Object owner$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n1#2:315\n*E\n"})
    /* loaded from: classes8.dex */
    public final class a implements gt.i<Unit>, y1 {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final kotlinx.coroutines.e<Unit> f61881a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Object f61882b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull kotlinx.coroutines.e<? super Unit> eVar, @Nullable Object obj) {
            this.f61881a = eVar;
            this.f61882b = obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(MutexImpl mutexImpl, a aVar, Throwable th2) {
            mutexImpl.unlock(aVar.f61882b);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit k(MutexImpl mutexImpl, a aVar, Throwable th2, Unit unit, CoroutineContext coroutineContext) {
            MutexImpl.v().set(mutexImpl, aVar.f61882b);
            mutexImpl.unlock(aVar.f61882b);
            return Unit.f60915a;
        }

        @Override // gt.i
        /* renamed from: c */
        public <R extends Unit> void y(@NotNull R r10, @Nullable n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar) {
            MutexImpl.v().set(MutexImpl.this, this.f61882b);
            kotlinx.coroutines.e<Unit> eVar = this.f61881a;
            final MutexImpl mutexImpl = MutexImpl.this;
            eVar.e(r10, new Function1() { // from class: kotlinx.coroutines.sync.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit h10;
                    h10 = MutexImpl.a.h(MutexImpl.this, this, (Throwable) obj);
                    return h10;
                }
            });
        }

        @Override // gt.i
        public boolean cancel(@Nullable Throwable th2) {
            return this.f61881a.cancel(th2);
        }

        @Override // gt.i
        @ms.c
        /* renamed from: d */
        public void e(@NotNull Unit unit, @Nullable Function1<? super Throwable, Unit> function1) {
            this.f61881a.e(unit, function1);
        }

        @Override // gt.y1
        public void g(@NotNull x<?> xVar, int i10) {
            this.f61881a.g(xVar, i10);
        }

        @Override // rs.c
        @NotNull
        public CoroutineContext getContext() {
            return this.f61881a.getContext();
        }

        @Override // gt.i
        /* renamed from: i */
        public void f(@NotNull c0 c0Var, @NotNull Unit unit) {
            this.f61881a.f(c0Var, unit);
        }

        @Override // gt.i
        public boolean isActive() {
            return this.f61881a.isActive();
        }

        @Override // gt.i
        public boolean isCompleted() {
            return this.f61881a.isCompleted();
        }

        @Override // gt.i
        @Nullable
        /* renamed from: j */
        public <R extends Unit> Object r(@NotNull R r10, @Nullable Object obj, @Nullable n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar) {
            final MutexImpl mutexImpl = MutexImpl.this;
            Object r11 = this.f61881a.r(r10, obj, new n() { // from class: kotlinx.coroutines.sync.a
                @Override // at.n
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    Unit k10;
                    k10 = MutexImpl.a.k(MutexImpl.this, this, (Throwable) obj2, (Unit) obj3, (CoroutineContext) obj4);
                    return k10;
                }
            });
            if (r11 != null) {
                MutexImpl.v().set(MutexImpl.this, this.f61882b);
            }
            return r11;
        }

        @Override // rs.c
        public void resumeWith(@NotNull Object obj) {
            this.f61881a.resumeWith(obj);
        }

        @Override // gt.i
        public void t(@NotNull Object obj) {
            this.f61881a.t(obj);
        }

        @Override // gt.i
        public void u(@NotNull Function1<? super Throwable, Unit> function1) {
            this.f61881a.u(function1);
        }

        @Override // gt.i
        @Nullable
        public Object v(@NotNull Throwable th2) {
            return this.f61881a.v(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n1#2:315\n*E\n"})
    /* loaded from: classes8.dex */
    public final class b<Q> implements j<Q> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final j<Q> f61884a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Object f61885b;

        public b(@NotNull j<Q> jVar, @Nullable Object obj) {
            this.f61884a = jVar;
            this.f61885b = obj;
        }

        @Override // pt.i
        public void b(@NotNull s0 s0Var) {
            this.f61884a.b(s0Var);
        }

        @Override // pt.i
        public void e(@Nullable Object obj) {
            MutexImpl.v().set(MutexImpl.this, this.f61885b);
            this.f61884a.e(obj);
        }

        @Override // pt.i
        public boolean f(@NotNull Object obj, @Nullable Object obj2) {
            boolean f10 = this.f61884a.f(obj, obj2);
            MutexImpl mutexImpl = MutexImpl.this;
            if (f10) {
                MutexImpl.v().set(mutexImpl, this.f61885b);
            }
            return f10;
        }

        @Override // gt.y1
        public void g(@NotNull x<?> xVar, int i10) {
            this.f61884a.g(xVar, i10);
        }

        @Override // pt.i
        @NotNull
        public CoroutineContext getContext() {
            return this.f61884a.getContext();
        }
    }

    public MutexImpl(boolean z10) {
        super(1, z10 ? 1 : 0);
        a0 a0Var;
        if (!z10) {
            a0Var = qt.d.f65412a;
        } else {
            a0Var = null;
        }
        this.owner$volatile = a0Var;
        this.f61880h = new n() { // from class: qt.b
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                n C;
                C = MutexImpl.C(MutexImpl.this, (i) obj, obj2, obj3);
                return C;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n C(final MutexImpl mutexImpl, i iVar, final Object obj, Object obj2) {
        return new n() { // from class: qt.c
            @Override // at.n
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                Unit D;
                D = MutexImpl.D(MutexImpl.this, obj, (Throwable) obj3, obj4, (CoroutineContext) obj5);
                return D;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(MutexImpl mutexImpl, Object obj, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        mutexImpl.unlock(obj);
        return Unit.f60915a;
    }

    private final int E(Object obj) {
        while (!q()) {
            if (obj == null) {
                return 1;
            }
            int x10 = x(obj);
            if (x10 == 1) {
                return 2;
            }
            if (x10 == 2) {
                return 1;
            }
        }
        f61879i.set(this, obj);
        return 0;
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater v() {
        return f61879i;
    }

    private final int x(Object obj) {
        a0 a0Var;
        while (isLocked()) {
            Object obj2 = f61879i.get(this);
            a0Var = qt.d.f65412a;
            if (obj2 != a0Var) {
                if (obj2 == obj) {
                    return 1;
                }
                return 2;
            }
        }
        return 0;
    }

    static /* synthetic */ Object y(MutexImpl mutexImpl, Object obj, rs.c<? super Unit> cVar) {
        if (mutexImpl.tryLock(obj)) {
            return Unit.f60915a;
        }
        Object z10 = mutexImpl.z(obj, cVar);
        if (z10 == kotlin.coroutines.intrinsics.a.f()) {
            return z10;
        }
        return Unit.f60915a;
    }

    private final Object z(Object obj, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e b10 = l.b(kotlin.coroutines.intrinsics.a.c(cVar));
        try {
            e(new a(b10, obj));
            Object B = b10.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                return B;
            }
            return Unit.f60915a;
        } catch (Throwable th2) {
            b10.P();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Object A(@Nullable Object obj, @Nullable Object obj2) {
        a0 a0Var;
        a0Var = qt.d.f65413b;
        if (!Intrinsics.areEqual(obj2, a0Var)) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B(@NotNull i<?> iVar, @Nullable Object obj) {
        a0 a0Var;
        if (obj != null && holdsLock(obj)) {
            a0Var = qt.d.f65413b;
            iVar.e(a0Var);
            return;
        }
        Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
        o(new b((j) iVar, obj), obj);
    }

    @Override // qt.a
    @NotNull
    public pt.f<Object, qt.a> getOnLock() {
        MutexImpl$onLock$1 mutexImpl$onLock$1 = MutexImpl$onLock$1.f61887a;
        Intrinsics.checkNotNull(mutexImpl$onLock$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        MutexImpl$onLock$2 mutexImpl$onLock$2 = MutexImpl$onLock$2.f61888a;
        Intrinsics.checkNotNull(mutexImpl$onLock$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new g(this, (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(mutexImpl$onLock$1, 3), (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(mutexImpl$onLock$2, 3), this.f61880h);
    }

    @Override // qt.a
    public boolean holdsLock(@NotNull Object obj) {
        if (x(obj) == 1) {
            return true;
        }
        return false;
    }

    @Override // qt.a
    public boolean isLocked() {
        if (a() == 0) {
            return true;
        }
        return false;
    }

    @Override // qt.a
    @Nullable
    public Object lock(@Nullable Object obj, @NotNull rs.c<? super Unit> cVar) {
        return y(this, obj, cVar);
    }

    @NotNull
    public String toString() {
        return "Mutex@" + h0.b(this) + "[isLocked=" + isLocked() + ",owner=" + f61879i.get(this) + ']';
    }

    @Override // qt.a
    public boolean tryLock(@Nullable Object obj) {
        int E = E(obj);
        if (E == 0) {
            return true;
        }
        if (E != 1) {
            if (E != 2) {
                throw new IllegalStateException("unexpected");
            }
            throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
        }
        return false;
    }

    @Override // qt.a
    public void unlock(@Nullable Object obj) {
        a0 a0Var;
        a0 a0Var2;
        while (isLocked()) {
            Object obj2 = f61879i.get(this);
            a0Var = qt.d.f65412a;
            if (obj2 != a0Var) {
                if (obj2 == obj || obj == null) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61879i;
                    a0Var2 = qt.d.f65412a;
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj2, a0Var2)) {
                        release();
                        return;
                    }
                } else {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }
}
