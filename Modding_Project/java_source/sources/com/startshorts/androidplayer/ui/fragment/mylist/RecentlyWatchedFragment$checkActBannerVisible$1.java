package com.startshorts.androidplayer.ui.fragment.mylist;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: RecentlyWatchedFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.mylist.RecentlyWatchedFragment$checkActBannerVisible$1", f = "RecentlyWatchedFragment.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RecentlyWatchedFragment$checkActBannerVisible$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46324h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecentlyWatchedFragment$checkActBannerVisible$1(rs.c<? super RecentlyWatchedFragment$checkActBannerVisible$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RecentlyWatchedFragment$checkActBannerVisible$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RecentlyWatchedFragment$checkActBannerVisible$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f46324h == 0) {
            kotlin.f.b(obj);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
