package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.manager.event.EventManager;
import gt.g0;
import kg.b;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryPopularShorts$1", f = "CampaignRepo.kt", l = {114}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRepo$queryPopularShorts$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43694h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function1<Result<PopularShorts>, Unit> f43695i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CampaignRepo$queryPopularShorts$1(Function1<? super Result<PopularShorts>, Unit> function1, c<? super CampaignRepo$queryPopularShorts$1> cVar) {
        super(2, cVar);
        this.f43695i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CampaignRepo$queryPopularShorts$1(this.f43695i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CampaignRepo$queryPopularShorts$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CampaignRemoteDS s10;
        Object d10;
        String shortPlayCode;
        b r10;
        Object f10 = a.f();
        int i10 = this.f43694h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            s10 = CampaignRepo.f43678a.s();
            this.f43694h = 1;
            d10 = s10.d(this);
            if (d10 == f10) {
                return f10;
            }
        }
        if (Result.j(d10)) {
            PopularShorts popularShorts = (PopularShorts) d10;
            if (popularShorts != null && (shortPlayCode = popularShorts.getShortPlayCode()) != null && shortPlayCode.length() != 0) {
                r10 = CampaignRepo.f43678a.r();
                r10.n(popularShorts);
            } else {
                EventManager.s0(EventManager.f42463a, "popular_shorts_not_find", null, 0L, 6, null);
                ud.b.f68412a.j3(true);
            }
        }
        CampaignRepo.f43682e = false;
        this.f43695i.invoke(Result.b(d10));
        return Unit.f60915a;
    }
}
