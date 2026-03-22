package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import mt.a0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,433:1\n14#2:434\n14#2:442\n29#3:435\n29#3:439\n16#4:436\n16#4:440\n13402#5,2:437\n375#6:441\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n320#1:434\n401#1:442\n329#1:435\n357#1:439\n329#1:436\n357#1:440\n353#1:437,2\n390#1:441\n*E\n"})
/* loaded from: classes8.dex */
public final class StateFlowImpl<T> extends lt.a<p> implements kt.e<T>, kt.a<T>, lt.g<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61671f = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: e  reason: collision with root package name */
    private int f61672e;

    public StateFlowImpl(@NotNull Object obj) {
        this._state$volatile = obj;
    }

    private final boolean q(Object obj, Object obj2) {
        int i10;
        p[] m10;
        synchronized (this) {
            Object obj3 = f61671f.get(this);
            if (obj != null && !Intrinsics.areEqual(obj3, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(obj3, obj2)) {
                return true;
            }
            f61671f.set(this, obj2);
            int i11 = this.f61672e;
            if ((i11 & 1) == 0) {
                int i12 = i11 + 1;
                this.f61672e = i12;
                p[] m11 = m();
                Unit unit = Unit.f60915a;
                while (true) {
                    p[] pVarArr = m11;
                    if (pVarArr != null) {
                        for (p pVar : pVarArr) {
                            if (pVar != null) {
                                pVar.g();
                            }
                        }
                    }
                    synchronized (this) {
                        i10 = this.f61672e;
                        if (i10 == i12) {
                            this.f61672e = i12 + 1;
                            return true;
                        }
                        m10 = m();
                        Unit unit2 = Unit.f60915a;
                    }
                    m11 = m10;
                    i12 = i10;
                }
            } else {
                this.f61672e = i11 + 2;
                return true;
            }
        }
    }

    @Override // lt.g
    @NotNull
    public kt.b<T> a(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return o.d(this, coroutineContext, i10, bufferOverflow);
    }

    @Override // kt.e
    public boolean b(T t10, T t11) {
        if (t10 == null) {
            t10 = (T) lt.i.f62309a;
        }
        if (t11 == null) {
            t11 = (T) lt.i.f62309a;
        }
        return q(t10, t11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00be, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r11, r12) == false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b5 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b5, B:40:0x00ba, B:50:0x00db, B:52:0x00e1, B:42:0x00c0, B:46:0x00c7, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b5, B:40:0x00ba, B:50:0x00db, B:52:0x00e1, B:42:0x00c0, B:46:0x00c7, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e1 A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b5, B:40:0x00ba, B:50:0x00db, B:52:0x00e1, B:42:0x00c0, B:46:0x00c7, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [lt.c] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00df -> B:36:0x00ab). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00f1 -> B:36:0x00ab). Please submit an issue!!! */
    @Override // kt.f, kt.b
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(@org.jetbrains.annotations.NotNull kt.c<? super T> r11, @org.jetbrains.annotations.NotNull rs.c<?> r12) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(kt.c, rs.c):java.lang.Object");
    }

    @Override // kt.d
    public void d() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kt.d, kt.c
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        setValue(t10);
        return Unit.f60915a;
    }

    @Override // kt.d
    public boolean g(T t10) {
        setValue(t10);
        return true;
    }

    @Override // kt.e, kt.i
    public T getValue() {
        a0 a0Var = lt.i.f62309a;
        T t10 = (T) f61671f.get(this);
        if (t10 == a0Var) {
            return null;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // lt.a
    @NotNull
    /* renamed from: n */
    public p i() {
        return new p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // lt.a
    @NotNull
    /* renamed from: o */
    public p[] j(int i10) {
        return new p[i10];
    }

    @Override // kt.e
    public void setValue(T t10) {
        if (t10 == null) {
            t10 = (T) lt.i.f62309a;
        }
        q(null, t10);
    }
}
