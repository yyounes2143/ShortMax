package com.moloco.sdk.publisher;

import com.moloco.sdk.publisher.init.MolocoInitParams;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.publisher.Moloco$initialize$1", f = "Moloco.kt", l = {117, 119, 133}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class Moloco$initialize$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ MolocoInitParams $initParam;
    final /* synthetic */ MolocoInitializationListener $listener;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Moloco$initialize$1(MolocoInitParams molocoInitParams, MolocoInitializationListener molocoInitializationListener, rs.c<? super Moloco$initialize$1> cVar) {
        super(2, cVar);
        this.$initParam = molocoInitParams;
        this.$listener = molocoInitializationListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Moloco$initialize$1(this.$initParam, this.$listener, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.publisher.Moloco$initialize$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Moloco$initialize$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }
}
