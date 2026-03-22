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
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportAJInfo$2", f = "CampaignRemoteDS.kt", l = {101}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportAJInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43611h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43612i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43613j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43614k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43615l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43616m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportAJInfo$2(boolean z10, String str, String str2, String str3, String str4, c<? super CampaignRemoteDS$reportAJInfo$2> cVar) {
        super(1, cVar);
        this.f43612i = z10;
        this.f43613j = str;
        this.f43614k = str2;
        this.f43615l = str3;
        this.f43616m = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportAJInfo$2(this.f43612i, this.f43613j, this.f43614k, this.f43615l, this.f43616m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43611h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        String n10 = b.f68412a.n();
        boolean z10 = this.f43612i;
        String str = this.f43613j;
        String str2 = this.f43614k;
        String str3 = this.f43615l;
        String str4 = this.f43616m;
        this.f43611h = 1;
        Object u10 = k.a.C0617a.u(i11, z10, str, 0, null, str2, str3, false, str4, null, null, n10, this, MediaPlayer.MEDIA_PLAYER_OPTION_AVUNSYNC_INFO, null);
        if (u10 == f10) {
            return f10;
        }
        return u10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportAJInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
