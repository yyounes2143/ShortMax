package com.startshorts.androidplayer.viewmodel.purchase;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
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
@d(c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryExpansionCoinSku$1", f = "PurchaseViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseViewModel$queryExpansionCoinSku$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48998h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseViewModel f48999i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseViewModel$queryExpansionCoinSku$1(PurchaseViewModel purchaseViewModel, c<? super PurchaseViewModel$queryExpansionCoinSku$1> cVar) {
        super(2, cVar);
        this.f48999i = purchaseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseViewModel$queryExpansionCoinSku$1(this.f48999i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseViewModel$queryExpansionCoinSku$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BaseEpisode baseEpisode;
        String str;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48998h == 0) {
            f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            String N = this.f48999i.N();
            baseEpisode = this.f48999i.f48988h;
            str = this.f48999i.f48987g;
            if (str == null) {
                str = "other";
            }
            EventManager.W0(eventManager, N, str, baseEpisode, null, null, null, 56, null);
            this.f48999i.f48992l = PurchaseRepo.f43366a.l();
            o.b(this.f48999i.R(), new b.C0676b(this.f48999i.O()));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
