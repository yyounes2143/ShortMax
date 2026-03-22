package com.startshorts.androidplayer.repo.campaign;

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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {315}, m = "getMatchEventUploadInfo-gIAlu-s")
/* loaded from: classes7.dex */
public final class CampaignRepo$getMatchEventUploadInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43688h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43689i;

    /* renamed from: j  reason: collision with root package name */
    int f43690j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$getMatchEventUploadInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$getMatchEventUploadInfo$1> cVar) {
        super(cVar);
        this.f43689i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43688h = obj;
        this.f43690j |= Integer.MIN_VALUE;
        Object u10 = this.f43689i.u(null, this);
        if (u10 == a.f()) {
            return u10;
        }
        return Result.b(u10);
    }
}
