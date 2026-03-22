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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {223}, m = "reportAFInfo-bMdYcbs")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportAFInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43700h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43701i;

    /* renamed from: j  reason: collision with root package name */
    int f43702j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportAFInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportAFInfo$1> cVar) {
        super(cVar);
        this.f43701i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43700h = obj;
        this.f43702j |= Integer.MIN_VALUE;
        Object H = this.f43701i.H(false, null, null, null, null, null, this);
        if (H == a.f()) {
            return H;
        }
        return Result.b(H);
    }
}
