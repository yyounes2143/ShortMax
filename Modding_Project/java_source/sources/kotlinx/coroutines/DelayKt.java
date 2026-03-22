package kotlinx.coroutines;

import gt.j0;
import gt.m0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n426#2,11:160\n426#2,11:171\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n103#1:160,11\n123#1:171,11\n*E\n"})
/* loaded from: classes8.dex */
public final class DelayKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<?> r4) {
        /*
            boolean r0 = r4 instanceof kotlinx.coroutines.DelayKt$awaitCancellation$1
            if (r0 == 0) goto L13
            r0 = r4
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = (kotlinx.coroutines.DelayKt$awaitCancellation$1) r0
            int r1 = r0.f61276i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61276i = r1
            goto L18
        L13:
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = new kotlinx.coroutines.DelayKt$awaitCancellation$1
            r0.<init>(r4)
        L18:
            java.lang.Object r4 = r0.f61275h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61276i
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L2d:
            kotlin.f.b(r4)
            goto L52
        L31:
            kotlin.f.b(r4)
            r0.f61276i = r3
            kotlinx.coroutines.e r4 = new kotlinx.coroutines.e
            rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
            r4.<init>(r2, r3)
            r4.H()
            java.lang.Object r4 = r4.B()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            if (r4 != r2) goto L4f
            kotlin.coroutines.jvm.internal.f.c(r0)
        L4f:
            if (r4 != r1) goto L52
            return r1
        L52:
            kotlin.KotlinNothingValueException r4 = new kotlin.KotlinNothingValueException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DelayKt.a(rs.c):java.lang.Object");
    }

    @Nullable
    public static final Object b(long j10, @NotNull rs.c<? super Unit> cVar) {
        if (j10 <= 0) {
            return Unit.f60915a;
        }
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        if (j10 < Long.MAX_VALUE) {
            d(eVar.getContext()).a(j10, eVar);
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

    @Nullable
    public static final Object c(long j10, @NotNull rs.c<? super Unit> cVar) {
        Object b10 = b(e(j10), cVar);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Unit.f60915a;
    }

    @NotNull
    public static final m0 d(@NotNull CoroutineContext coroutineContext) {
        m0 m0Var;
        CoroutineContext.Element element = coroutineContext.get(kotlin.coroutines.c.F8);
        if (element instanceof m0) {
            m0Var = (m0) element;
        } else {
            m0Var = null;
        }
        if (m0Var == null) {
            return j0.a();
        }
        return m0Var;
    }

    public static final long e(long j10) {
        boolean E = kotlin.time.b.E(j10);
        if (E) {
            return kotlin.time.b.q(kotlin.time.b.G(j10, kotlin.time.c.t(999999L, DurationUnit.NANOSECONDS)));
        }
        if (!E) {
            return 0L;
        }
        throw new NoWhenBranchMatchedException();
    }
}
