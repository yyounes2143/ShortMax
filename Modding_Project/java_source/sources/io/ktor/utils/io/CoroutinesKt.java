package io.ktor.utils.io;

import gt.c0;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Coroutines.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CoroutinesKt {
    private static final <S extends g0> g a(g0 g0Var, CoroutineContext coroutineContext, final b bVar, boolean z10, Function2<? super S, ? super rs.c<? super Unit>, ? extends Object> function2) {
        r d10;
        d10 = gt.g.d(g0Var, coroutineContext, null, new CoroutinesKt$launchChannel$job$1(z10, bVar, function2, (c0) g0Var.getCoroutineContext().get(c0.Key), null), 2, null);
        d10.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.utils.io.CoroutinesKt$launchChannel$1
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
                b.this.a(th2);
            }
        });
        return new g(d10, bVar);
    }

    @NotNull
    public static final l b(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, boolean z10, @NotNull Function2<? super m, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(g0Var, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(block, "block");
        return a(g0Var, coroutineContext, d.a(z10), true, block);
    }

    @ms.c
    @NotNull
    public static final n c(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, @NotNull b channel, @NotNull Function2<? super o, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(g0Var, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(block, "block");
        return a(g0Var, coroutineContext, channel, false, block);
    }

    @NotNull
    public static final n d(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, boolean z10, @NotNull Function2<? super o, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(g0Var, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(block, "block");
        return a(g0Var, coroutineContext, d.a(z10), true, block);
    }

    public static /* synthetic */ n e(g0 g0Var, CoroutineContext coroutineContext, b bVar, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return c(g0Var, coroutineContext, bVar, function2);
    }

    public static /* synthetic */ n f(g0 g0Var, CoroutineContext coroutineContext, boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return d(g0Var, coroutineContext, z10, function2);
    }
}
