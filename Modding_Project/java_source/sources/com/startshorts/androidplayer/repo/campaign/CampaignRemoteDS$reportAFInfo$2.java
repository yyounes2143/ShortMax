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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportAFInfo$2", f = "CampaignRemoteDS.kt", l = {80}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportAFInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<UploadCampaignInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43601h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43602i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43603j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43604k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43605l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43606m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f43607n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportAFInfo$2(boolean z10, String str, String str2, String str3, String str4, String str5, c<? super CampaignRemoteDS$reportAFInfo$2> cVar) {
        super(1, cVar);
        this.f43602i = z10;
        this.f43603j = str;
        this.f43604k = str2;
        this.f43605l = str3;
        this.f43606m = str4;
        this.f43607n = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportAFInfo$2(this.f43602i, this.f43603j, this.f43604k, this.f43605l, this.f43606m, this.f43607n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43601h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a i11 = k.f41787a.i();
        boolean z10 = this.f43602i;
        String str = this.f43603j;
        String str2 = this.f43604k;
        String str3 = this.f43605l;
        String str4 = this.f43606m;
        String str5 = this.f43607n;
        this.f43601h = 1;
        Object t10 = k.a.C0617a.t(i11, z10, str, 0, null, str2, str3, false, str4, null, null, str5, this, MediaPlayer.MEDIA_PLAYER_OPTION_AVUNSYNC_INFO, null);
        if (t10 == f10) {
            return f10;
        }
        return t10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UploadCampaignInfoResult>> cVar) {
        return ((CampaignRemoteDS$reportAFInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
