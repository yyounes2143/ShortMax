package com.shorttv.aar.billing.util;

import cd.f;
import com.shorttv.aar.billing.util.CoroutineUtil;
import gt.d0;
import gt.g;
import gt.g0;
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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,81:1\n47#2,4:82\n47#2,4:86\n*S KotlinDebug\n*F\n+ 1 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n*L\n13#1:82,4\n17#1:86,4\n*E\n"})
/* loaded from: classes6.dex */
public final class CoroutineUtil {
    @NotNull

    /* renamed from: a */
    public static final CoroutineUtil f37028a = new CoroutineUtil();
    @NotNull

    /* renamed from: b */
    private static final i f37029b = c.b(new Function0() { // from class: cd.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            g0 n10;
            n10 = CoroutineUtil.n();
            return n10;
        }
    });
    @NotNull

    /* renamed from: c */
    private static final i f37030c = c.b(new Function0() { // from class: cd.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            g0 m10;
            m10 = CoroutineUtil.m();
            return m10;
        }
    });

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n*L\n1#1,49:1\n18#2,2:50\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends kotlin.coroutines.a implements d0 {
        public a(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            bd.b bVar = bd.b.f2605a;
            bVar.a("CoroutineUtil", "globalDefaultScope 未捕获异常 -> " + th2.getMessage());
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CoroutineUtil.kt\ncom/shorttv/aar/billing/util/CoroutineUtil\n*L\n1#1,49:1\n14#2,2:50\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends kotlin.coroutines.a implements d0 {
        public b(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            bd.b bVar = bd.b.f2605a;
            bVar.a("CoroutineUtil", "globalIOScope 未捕获异常 -> " + th2.getMessage());
        }
    }

    private CoroutineUtil() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ r e(CoroutineUtil coroutineUtil, long j10, CoroutineContext coroutineContext, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            coroutineContext = q0.c();
        }
        if ((i10 & 4) != 0) {
            function0 = null;
        }
        return coroutineUtil.d(j10, coroutineContext, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void h(CoroutineUtil coroutineUtil, g0 g0Var, String str, boolean z10, Function2 function2, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            g0Var = coroutineUtil.l();
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
        coroutineUtil.f(g0Var2, str, z11, function2, function12);
    }

    public static /* synthetic */ void i(CoroutineUtil coroutineUtil, String str, boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        coroutineUtil.g(str, z10, function2);
    }

    public static final Unit j(f fVar, String str, Function1 function1, boolean z10, Throwable th2) {
        if (th2 != null) {
            if (!fVar.c()) {
                bd.b bVar = bd.b.f2605a;
                bVar.a("CoroutineUtil", "executeTask(" + str + ") costTime(" + fVar.b() + "ms) failed -> " + th2.getMessage());
            }
            if (function1 != null) {
                function1.invoke(th2.getMessage());
            }
        } else if (!z10 && !fVar.c()) {
            bd.b bVar2 = bd.b.f2605a;
            bVar2.b("CoroutineUtil", "executeTask(" + str + ") costTime(" + fVar.b() + "ms)");
        }
        return Unit.f60915a;
    }

    private final g0 k() {
        return (g0) f37030c.getValue();
    }

    private final g0 l() {
        return (g0) f37029b.getValue();
    }

    public static final g0 m() {
        return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.a()).plus(new a(d0.D8)));
    }

    public static final g0 n() {
        return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(new b(d0.D8)));
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [T, kotlinx.coroutines.r] */
    @NotNull
    public final r d(long j10, @NotNull CoroutineContext completeContext, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(completeContext, "completeContext");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? J = kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.i(kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.N(kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.F(new CoroutineUtil$delay$1(j10, null)), q0.a()), new CoroutineUtil$delay$2(objectRef, function0, null)), completeContext), new CoroutineUtil$delay$3(null)), k());
        objectRef.element = J;
        return (r) J;
    }

    public final void f(@NotNull g0 scope, @NotNull final String taskName, final boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task, @Nullable final Function1<? super String, Unit> function1) {
        r d10;
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        final f d11 = new f().d();
        d10 = g.d(scope, null, null, task, 3, null);
        d10.invokeOnCompletion(new Function1() { // from class: cd.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j10;
                j10 = CoroutineUtil.j(f.this, taskName, function1, z10, (Throwable) obj);
                return j10;
            }
        });
    }

    public final void g(@NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task) {
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        h(this, l(), taskName, z10, task, null, 16, null);
    }
}
