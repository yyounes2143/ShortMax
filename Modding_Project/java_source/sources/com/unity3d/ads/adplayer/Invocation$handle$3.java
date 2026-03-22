package com.unity3d.ads.adplayer;

import gt.g0;
import gt.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Invocation.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.Invocation$handle$3", f = "Invocation.kt", l = {23}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class Invocation$handle$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function1<c<Object>, Object> $handler;
    int label;
    final /* synthetic */ Invocation this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Invocation$handle$3(Function1<? super c<Object>, ? extends Object> function1, Invocation invocation, c<? super Invocation$handle$3> cVar) {
        super(2, cVar);
        this.$handler = function1;
        this.this$0 = invocation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new Invocation$handle$3(this.$handler, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((Invocation$handle$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        p pVar;
        p pVar2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                Function1<c<Object>, Object> function1 = this.$handler;
                this.label = 1;
                obj = function1.invoke(this);
                if (obj == f10) {
                    return f10;
                }
            }
            pVar2 = this.this$0.completableDeferred;
            pVar2.i(obj);
        } catch (Throwable th2) {
            pVar = this.this$0.completableDeferred;
            pVar.d(th2);
        }
        return Unit.f60915a;
    }
}
