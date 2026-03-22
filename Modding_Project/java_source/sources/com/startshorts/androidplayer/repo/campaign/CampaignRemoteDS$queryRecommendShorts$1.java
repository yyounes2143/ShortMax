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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {25}, m = "queryRecommendShorts-IoAF18A")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$queryRecommendShorts$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43594h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43595i;

    /* renamed from: j  reason: collision with root package name */
    int f43596j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$queryRecommendShorts$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$queryRecommendShorts$1> cVar) {
        super(cVar);
        this.f43595i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43594h = obj;
        this.f43596j |= Integer.MIN_VALUE;
        Object e10 = this.f43595i.e(this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
