package com.startshorts.androidplayer.repo.campaign;

import com.ss.ttm.player.MediaPlayer;
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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportUdlAjInfo$2", f = "CampaignRemoteDS.kt", l = {176}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportUdlAjInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43672h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43673i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43674j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43675k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43676l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43677m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportUdlAjInfo$2(boolean z10, String str, String str2, String str3, String str4, c<? super CampaignRemoteDS$reportUdlAjInfo$2> cVar) {
        super(1, cVar);
        this.f43673i = z10;
        this.f43674j = str;
        this.f43675k = str2;
        this.f43676l = str3;
        this.f43677m = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportUdlAjInfo$2(this.f43673i, this.f43674j, this.f43675k, this.f43676l, this.f43677m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43672h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        boolean z10 = this.f43673i;
        String str = this.f43674j;
        String str2 = this.f43675k;
        String str3 = this.f43676l;
        String str4 = this.f43677m;
        this.f43672h = 1;
        Object C = k.a.C0617a.C(i11, z10, str, 0, null, str2, str3, false, str4, null, null, this, MediaPlayer.MEDIA_PLAYER_OPTION_AVUNSYNC_INFO, null);
        if (C == f10) {
            return f10;
        }
        return C;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportUdlAjInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
