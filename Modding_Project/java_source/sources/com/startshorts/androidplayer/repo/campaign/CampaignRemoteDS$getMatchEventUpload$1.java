package com.startshorts.androidplayer.repo.campaign;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY}, m = "getMatchEventUpload-gIAlu-s")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$getMatchEventUpload$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43581h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43582i;

    /* renamed from: j  reason: collision with root package name */
    int f43583j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$getMatchEventUpload$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$getMatchEventUpload$1> cVar) {
        super(cVar);
        this.f43582i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43581h = obj;
        this.f43583j |= Integer.MIN_VALUE;
        Object b10 = this.f43582i.b(null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
