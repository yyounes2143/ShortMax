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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT}, m = "reportLPInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportLPInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43720h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43721i;

    /* renamed from: j  reason: collision with root package name */
    int f43722j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportLPInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportLPInfo$1> cVar) {
        super(cVar);
        this.f43721i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43720h = obj;
        this.f43722j |= Integer.MIN_VALUE;
        Object R = this.f43721i.R(null, null, null, null, null, this);
        if (R == a.f()) {
            return R;
        }
        return Result.b(R);
    }
}
