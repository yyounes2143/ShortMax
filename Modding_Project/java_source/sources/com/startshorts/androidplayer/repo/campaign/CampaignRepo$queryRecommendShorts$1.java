package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.eventbus.HandleHomeDialogProcessorEvent;
import com.startshorts.androidplayer.bean.purchase.RecommendCoinSku;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.bean.shorts.RecommendShorts;
import gt.g0;
import java.util.List;
import kg.b;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShorts$1", f = "CampaignRepo.kt", l = {67}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCampaignRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignRepo.kt\ncom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1872#2,3:353\n*S KotlinDebug\n*F\n+ 1 CampaignRepo.kt\ncom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1\n*L\n73#1:353,3\n*E\n"})
/* loaded from: classes7.dex */
public final class CampaignRepo$queryRecommendShorts$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43696h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignRepo$queryRecommendShorts$1(c<? super CampaignRepo$queryRecommendShorts$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CampaignRepo$queryRecommendShorts$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CampaignRepo$queryRecommendShorts$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object G;
        List<RecommendShorts> list;
        b r10;
        Object f10 = a.f();
        int i10 = this.f43696h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                G = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CampaignRepo campaignRepo = CampaignRepo.f43678a;
            this.f43696h = 1;
            G = campaignRepo.G(this);
            if (G == f10) {
                return f10;
            }
        }
        if (Result.j(G)) {
            QueryCampaignRecommendShortsResult queryCampaignRecommendShortsResult = (QueryCampaignRecommendShortsResult) G;
            List<RecommendCoinSku> list2 = null;
            if (queryCampaignRecommendShortsResult != null) {
                list = queryCampaignRecommendShortsResult.getRecommendList();
            } else {
                list = null;
            }
            if (queryCampaignRecommendShortsResult != null) {
                list2 = queryCampaignRecommendShortsResult.getSkuInfos();
            }
            if (list != null) {
                List V0 = CollectionsKt.V0(CollectionsKt.f(RecommendShorts.Companion.getRANDOM_CHOOSE_LIST()), list.size());
                int i11 = 0;
                for (Object obj2 : list) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.y();
                    }
                    RecommendShorts recommendShorts = (RecommendShorts) obj2;
                    recommendShorts.setRandomChoose((String) V0.get(i11));
                    recommendShorts.setSubscript("Top " + i12);
                    i11 = i12;
                }
            }
            r10 = CampaignRepo.f43678a.r();
            r10.o(queryCampaignRecommendShortsResult);
            List<RecommendShorts> list3 = list;
            if (list3 != null && !list3.isEmpty()) {
                List<RecommendCoinSku> list4 = list2;
                if (list4 != null && !list4.isEmpty()) {
                    ud.b.f68412a.s4(-1L);
                } else {
                    ud.b.f68412a.s4(0L);
                }
                au.c.d().l(new HandleHomeDialogProcessorEvent());
            } else {
                ud.b bVar = ud.b.f68412a;
                bVar.k3(true);
                bVar.s4(0L);
            }
        }
        CampaignRepo.f43681d = false;
        return Unit.f60915a;
    }
}
