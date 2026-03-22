package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$queryRecommendShorts$2", f = "CampaignRemoteDS.kt", l = {27, 29}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$queryRecommendShorts$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryCampaignRecommendShortsResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43597h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignRemoteDS$queryRecommendShorts$2(c<? super CampaignRemoteDS$queryRecommendShorts$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$queryRecommendShorts$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43597h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return (ServerResult) obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return (ServerResult) obj;
        }
        f.b(obj);
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a i11 = k.f41787a.i();
            this.f43597h = 1;
            obj = k.a.C0617a.m(i11, 0, this, 1, null);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a i12 = k.f41787a.i();
        this.f43597h = 2;
        obj = k.a.C0617a.l(i12, 0, this, 1, null);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryCampaignRecommendShortsResult>> cVar) {
        return ((CampaignRemoteDS$queryRecommendShorts$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
