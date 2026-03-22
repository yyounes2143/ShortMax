package com.startshorts.androidplayer.ui.fragment.immersion;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionShortBackEarnCoinDialog.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1", f = "ImmersionShortBackEarnCoinDialog.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46192h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionShortBackEarnCoinDialog f46193i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1(ImmersionShortBackEarnCoinDialog immersionShortBackEarnCoinDialog, rs.c<? super ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1> cVar) {
        super(2, cVar);
        this.f46193i = immersionShortBackEarnCoinDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1(this.f46193i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f46192h == 0) {
            kotlin.f.b(obj);
            this.f46193i.R();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
