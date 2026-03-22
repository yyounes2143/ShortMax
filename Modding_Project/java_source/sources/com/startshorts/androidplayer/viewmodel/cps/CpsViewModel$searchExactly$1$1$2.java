package com.startshorts.androidplayer.viewmodel.cps;

import fk.j;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: CpsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.cps.CpsViewModel$searchExactly$1$1$2", f = "CpsViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class CpsViewModel$searchExactly$1$1$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48444h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CpsViewModel$searchExactly$1$1$2(c<? super CpsViewModel$searchExactly$1$1$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CpsViewModel$searchExactly$1$1$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CpsViewModel$searchExactly$1$1$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48444h == 0) {
            f.b(obj);
            j.f51739a.a();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
