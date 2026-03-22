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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {47}, m = "queryDailyWatchTaskPopResult-IoAF18A")
/* loaded from: classes7.dex */
public final class CampaignRepo$queryDailyWatchTaskPopResult$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43691h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43692i;

    /* renamed from: j  reason: collision with root package name */
    int f43693j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$queryDailyWatchTaskPopResult$1(CampaignRepo campaignRepo, c<? super CampaignRepo$queryDailyWatchTaskPopResult$1> cVar) {
        super(cVar);
        this.f43692i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43691h = obj;
        this.f43693j |= Integer.MIN_VALUE;
        Object B = this.f43692i.B(this);
        if (B == a.f()) {
            return B;
        }
        return Result.b(B);
    }
}
