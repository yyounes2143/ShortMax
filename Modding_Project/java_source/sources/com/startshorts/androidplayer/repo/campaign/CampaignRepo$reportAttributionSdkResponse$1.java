package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.campaign.AttributionSdkResponse;
import gt.g0;
import java.util.List;
import kg.b;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAttributionSdkResponse$1", f = "CampaignRepo.kt", l = {167}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportAttributionSdkResponse$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43709h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43710i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AttributionSdkResponse f43711j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportAttributionSdkResponse$1(boolean z10, AttributionSdkResponse attributionSdkResponse, c<? super CampaignRepo$reportAttributionSdkResponse$1> cVar) {
        super(2, cVar);
        this.f43710i = z10;
        this.f43711j = attributionSdkResponse;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CampaignRepo$reportAttributionSdkResponse$1(this.f43710i, this.f43711j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CampaignRepo$reportAttributionSdkResponse$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CampaignRemoteDS s10;
        Object i10;
        b r10;
        List t10;
        b r11;
        Object f10 = a.f();
        int i11 = this.f43709h;
        if (i11 != 0) {
            if (i11 == 1) {
                f.b(obj);
                i10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (this.f43710i) {
                r10 = CampaignRepo.f43678a.r();
                r10.i(this.f43711j);
            }
            s10 = CampaignRepo.f43678a.s();
            String source = this.f43711j.getSource();
            String campaignInfo = this.f43711j.getCampaignInfo();
            this.f43709h = 1;
            i10 = s10.i(source, campaignInfo, this);
            if (i10 == f10) {
                return f10;
            }
        }
        AttributionSdkResponse attributionSdkResponse = this.f43711j;
        if (Result.j(i10)) {
            r11 = CampaignRepo.f43678a.r();
            r11.g(attributionSdkResponse.getId());
        }
        t10 = CampaignRepo.f43678a.t();
        t10.remove(this.f43711j.getId());
        return Unit.f60915a;
    }
}
