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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportUdlAfInfo$2", f = "CampaignRemoteDS.kt", l = {155}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportUdlAfInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43662h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43663i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43664j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43665k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43666l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43667m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f43668n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportUdlAfInfo$2(boolean z10, String str, String str2, String str3, String str4, String str5, c<? super CampaignRemoteDS$reportUdlAfInfo$2> cVar) {
        super(1, cVar);
        this.f43663i = z10;
        this.f43664j = str;
        this.f43665k = str2;
        this.f43666l = str3;
        this.f43667m = str4;
        this.f43668n = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportUdlAfInfo$2(this.f43663i, this.f43664j, this.f43665k, this.f43666l, this.f43667m, this.f43668n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43662h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        boolean z10 = this.f43663i;
        String str = this.f43664j;
        String str2 = this.f43665k;
        String str3 = this.f43666l;
        String str4 = this.f43667m;
        String str5 = this.f43668n;
        this.f43662h = 1;
        Object B = k.a.C0617a.B(i11, z10, str, 0, null, str2, str3, false, str4, null, null, str5, this, MediaPlayer.MEDIA_PLAYER_OPTION_AVUNSYNC_INFO, null);
        if (B == f10) {
            return f10;
        }
        return B;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportUdlAfInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
