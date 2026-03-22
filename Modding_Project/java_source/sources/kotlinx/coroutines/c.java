package kotlinx.coroutines;

import gt.g1;
import gt.k0;
import gt.s0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Await.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,121:1\n426#2,9:122\n435#2,2:133\n13402#3,2:131\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n63#1:122,9\n63#1:133,2\n75#1:131,2\n*E\n"})
/* loaded from: classes8.dex */
public final class c<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f61313b = AtomicIntegerFieldUpdater.newUpdater(c.class, "notCompletedCount$volatile");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final k0<T>[] f61314a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Await.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,121:1\n11158#2:122\n11493#2,3:123\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n115#1:122\n115#1:123,3\n*E\n"})
    /* loaded from: classes8.dex */
    public final class a extends g1 {

        /* renamed from: h  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f61315h = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer$volatile");
        private volatile /* synthetic */ Object _disposer$volatile;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final gt.i<List<? extends T>> f61316e;

        /* renamed from: f  reason: collision with root package name */
        public s0 f61317f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull gt.i<? super List<? extends T>> iVar) {
            this.f61316e = iVar;
        }

        public final void A(@Nullable c<T>.b bVar) {
            f61315h.set(this, bVar);
        }

        public final void B(@NotNull s0 s0Var) {
            this.f61317f = s0Var;
        }

        @Override // gt.g1
        public boolean u() {
            return false;
        }

        @Override // gt.g1
        public void v(@Nullable Throwable th2) {
            if (th2 != null) {
                Object v10 = this.f61316e.v(th2);
                if (v10 != null) {
                    this.f61316e.t(v10);
                    c<T>.b x10 = x();
                    if (x10 != null) {
                        x10.b();
                    }
                }
            } else if (c.b().decrementAndGet(c.this) == 0) {
                gt.i<List<? extends T>> iVar = this.f61316e;
                k0[] k0VarArr = ((c) c.this).f61314a;
                ArrayList arrayList = new ArrayList(k0VarArr.length);
                for (k0 k0Var : k0VarArr) {
                    arrayList.add(k0Var.getCompleted());
                }
                iVar.resumeWith(Result.d(arrayList));
            }
        }

        @Nullable
        public final c<T>.b x() {
            return (b) f61315h.get(this);
        }

        @NotNull
        public final s0 y() {
            s0 s0Var = this.f61317f;
            if (s0Var != null) {
                return s0Var;
            }
            Intrinsics.throwUninitializedPropertyAccessException("handle");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Await.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,121:1\n13402#2,2:122\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n*L\n88#1:122,2\n*E\n"})
    /* loaded from: classes8.dex */
    public final class b implements d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final c<T>.a[] f61319a;

        public b(@NotNull c<T>.a[] aVarArr) {
            this.f61319a = aVarArr;
        }

        @Override // kotlinx.coroutines.d
        public void a(@Nullable Throwable th2) {
            b();
        }

        public final void b() {
            for (c<T>.a aVar : this.f61319a) {
                aVar.y().dispose();
            }
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f61319a + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@NotNull k0<? extends T>[] k0VarArr) {
        this.f61314a = k0VarArr;
        this.notCompletedCount$volatile = k0VarArr.length;
    }

    public static final /* synthetic */ AtomicIntegerFieldUpdater b() {
        return f61313b;
    }

    @Nullable
    public final Object c(@NotNull rs.c<? super List<? extends T>> cVar) {
        s0 o10;
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        int length = this.f61314a.length;
        a[] aVarArr = new a[length];
        for (int i10 = 0; i10 < length; i10++) {
            k0 k0Var = this.f61314a[i10];
            k0Var.start();
            a aVar = new a(eVar);
            o10 = JobKt__JobKt.o(k0Var, false, aVar, 1, null);
            aVar.B(o10);
            Unit unit = Unit.f60915a;
            aVarArr[i10] = aVar;
        }
        c<T>.b bVar = new b(aVarArr);
        for (int i11 = 0; i11 < length; i11++) {
            aVarArr[i11].A(bVar);
        }
        if (eVar.isCompleted()) {
            bVar.b();
        } else {
            gt.l.c(eVar, bVar);
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }
}
