package com.unity3d.ads.adplayer;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Invocation.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.Invocation$handle$2", f = "Invocation.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class Invocation$handle$2 extends SuspendLambda implements Function1<c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Invocation$handle$2(c<? super Invocation$handle$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new Invocation$handle$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable c<? super Unit> cVar) {
        return ((Invocation$handle$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
