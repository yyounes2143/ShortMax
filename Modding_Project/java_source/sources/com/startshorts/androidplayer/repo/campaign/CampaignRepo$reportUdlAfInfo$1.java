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
/* compiled from: CampaignRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME}, m = "reportUdlAfInfo-bMdYcbs")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportUdlAfInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43723h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43724i;

    /* renamed from: j  reason: collision with root package name */
    int f43725j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportUdlAfInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportUdlAfInfo$1> cVar) {
        super(cVar);
        this.f43724i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43723h = obj;
        this.f43725j |= Integer.MIN_VALUE;
        Object S = this.f43724i.S(false, null, null, null, null, null, this);
        if (S == a.f()) {
            return S;
        }
        return Result.b(S);
    }
}
