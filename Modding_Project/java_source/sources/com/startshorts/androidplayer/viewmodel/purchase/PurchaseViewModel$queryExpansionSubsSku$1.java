package com.startshorts.androidplayer.viewmodel.purchase;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryExpansionSubsSku$1", f = "PurchaseViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseViewModel$queryExpansionSubsSku$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49000h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseViewModel f49001i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseViewModel$queryExpansionSubsSku$1(PurchaseViewModel purchaseViewModel, c<? super PurchaseViewModel$queryExpansionSubsSku$1> cVar) {
        super(2, cVar);
        this.f49001i = purchaseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseViewModel$queryExpansionSubsSku$1(this.f49001i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseViewModel$queryExpansionSubsSku$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BaseEpisode baseEpisode;
        String str;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f49000h == 0) {
            f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            String N = this.f49001i.N();
            baseEpisode = this.f49001i.f48988h;
            str = this.f49001i.f48987g;
            if (str == null) {
                str = "other";
            }
            EventManager.W0(eventManager, N, str, baseEpisode, null, null, null, 56, null);
            this.f49001i.f48995o = SubsExpansionManager.f42751a.m();
            o.b(this.f49001i.R(), new b.c(this.f49001i.P()));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
