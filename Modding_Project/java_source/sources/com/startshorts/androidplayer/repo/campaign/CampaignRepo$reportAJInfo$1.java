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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {241}, m = "reportAJInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportAJInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43703h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43704i;

    /* renamed from: j  reason: collision with root package name */
    int f43705j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportAJInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportAJInfo$1> cVar) {
        super(cVar);
        this.f43704i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43703h = obj;
        this.f43705j |= Integer.MIN_VALUE;
        Object I = this.f43704i.I(false, null, null, null, null, this);
        if (I == a.f()) {
            return I;
        }
        return Result.b(I);
    }
}
