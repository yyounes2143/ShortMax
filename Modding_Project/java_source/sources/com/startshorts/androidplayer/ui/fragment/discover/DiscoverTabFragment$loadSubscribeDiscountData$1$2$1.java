package com.startshorts.androidplayer.ui.fragment.discover;

import com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: DiscoverTabFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$loadSubscribeDiscountData$1$2$1", f = "DiscoverTabFragment.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DiscoverTabFragment$loadSubscribeDiscountData$1$2$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45998h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverTabFragment f45999i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverTabFragment$loadSubscribeDiscountData$1$2$1(DiscoverTabFragment discoverTabFragment, rs.c<? super DiscoverTabFragment$loadSubscribeDiscountData$1$2$1> cVar) {
        super(2, cVar);
        this.f45999i = discoverTabFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverTabFragment$loadSubscribeDiscountData$1$2$1(this.f45999i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverTabFragment$loadSubscribeDiscountData$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DiscoverVipBoxView discoverVipBoxView;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45998h == 0) {
            kotlin.f.b(obj);
            discoverVipBoxView = this.f45999i.A;
            if (discoverVipBoxView != null) {
                discoverVipBoxView.A();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
