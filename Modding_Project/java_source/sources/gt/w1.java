package gt;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContext.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n103#2,13:320\n1#3:333\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n265#1:320,13\n*E\n"})
/* loaded from: classes8.dex */
public final class w1<T> extends mt.w<T> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ThreadLocal<Pair<CoroutineContext, Object>> f52573e;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public w1(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r3, @org.jetbrains.annotations.NotNull rs.c<? super T> r4) {
        /*
            r2 = this;
            gt.x1 r0 = gt.x1.f52574a
            kotlin.coroutines.CoroutineContext$Element r1 = r3.get(r0)
            if (r1 != 0) goto Ld
            kotlin.coroutines.CoroutineContext r0 = r3.plus(r0)
            goto Le
        Ld:
            r0 = r3
        Le:
            r2.<init>(r0, r4)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.f52573e = r0
            kotlin.coroutines.CoroutineContext r4 = r4.getContext()
            kotlin.coroutines.c$b r0 = kotlin.coroutines.c.F8
            kotlin.coroutines.CoroutineContext$Element r4 = r4.get(r0)
            boolean r4 = r4 instanceof gt.c0
            if (r4 != 0) goto L31
            r4 = 0
            java.lang.Object r4 = mt.h0.i(r3, r4)
            mt.h0.f(r3, r4)
            r2.X0(r3, r4)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gt.w1.<init>(kotlin.coroutines.CoroutineContext, rs.c):void");
    }

    private final void W0() {
        if (this.threadLocalIsSet) {
            Pair<CoroutineContext, Object> pair = this.f52573e.get();
            if (pair != null) {
                mt.h0.f(pair.b(), pair.d());
            }
            this.f52573e.remove();
        }
    }

    @Override // mt.w, kotlinx.coroutines.a
    protected void Q0(@Nullable Object obj) {
        W0();
        Object a10 = u.a(obj, this.f62707d);
        rs.c<T> cVar = this.f62707d;
        CoroutineContext context = cVar.getContext();
        w1<?> w1Var = null;
        Object i10 = mt.h0.i(context, null);
        if (i10 != mt.h0.f62667a) {
            w1Var = a0.m(cVar, context, i10);
        }
        try {
            this.f62707d.resumeWith(a10);
            Unit unit = Unit.f60915a;
        } finally {
            if (w1Var == null || w1Var.V0()) {
                mt.h0.f(context, i10);
            }
        }
    }

    @Override // mt.w
    public void U0() {
        W0();
    }

    public final boolean V0() {
        boolean z10;
        if (this.threadLocalIsSet && this.f52573e.get() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f52573e.remove();
        return !z10;
    }

    public final void X0(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        this.threadLocalIsSet = true;
        this.f52573e.set(ms.k.a(coroutineContext, obj));
    }
}
