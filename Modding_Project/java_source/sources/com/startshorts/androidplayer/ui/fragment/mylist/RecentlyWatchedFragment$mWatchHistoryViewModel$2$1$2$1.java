package com.startshorts.androidplayer.ui.fragment.mylist;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: RecentlyWatchedFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.mylist.RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1", f = "RecentlyWatchedFragment.kt", l = {92}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46329h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1(rs.c<? super RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f46329h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            kt.d<Boolean> a10 = qi.a.f65362a.a();
            Boolean a11 = kotlin.coroutines.jvm.internal.a.a(true);
            this.f46329h = 1;
            if (a10.emit(a11, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
