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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE}, m = "reportUdlAjInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportUdlAjInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43726h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43727i;

    /* renamed from: j  reason: collision with root package name */
    int f43728j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportUdlAjInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportUdlAjInfo$1> cVar) {
        super(cVar);
        this.f43727i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43726h = obj;
        this.f43728j |= Integer.MIN_VALUE;
        Object T = this.f43727i.T(false, null, null, null, null, this);
        if (T == a.f()) {
            return T;
        }
        return Result.b(T);
    }
}
