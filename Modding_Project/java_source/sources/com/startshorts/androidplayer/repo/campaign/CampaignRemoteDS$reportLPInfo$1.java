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
/* compiled from: CampaignRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {121}, m = "reportLPInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportLPInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43650h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43651i;

    /* renamed from: j  reason: collision with root package name */
    int f43652j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportLPInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportLPInfo$1> cVar) {
        super(cVar);
        this.f43651i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43650h = obj;
        this.f43652j |= Integer.MIN_VALUE;
        Object m10 = this.f43651i.m(null, null, null, null, null, this);
        if (m10 == a.f()) {
            return m10;
        }
        return Result.b(m10);
    }
}
