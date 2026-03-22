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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {135}, m = "reportActiveWebInfo-BWLJW6A")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportActiveWebInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43617h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43618i;

    /* renamed from: j  reason: collision with root package name */
    int f43619j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportActiveWebInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportActiveWebInfo$1> cVar) {
        super(cVar);
        this.f43618i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43617h = obj;
        this.f43619j |= Integer.MIN_VALUE;
        Object h10 = this.f43618i.h(null, null, null, this);
        if (h10 == a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
