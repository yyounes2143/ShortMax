package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult;
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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportLPInfo$2", f = "CampaignRemoteDS.kt", l = {122}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportLPInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43653h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43654i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43655j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43656k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43657l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43658m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportLPInfo$2(String str, String str2, String str3, String str4, String str5, c<? super CampaignRemoteDS$reportLPInfo$2> cVar) {
        super(1, cVar);
        this.f43654i = str;
        this.f43655j = str2;
        this.f43656k = str3;
        this.f43657l = str4;
        this.f43658m = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportLPInfo$2(this.f43654i, this.f43655j, this.f43656k, this.f43657l, this.f43658m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        String str2;
        String str3;
        Object f10 = a.f();
        int i10 = this.f43653h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        String str4 = this.f43654i;
        String str5 = this.f43655j;
        if (str5 == null) {
            str = "";
        } else {
            str = str5;
        }
        String str6 = this.f43656k;
        if (str6 == null) {
            str2 = "";
        } else {
            str2 = str6;
        }
        String str7 = this.f43657l;
        String str8 = this.f43658m;
        if (str8 == null) {
            str3 = "";
        } else {
            str3 = str8;
        }
        this.f43653h = 1;
        Object A = k.a.C0617a.A(i11, str4, 0, 0, null, null, str, str2, str7, false, str3, null, null, this, 3358, null);
        if (A == f10) {
            return f10;
        }
        return A;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportLPInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
