package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportCampaignInfo$2", f = "CampaignRemoteDS.kt", l = {44}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportCampaignInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43627h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43628i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43629j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportCampaignInfo$2(String str, String str2, c<? super CampaignRemoteDS$reportCampaignInfo$2> cVar) {
        super(1, cVar);
        this.f43628i = str;
        this.f43629j = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportCampaignInfo$2(this.f43628i, this.f43629j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43627h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a i11 = k.f41787a.i();
            String str = this.f43628i;
            String str2 = this.f43629j;
            this.f43627h = 1;
            obj = k.a.C0617a.v(i11, str, null, str2, this, 2, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((CampaignRemoteDS$reportCampaignInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
