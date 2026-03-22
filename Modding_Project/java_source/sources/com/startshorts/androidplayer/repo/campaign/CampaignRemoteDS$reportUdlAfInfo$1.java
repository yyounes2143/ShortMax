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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {154}, m = "reportUdlAfInfo-bMdYcbs")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportUdlAfInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43659h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43660i;

    /* renamed from: j  reason: collision with root package name */
    int f43661j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportUdlAfInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportUdlAfInfo$1> cVar) {
        super(cVar);
        this.f43660i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43659h = obj;
        this.f43661j |= Integer.MIN_VALUE;
        Object n10 = this.f43660i.n(false, null, null, null, null, null, this);
        if (n10 == a.f()) {
            return n10;
        }
        return Result.b(n10);
    }
}
