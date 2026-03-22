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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {319}, m = "getGoogleMatchEventUploadInfo-IoAF18A")
/* loaded from: classes7.dex */
public final class CampaignRepo$getGoogleMatchEventUploadInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43685h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43686i;

    /* renamed from: j  reason: collision with root package name */
    int f43687j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$getGoogleMatchEventUploadInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$getGoogleMatchEventUploadInfo$1> cVar) {
        super(cVar);
        this.f43686i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43685h = obj;
        this.f43687j |= Integer.MIN_VALUE;
        Object q10 = this.f43686i.q(this);
        if (q10 == a.f()) {
            return q10;
        }
        return Result.b(q10);
    }
}
