package com.startshorts.androidplayer.repo.campaign;

import com.ss.ttvideoengine.model.VideoRef;
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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportActiveWebInfo$2", f = "CampaignRemoteDS.kt", l = {136}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportActiveWebInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43620h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43621i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43622j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43623k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportActiveWebInfo$2(String str, String str2, String str3, c<? super CampaignRemoteDS$reportActiveWebInfo$2> cVar) {
        super(1, cVar);
        this.f43621i = str;
        this.f43622j = str2;
        this.f43623k = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportActiveWebInfo$2(this.f43621i, this.f43622j, this.f43623k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43620h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        String str = this.f43621i;
        String str2 = this.f43622j;
        String str3 = this.f43623k;
        this.f43620h = 1;
        Object s10 = k.a.C0617a.s(i11, str, null, str2, null, str3, false, 0, null, this, VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST, null);
        if (s10 == f10) {
            return f10;
        }
        return s10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportActiveWebInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
