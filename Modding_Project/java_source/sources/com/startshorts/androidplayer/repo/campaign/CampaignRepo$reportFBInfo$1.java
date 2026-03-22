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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {205}, m = "reportFBInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportFBInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43716h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43717i;

    /* renamed from: j  reason: collision with root package name */
    int f43718j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportFBInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportFBInfo$1> cVar) {
        super(cVar);
        this.f43717i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43716h = obj;
        this.f43718j |= Integer.MIN_VALUE;
        Object O = this.f43717i.O(false, null, null, null, 0, this);
        if (O == a.f()) {
            return O;
        }
        return Result.b(O);
    }
}
