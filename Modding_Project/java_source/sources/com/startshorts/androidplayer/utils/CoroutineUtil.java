package com.startshorts.androidplayer.utils;

import android.os.Looper;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.p;
import gt.d0;
import gt.e;
import gt.g;
import gt.g0;
import gt.j1;
import gt.q0;
import gt.r1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,212:1\n47#2,4:213\n*S KotlinDebug\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil\n*L\n27#1:213,4\n*E\n"})
/* loaded from: classes7.dex */
public final class CoroutineUtil {
    @NotNull

    /* renamed from: a */
    public static final CoroutineUtil f48072a = new CoroutineUtil();
    @NotNull

    /* renamed from: b */
    private static final d0 f48073b = new a(d0.D8);
    @NotNull

    /* renamed from: c */
    private static final i f48074c = c.b(new Function0() { // from class: fk.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            gt.g0 r10;
            r10 = CoroutineUtil.r();
            return r10;
        }
    });
    @NotNull

    /* renamed from: d */
    private static final i f48075d = c.b(new Function0() { // from class: fk.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            gt.g0 q10;
            q10 = CoroutineUtil.q();
            return q10;
        }
    });

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil\n*L\n1#1,49:1\n28#2,2:50\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a extends kotlin.coroutines.a implements d0 {
        public a(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            Logger logger = Logger.f41511a;
            logger.e("CoroutineUtil", "Coroutine exception: " + th2.getMessage());
        }
    }

    private CoroutineUtil() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ r g(CoroutineUtil coroutineUtil, long j10, CoroutineContext coroutineContext, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            coroutineContext = null;
        }
        if ((i10 & 4) != 0) {
            function0 = null;
        }
        return coroutineUtil.f(j10, coroutineContext, function0);
    }

    public static final Unit h(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ r k(CoroutineUtil coroutineUtil, g0 g0Var, String str, boolean z10, Function2 function2, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            g0Var = coroutineUtil.p();
        }
        g0 g0Var2 = g0Var;
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        Function1<? super String, Unit> function12 = function1;
        if ((i10 & 16) != 0) {
            function12 = null;
        }
        return coroutineUtil.i(g0Var2, str, z11, function2, function12);
    }

    public static /* synthetic */ r l(CoroutineUtil coroutineUtil, String str, boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return coroutineUtil.j(str, z10, function2);
    }

    public static /* synthetic */ r n(CoroutineUtil coroutineUtil, long j10, CoroutineContext coroutineContext, Function1 function1, Function1 function12, int i10, Object obj) {
        Function1 function13;
        Function1 function14;
        if ((i10 & 2) != 0) {
            coroutineContext = q0.c();
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if ((i10 & 4) != 0) {
            function13 = null;
        } else {
            function13 = function1;
        }
        if ((i10 & 8) != 0) {
            function14 = null;
        } else {
            function14 = function12;
        }
        return coroutineUtil.m(j10, coroutineContext2, function13, function14);
    }

    private final g0 p() {
        return (g0) f48074c.getValue();
    }

    public static final g0 q() {
        return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.a()).plus(f48073b));
    }

    public static final g0 r() {
        return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(f48073b));
    }

    public static /* synthetic */ Object t(CoroutineUtil coroutineUtil, g0 g0Var, String str, boolean z10, Function2 function2, rs.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return coroutineUtil.s(g0Var, str, z10, function2, cVar);
    }

    @NotNull
    public final r d(int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function0<Unit> function0) {
        return kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.i(kotlinx.coroutines.flow.c.N(kotlinx.coroutines.flow.c.O(kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.F(new CoroutineUtil$countDown$1(i10, null)), q0.a()), new CoroutineUtil$countDown$2(function1, null)), new CoroutineUtil$countDown$3(function0, null)), new CoroutineUtil$countDown$4(null)), o());
    }

    @NotNull
    public final r e(long j10, long j11, @Nullable Function1<? super Long, Unit> function1, @Nullable Function0<Unit> function0) {
        return kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.i(kotlinx.coroutines.flow.c.N(kotlinx.coroutines.flow.c.O(kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.F(new CoroutineUtil$countDown$5(j10, j11, null)), q0.a()), new CoroutineUtil$countDown$6(function1, null)), new CoroutineUtil$countDown$7(function0, null)), new CoroutineUtil$countDown$8(null)), o());
    }

    @Nullable
    public final r f(long j10, @Nullable CoroutineContext coroutineContext, @Nullable final Function0<Unit> function0) {
        j1 j1Var;
        r d10;
        if (coroutineContext == null) {
            j1Var = q0.c();
        } else {
            j1Var = coroutineContext;
        }
        if (j10 != 0) {
            d10 = g.d(o(), q0.a(), null, new CoroutineUtil$delay$3(j10, j1Var, function0, null), 2, null);
            return d10;
        }
        if (Intrinsics.areEqual(j1Var, q0.c())) {
            v(new Function0() { // from class: fk.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit h10;
                    h10 = CoroutineUtil.h(Function0.this);
                    return h10;
                }
            });
        } else {
            g.d(o(), j1Var, null, new CoroutineUtil$delay$2(function0, null), 2, null);
        }
        return null;
    }

    @NotNull
    public final r i(@NotNull g0 scope, @NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task, @Nullable Function1<? super String, Unit> function1) {
        r d10;
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        d10 = g.d(scope, null, null, new CoroutineUtil$executeTask$1(task, z10, new p().d(), taskName, function1, null), 3, null);
        return d10;
    }

    @NotNull
    public final r j(@NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task) {
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        return k(this, p(), taskName, z10, task, null, 16, null);
    }

    @NotNull
    public final r m(long j10, @NotNull CoroutineContext onTickContext, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function1<? super String, Unit> function12) {
        Intrinsics.checkNotNullParameter(onTickContext, "onTickContext");
        return kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.i(kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.O(kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.F(new CoroutineUtil$fixed$1(j10, null)), q0.a()), new CoroutineUtil$fixed$2(function1, null)), onTickContext), new CoroutineUtil$fixed$3(function12, null)), o());
    }

    @NotNull
    public final g0 o() {
        return (g0) f48075d.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(@org.jetbrains.annotations.NotNull gt.g0 r5, @org.jetbrains.annotations.NotNull java.lang.String r6, boolean r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super gt.g0, ? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object> r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.utils.CoroutineUtil$innerTask$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.utils.CoroutineUtil$innerTask$1 r0 = (com.startshorts.androidplayer.utils.CoroutineUtil$innerTask$1) r0
            int r1 = r0.f48141m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f48141m = r1
            goto L18
        L13:
            com.startshorts.androidplayer.utils.CoroutineUtil$innerTask$1 r0 = new com.startshorts.androidplayer.utils.CoroutineUtil$innerTask$1
            r0.<init>(r4, r9)
        L18:
            java.lang.Object r9 = r0.f48139k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f48141m
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            boolean r7 = r0.f48138j
            java.lang.Object r5 = r0.f48137i
            fk.p r5 = (fk.p) r5
            java.lang.Object r6 = r0.f48136h
            java.lang.String r6 = (java.lang.String) r6
            kotlin.f.b(r9)
            goto L57
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.f.b(r9)
            fk.p r9 = new fk.p
            r9.<init>()
            fk.p r9 = r9.d()
            r0.f48136h = r6
            r0.f48137i = r9
            r0.f48138j = r7
            r0.f48141m = r3
            java.lang.Object r5 = r8.invoke(r5, r0)
            if (r5 != r1) goto L56
            return r1
        L56:
            r5 = r9
        L57:
            if (r7 != 0) goto L88
            boolean r7 = r5.c()
            if (r7 != 0) goto L88
            com.startshorts.androidplayer.log.Logger r7 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "innerTask("
            r8.append(r9)
            r8.append(r6)
            java.lang.String r6 = ") costTime("
            r8.append(r6)
            long r5 = r5.b()
            r8.append(r5)
            java.lang.String r5 = "ms)"
            r8.append(r5)
            java.lang.String r5 = r8.toString()
            java.lang.String r6 = "CoroutineUtil"
            r7.h(r6, r5)
        L88:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.CoroutineUtil.s(gt.g0, java.lang.String, boolean, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object u(@NotNull Function0<Unit> function0, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = e.g(q0.c().m(), new CoroutineUtil$runOnMain$2(function0, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    public final void v(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            g.d(kotlinx.coroutines.i.a(q0.c().m()), null, null, new CoroutineUtil$runOnUiThread$1(block, null), 3, null);
        } else {
            block.invoke();
        }
    }
}
