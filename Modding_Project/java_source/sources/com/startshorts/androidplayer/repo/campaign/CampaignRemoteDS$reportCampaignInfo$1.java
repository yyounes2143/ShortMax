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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {43}, m = "reportCampaignInfo-0E7RQCE")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportCampaignInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43624h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43625i;

    /* renamed from: j  reason: collision with root package name */
    int f43626j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportCampaignInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportCampaignInfo$1> cVar) {
        super(cVar);
        this.f43625i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43624h = obj;
        this.f43626j |= Integer.MIN_VALUE;
        Object i10 = this.f43625i.i(null, null, this);
        if (i10 == a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
