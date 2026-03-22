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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportFBInfo$2", f = "CampaignRemoteDS.kt", l = {60}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportFBInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43640h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43641i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43642j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43643k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43644l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f43645m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportFBInfo$2(boolean z10, String str, String str2, String str3, int i10, c<? super CampaignRemoteDS$reportFBInfo$2> cVar) {
        super(1, cVar);
        this.f43641i = z10;
        this.f43642j = str;
        this.f43643k = str2;
        this.f43644l = str3;
        this.f43645m = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportFBInfo$2(this.f43641i, this.f43642j, this.f43643k, this.f43644l, this.f43645m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43640h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        boolean z10 = this.f43641i;
        String str = this.f43642j;
        String str2 = this.f43643k;
        String str3 = this.f43644l;
        int i12 = this.f43645m;
        this.f43640h = 1;
        Object x10 = k.a.C0617a.x(i11, z10, str, null, null, str2, str3, false, i12, null, this, 332, null);
        if (x10 == f10) {
            return f10;
        }
        return x10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportFBInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
