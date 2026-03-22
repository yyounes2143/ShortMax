package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.R$string;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodeDetail$1$1$1", f = "ImmersionViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionViewModel$queryEpisodeDetail$1$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48571h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmersionViewModel$queryEpisodeDetail$1$1$1(rs.c<? super ImmersionViewModel$queryEpisodeDetail$1$1$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryEpisodeDetail$1$1$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryEpisodeDetail$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48571h == 0) {
            kotlin.f.b(obj);
            u.j(u.f51776a, R$string.common_unknown_exception, 0, 2, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
