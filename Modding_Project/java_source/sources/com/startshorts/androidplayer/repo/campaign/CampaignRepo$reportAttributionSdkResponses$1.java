package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.campaign.AttributionSdkResponse;
import gt.g0;
import java.util.List;
import kg.b;
import kotlin.Metadata;
import kotlin.Unit;
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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAttributionSdkResponses$1", f = "CampaignRepo.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCampaignRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignRepo.kt\ncom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponses$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1863#2,2:353\n*S KotlinDebug\n*F\n+ 1 CampaignRepo.kt\ncom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponses$1\n*L\n149#1:353,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CampaignRepo$reportAttributionSdkResponses$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43712h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignRepo$reportAttributionSdkResponses$1(c<? super CampaignRepo$reportAttributionSdkResponses$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CampaignRepo$reportAttributionSdkResponses$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CampaignRepo$reportAttributionSdkResponses$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        b r10;
        a.f();
        if (this.f43712h == 0) {
            f.b(obj);
            r10 = CampaignRepo.f43678a.r();
            List<AttributionSdkResponse> b10 = r10.b();
            List<AttributionSdkResponse> list = b10;
            if (list != null && !list.isEmpty()) {
                for (AttributionSdkResponse attributionSdkResponse : b10) {
                    CampaignRepo.f43678a.K(false, attributionSdkResponse);
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
