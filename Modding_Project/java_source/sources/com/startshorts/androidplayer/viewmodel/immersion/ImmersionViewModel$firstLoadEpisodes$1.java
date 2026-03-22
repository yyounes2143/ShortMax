package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$firstLoadEpisodes$1", f = "ImmersionViewModel.kt", l = {231}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$firstLoadEpisodes$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48550h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48551i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionParams f48552j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$firstLoadEpisodes$1(ImmersionViewModel immersionViewModel, ImmersionParams immersionParams, rs.c<? super ImmersionViewModel$firstLoadEpisodes$1> cVar) {
        super(2, cVar);
        this.f48551i = immersionViewModel;
        this.f48552j = immersionParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$firstLoadEpisodes$1(this.f48551i, this.f48552j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$firstLoadEpisodes$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object r02;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48550h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionViewModel immersionViewModel = this.f48551i;
            int shortsId = this.f48552j.getShortsInfo().getShortsId();
            this.f48550h = 1;
            r02 = immersionViewModel.r0(false, shortsId, true, this);
            if (r02 == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
